#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <rtthread.h>
#include "rtdevice.h"
#include "paho_mqtt.h"
#include <wifi.h>
#include "led.h"
#include "cJSON.h"
#include "cJSON_util.h"

#include "config.h"
#include "led.h"

#define DBG_TAG "mqtt"
#define DBG_LVL DBG_LOG
#include <rtdbg.h>

/**
 * MQTT URI farmat:
 * domain mode
 * tcp://iot.eclipse.org:1883
 *
 * ipv4 mode
 * tcp://192.168.10.1:1883
 * ssl://192.168.10.1:1884
 *
 * ipv6 mode
 * tcp://[fe80::20c:29ff:fe9a:a07e]:1883
 * ssl://[fe80::20c:29ff:fe9a:a07e]:1884
 */
#define MQTT_URI                CFG_BAFA_MQTT_URI
#define MQTT_CLIENT_ID          CFG_BAFA_MQTT_CLIENT_ID
#define MQTT_USERNAME           CFG_BAFA_MQTT_USERNAME
#define MQTT_PASSWORD           CFG_BAFA_MQTT_PASSWORD
#define MQTT_SUBTOPIC           CFG_BAFA_MQTT_DOMOTICZ_TOPIC_OUT
#define MQTT_PUBTOPIC           CFG_BAFA_MQTT_TOPIC_LED_OUT
#define MQTT_WILLMSG            "Goodbye!"

/* define MQTT client context */
static MQTTClient client;
static int is_started = 0;

static void mqtt_msg_handler(MessageData *msg_data)
{
    //rt_kprintf("payload : %s -> %s ...\n", msg_data->topicName->lenstring.data, msg_data->topicName->lenstring.data);
    if (!strncmp(msg_data->topicName->lenstring.data, CFG_BAFA_MQTT_TOPIC_LED_IN, strlen(CFG_BAFA_MQTT_TOPIC_LED_IN))) {
        //check on/off
        if (!strcmp((char * )msg_data->message->payload, "on")) {
            rt_kprintf("led on ...\n");
            smart_led_on();
        } else {
            rt_kprintf("led off ...\n");
            smart_led_off();
        }
    } else if (!strncmp(msg_data->topicName->lenstring.data, CFG_BAFA_MQTT_TOPIC_AI, strlen(CFG_BAFA_MQTT_TOPIC_AI))) {
        rt_kprintf("ai + chatgpt ...\n");
    }
}

/**
 * @brief  MQTT 订阅回调函数
 * @param  c 客户端标识
 * @param  msg_data 收到的数据
 * @return 无
 */
static void bafa_mqtt_sub_callback(MQTTClient *c, MessageData *msg_data)
{
    *((char *) msg_data->message->payload + msg_data->message->payloadlen) = '\0';
    LOG_D("mqtt ---> sub callback: \r\ntopic: %.*s\r\npayload: %.*s",
            msg_data->topicName->lenstring.len,
            (char *)msg_data->topicName->lenstring.data,
            msg_data->message->payloadlen, (char * )msg_data->message->payload);

    mqtt_msg_handler(msg_data);
    //parse_msg(msg_data->message->payloadlen, (char *) msg_data->message->payload);  // 解析收到的数据
}

/**
 * @brief  MQTT 默认的订阅回调函数
 * @param  c 客户端标识
 * @param  msg_data 收到的数据
 * @return 无
 */
static void bafa_mqtt_sub_default_callback(MQTTClient *c, MessageData *msg_data)
{
    *((char *) msg_data->message->payload + msg_data->message->payloadlen) = '\0';
    LOG_D("mqtt sub default callback: %.*s %.*s", msg_data->topicName->lenstring.len,
            msg_data->topicName->lenstring.data, msg_data->message->payloadlen, (char * )msg_data->message->payload);

    mqtt_msg_handler(msg_data);
}

/**
 * @brief  MQTT 连接的回调函数
 * @param  c 客户端标识
 * @return 无
 */
static void bafa_mqtt_connect_callback(MQTTClient *c)
{
    LOG_D("enter mqtt_connect_callback!");
}

/**
 * @brief  MQTT 上线的回调函数
 * @param  c 客户端标识
 * @return 无
 */
