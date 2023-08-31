#include <string.h>
#include "at.h"
#include "rtthread.h"
#include "arpa/inet.h"
#include "netdev.h"
#include <sys/socket.h>
#include <netdb.h>
#include "at_device.h"
#include "file_ini.h"

#define DBG_TAG "wifi"
#define DBG_LVL DBG_LOG
#include <rtdbg.h>

static rt_sem_t g_wifi_sem;

/**
 * @brief  获取esp8266的链接状态
 * @return 无
 * @return 成功返回0，失败返回-1
 */
int wifi_get_status(void)
{
    /* "esp8266" 名字来源于设备注册时使用的名字，在文件 packages/at_device-latest/samples/at_sample_esp8266.c 中定义 */
    struct at_device * esp8266_dev = at_device_get_by_name(AT_DEVICE_NAMETYPE_NETDEV, "esp0");
    if (esp8266_dev == RT_NULL)
    {
        LOG_E("func: %s. get esp8266 at device failed", __FUNCTION__);
        return -1;
    }

    if (esp8266_dev->is_init == RT_FALSE)
    {
        LOG_E("%s is not init", "esp0");
        return -1;
    }

    if ((esp8266_dev->netdev->flags & NETDEV_FLAG_UP) == 0)
    {
        return -1;
    }

    if ((esp8266_dev->netdev->flags & NETDEV_FLAG_INTERNET_UP) == NETDEV_FLAG_INTERNET_UP)
    {
        return 0;
    }
    else
    {
        return -1;
    }
}

void wifi_thread_entry(void *parameter)
{
    int wifi_status = -1;
    int wifi_status_bak = -1;
    rt_sem_t sem = (rt_sem_t)g_wifi_sem;

    while (1) {

        wifi_status = wifi_get_status();
        if (wifi_status != wifi_status_bak) {
            LOG_D("wifi status changed: %d -> %d", wifi_status_bak, wifi_status);
            wifi_status_bak = wifi_status;
            if (0 == wifi_status) {
                rt_sem_release(sem);
                LOG_D("wifi connected !");
            }
        }

        rt_thread_mdelay(10000);
    }
}

int wifi_init(void *arg)
{
    rt_thread_t thread;

    g_wifi_sem = rt_sem_create("wifi", 0, RT_IPC_FLAG_PRIO);

    thread = rt_thread_create("wifi_thread", wifi_thread_entry, arg, 2048, 10, 20);
    if (thread != RT_NULL)
    {
        rt_thread_startup(thread);
    }
    else
    {
        LOG_E("create wifi thread failed");
        return (-RT_ERROR);
    }

    return RT_EOK;
}

int wifi_password_exist_checking(void)
{
    char ssid[32] = {0};
    char password[32] = {0};

    while(1) {

        if (!ini_load_wifi_ap_info(ssid, password)) {
            rt_kprintf("got ssid(%s) password(%s) ok !\n", ssid, password);
            break;
        }

        rt_kprintf("can't find ssid & password ...\n");
        rt_thread_mdelay(5000);
    }

    return 0;
}

int wifi_ready_waiting(void)
{
    rt_sem_take(g_wifi_sem, RT_WAITING_FOREVER); // wait for wifi-sem

    return 0;
}

static void wifi_cmd(int argc, char**argv)
{
    if (argc == 4 && !strcmp(argv[1], "save")) {
        char *ssid = argv[2];
        char *password = argv[3];

        ini_save_wifi_ap_info(ssid, password);
        rt_kprintf("save ssid(%s) password(%s) ok, please reboot your device !\n", ssid, password);
    } else if (argc == 2 && !strcmp(argv[1], "load")) {
        char ssid[32] = {0};
        char password[32] = {0};

        ini_load_wifi_ap_info(ssid, password);
        rt_kprintf("load ssid(%s) password(%s) ok !\n", ssid, password);
    }
}

MSH_CMD_EXPORT(wifi_cmd, wifi_cmd sample: wifi_cmd save/load ssid password);