static void bafa_mqtt_online_callback(MQTTClient *c)
{
    LOG_D("enter mqtt_online_callback!");
}

/**
 * @brief  MQTT 掉线的回调函数
 * @param  c 客户端标识
 * @return 无
 */
static void bafa_mqtt_offline_callback(MQTTClient *c)
{
    LOG_D("enter mqtt_offline_callback!");
}

/**
 * @brief  MQTT 启动
 * @param  无
 * @return 成功返回0，失败返回-1
 */
static int bafa_mqtt_start(void)
{
    /* init condata param by using MQTTPacket_connectData_initializer */
    MQTTPacket_connectData condata = MQTTPacket_connectData_initializer;
    static char cid[20] = { 0 };

    if (is_started)
    {
        LOG_E("mqtt client is already connected.");
        return -1;
    }
    /* config MQTT context param */
    {
        client.isconnected = 0;
        client.uri = MQTT_URI;

        /* generate the random client ID */
        rt_snprintf(cid, sizeof(cid), "rtthread%d", rt_tick_get());
        /* config connect param */
        memcpy(&client.condata, &condata, sizeof(condata));
        client.condata.clientID.cstring = MQTT_CLIENT_ID;
        client.condata.keepAliveInterval = 30;
        client.condata.cleansession = 1;
        client.condata.username.cstring = MQTT_USERNAME;
        client.condata.password.cstring = MQTT_PASSWORD;

        /* config MQTT will param. */
        client.condata.willFlag = 1;
        client.condata.will.qos = 1;
        client.condata.will.retained = 0;
        client.condata.will.topicName.cstring = MQTT_PUBTOPIC;
        client.condata.will.message.cstring = MQTT_WILLMSG;

        /* malloc buffer. */
        client.buf_size = client.readbuf_size = 1024;
        client.buf = rt_calloc(1, client.buf_size);
        client.readbuf = rt_calloc(1, client.readbuf_size);
        if (!(client.buf && client.readbuf))
        {
            LOG_E("no memory for MQTT client buffer!");
            return -1;
        }

        /* set event callback function */
        client.connect_callback = bafa_mqtt_connect_callback;
        client.online_callback = bafa_mqtt_online_callback;
        client.offline_callback = bafa_mqtt_offline_callback;

        /* set subscribe table and event callback */
        client.messageHandlers[0].topicFilter = rt_strdup(CFG_BAFA_MQTT_TOPIC_LED_IN);
        client.messageHandlers[0].callback = bafa_mqtt_sub_callback;
        client.messageHandlers[0].qos = QOS1;

        client.messageHandlers[1].topicFilter = rt_strdup(CFG_BAFA_MQTT_TOPIC_AI);
        client.messageHandlers[1].callback = bafa_mqtt_sub_callback;
        client.messageHandlers[1].qos = QOS1;        

        /* set default subscribe event callback */
        client.defaultMessageHandler = bafa_mqtt_sub_default_callback;
    }

    /* run mqtt client */
    paho_mqtt_start(&client);
    is_started = 1;

    return 0;
}

/**
 * @brief  MQTT 发布消息
 * @param  send_buff 要发布的消息的内容
 * @return 成功返回0，失败返回-1
 */
static int bafa_mqtt_publish(char *send_buff)
{
    if (is_started == 0)
    {
        LOG_E("mqtt client is not connected.");
        return -1;
    }

    paho_mqtt_publish(&client, QOS1, MQTT_PUBTOPIC, send_buff);

    return 0;
}

/**
 * @brief  MQTT 停止
 * @param  无
 * @return 成功返回0，失败返回-1
 */
int bafa_mqtt_stop(void)
{
    if (is_started == 1)
    {
        is_started = 0;

        return paho_mqtt_stop(&client);
    }
}

/**
 * @brief  MQTT 新订阅的回调函数
 * @param  client 客户端标识
 * @param  msg_data 收到的数据
 * @return 无
 */
void bafa_mqtt_new_sub_callback(MQTTClient *client, MessageData *msg_data)
{
    *((char *) msg_data->message->payload + msg_data->message->payloadlen) = '\0';
    LOG_D("mqtt new subscribe callback: %.*s %.*s", msg_data->topicName->lenstring.len,
            msg_data->topicName->lenstring.data, msg_data->message->payloadlen, (char * )msg_data->message->payload);
}

/**
 * @brief  MQTT 订阅
 * @param  topic 要订阅的主题的名字
 * @return 成功返回0，失败返回-1
 */
int bafa_mqtt_subscribe(char *topic)
{
    if (is_started == 0)
    {
        LOG_E("mqtt client is not connected.");
        return -1;
    }

    return paho_mqtt_subscribe(&client, QOS1, topic, bafa_mqtt_new_sub_callback);
}

/**
 * @brief  MQTT 取消订阅
 * @param  topic 要取消订阅的主题的名字
 * @return 成功返回0，失败返回-1
 */
int bafa_mqtt_unsubscribe(char *topic)
{
    if (is_started == 0)
    {
        LOG_E("mqtt client is not connected.");
        return -1;
    }

    return paho_mqtt_unsubscribe(&client, topic);
}

/*
 * domoticz defined json data format
 * {
 *     "idx":1,          // device id
 *     "nvalue":1,       // device value
 * }
 */
int update_device_status(int idx, int nvalue)
{
    cJSON *root = cJSON_CreateObject();
    if(root == NULL)
    {
        return RT_ERROR;
    }

    cJSON_AddItemToObject(root, "idx", cJSON_CreateNumber(idx));
    cJSON_AddItemToObject(root, "nvalue", cJSON_CreateNumber(nvalue));

    char *send_str = cJSON_PrintUnformatted(root);
    LOG_D("send msg: %s\n", send_str);
    bafa_mqtt_publish(send_str);
    if (send_str != NULL)    // 释放空间
    {
        cJSON_free(send_str);
        send_str = NULL;
    }
    cJSON_Delete(root);

    return RT_EOK;
}

/**
 * @brief  MQTT 处理线程
 * @param  parameter 线程的入参
 * @return 无
 */
static void mqtt_thread_entry(void *parameter)
{
    cJSON *root = NULL;
    cJSON *params = NULL;
    char *send_str = NULL;

    //rt_sem_t sem = (rt_sem_t)parameter;

    //rt_sem_take(sem, RT_WAITING_FOREVER); //waiting for sem

    rt_kprintf("mqtt start ...\n");
    bafa_mqtt_start();

    while (1)
    {
        rt_thread_mdelay(5000);     // publish 间隔

        //test_turn_on_led();
#if 0
        root = cJSON_CreateObject(); /* 创建一个cJSON对象，要用 cJSON_Delete 释放内存 */
        if (root != NULL)
        {
            cJSON_AddStringToObject(root, "method", "report");
            cJSON_AddStringToObject(root, "clientToken", "123");

            params = cJSON_CreateObject(); /* 创建子对象 */
            if (params != NULL)
            {/*
                cJSON_AddItemToObject(root, "params", params);
                cJSON_AddNumberToObject(params, "led1", get_led1_status()); // 添加 LED1 状态
                cJSON_AddNumberToObject(params, "led2", get_led2_status());
                cJSON_AddNumberToObject(params, "temp", rand() % 40);       // 模拟传感器数据
                cJSON_AddNumberToObject(params, "humi", rand() % 70);
                send_str = cJSON_Print(root);
                if (send_str != NULL)
                {
                    LOG_D("send msg: %s\n", send_str);
                    bafa_mqtt_publish(send_str);
                }*/
            }
        }

        if (send_str != NULL)    // 释放空间
        {
            cJSON_free(send_str);
            send_str = NULL;
        }

        if (root != NULL)
        {
            cJSON_Delete(root); // 防止内存泄露，会把下面所有的子节点都释放
        }
#endif
    }
}

/**
 * @brief  启动 MQTT 处理线程
 * @param  无
 * @return 无
 */
int mqtt_bafa_init(void *arg)
{
    rt_thread_t thread = rt_thread_create("mqtt_thread", mqtt_thread_entry, arg, 2048, 10, 20);
    if (thread != RT_NULL)
    {
        rt_thread_startup(thread);
    }
    else
    {
        LOG_E("create mqtt thread failed");
        return (-RT_ERROR);
    }

    return RT_EOK;
}

