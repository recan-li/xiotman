/*
 * 程序清单：这是一个串口设备 开启 DMA 模式后使用例程
 * 例程导出了 uart_dma_sample 命令到控制终端
 * 命令调用格式：uart_dma_sample uart1
 * 命令解释：命令第二个参数是要使用的串口设备名称，为空则使用默认的串口设备
 * 程序功能：通过串口输出字符串 "hello RT-Thread!"，并通过串口输出接收到的数据，然后打印接收到的数据。
*/

#include <rtthread.h>
#include <rtdevice.h>
#include "drv_usart_v2.h"

#define SAMPLE_UART_INDEX       0
#define SAMPLE_UART_NAME        "uart0"      /* 串口设备名称 */

/* 串口接收消息结构 */
struct rx_msg
{
    rt_device_t dev;
    rt_size_t size;
};

/* 串口设备句柄 */
static rt_device_t serial;
static struct serial_configure config = RT_SERIAL_CONFIG_DEFAULT;  /* 初始化配置参数 */
/* 消息队列控制块 */
static struct rt_messagequeue rx_mq;

/* 接收数据回调函数 */
static rt_err_t uart_input(rt_device_t dev, rt_size_t size)
{
    struct rx_msg msg;
    rt_err_t result;
    msg.dev = dev;

    size = 1;
    msg.size = size;

    //rt_kprintf("%s: %d\n", __func__, size);
    result = rt_mq_send(&rx_mq, &msg, sizeof(msg));
    if (result == -RT_EFULL)
    {
        /* 消息队列满 */
        rt_kprintf("message queue full！\n");
    }
    return result;
}

static rt_err_t uart_output(rt_device_t dev, void *buffer)
{
    rt_kprintf("tx done !\n");
	return 0;
}

void debug_buffer(const char *title, uint8_t *buf, uint32_t size)
{
    uint32_t i;

    rt_kprintf("%s (%d bytes): ", title, size);
    for (i = 0; i < size; i++) {
        rt_kprintf("%02X -> ", buf[i]);
    }
    rt_kprintf("\r\n");
}

extern int ra_uart_putc_common(int index, char c);
static void serial_send_data(uint8_t *data, uint32_t len)
{
    uint32_t i;

    for (i = 0; i < len; i++) {
        ra_uart_putc_common(SAMPLE_UART_INDEX, data[i]);
    }
    debug_buffer("send data", data, len);
}

static void serial_thread_entry(void *parameter)
{
    struct rx_msg msg;
    rt_err_t result;
    rt_uint32_t rx_length;
    static char rx_buffer[128];
    uint32_t left_len = 0;

    while (1)
    {
        rt_memset(&msg, 0, sizeof(msg));
        /* 从消息队列中读取消息 */
        result = rt_mq_recv(&rx_mq, &msg, sizeof(msg), RT_WAITING_FOREVER);
        rt_kprintf("mq recv: %d \n", msg.size);
        if (result == RT_EOK)
        {
            /* 从串口读取数据 */
            rx_length = 0;
            left_len = msg.size;
            while (rx_length < msg.size) {
                rx_length += rt_device_read(msg.dev, 0, &rx_buffer[rx_length], left_len); 
                left_len -= rx_length; 
            }            
            debug_buffer("recv data", (uint8_t *)rx_buffer, rx_length);
            serial_send_data((uint8_t *)rx_buffer, rx_length);
            rt_kprintf("111rx_length: %d %d \n", rx_length, msg.size);

            //rx_buffer[rx_length] = '\0';
            /* 通过串口设备 serial 输出读取到的消息 */
            //rt_device_write(serial, 0, rx_buffer, rx_length);
            
            /* 打印数据 */
            //rt_kprintf("%s\n",rx_buffer);
        }
    }
}

//int uart_dma_sample(int argc, char *argv[])
int uart_nec_ac_init(void)
{
    rt_err_t ret = RT_EOK;
    char uart_name[RT_NAME_MAX];
    static char msg_pool[256];
    char str[] = "hello RT-Thread!\r\n";

    rt_strncpy(uart_name, SAMPLE_UART_NAME, RT_NAME_MAX);

    /* 查找串口设备 */
    serial = rt_device_find(SAMPLE_UART_NAME);
    if (!serial)
    {
        rt_kprintf("find %s failed!\n", uart_name);
        return RT_ERROR;
    }

    /* 初始化消息队列 */
    rt_mq_init(&rx_mq, "rx_mq",
               msg_pool,                 /* 存放消息的缓冲区 */
               sizeof(struct rx_msg),    /* 一条消息的最大长度 */
               sizeof(msg_pool),         /* 存放消息的缓冲区大小 */
               RT_IPC_FLAG_FIFO);        /* 如果有多个线程等待，按照先来先得到的方法分配消息 */

#if 0 // No implementation on RA4M2 with RT-Thread
    /* step2：修改串口配置参数 */
    config.baud_rate = BAUD_RATE_9600;        // 修改波特率为 9600
    config.data_bits = DATA_BITS_8;           // 数据位 8
    config.stop_bits = STOP_BITS_1;           // 停止位 1
    config.rx_bufsz  = 128;                   // 修改缓冲区 rx buff size 为 128
    config.parity    = PARITY_NONE;           // 无奇偶校验位

    /* step3：控制串口设备。通过控制接口传入命令控制字，与控制参数 */
    ret = rt_device_control(serial, RT_DEVICE_CTRL_CONFIG, &config);
    rt_kprintf("ret: %d\n", ret);
#endif

    /* 以 DMA 接收及轮询发送方式打开串口设备 */
    rt_device_open(serial, RT_DEVICE_FLAG_RX_NON_BLOCKING | RT_DEVICE_FLAG_TX_BLOCKING);
    /* 设置接收回调函数 */
    rt_device_set_rx_indicate(serial, uart_input);
    rt_device_set_tx_complete(serial, uart_output);
    /* 发送字符串 */
    //rt_device_write(serial, 0, str, (sizeof(str) - 1));

    /* 创建 serial 线程 */
    rt_thread_t thread = rt_thread_create("serial", serial_thread_entry, RT_NULL, 1024, 25, 10);
    /* 创建成功则启动线程 */
    if (thread != RT_NULL)
    {
        rt_thread_startup(thread);
    }
    else
    {
        ret = RT_ERROR;
    }

    return ret;
}

/* 导出到 msh 命令列表中 */
//MSH_CMD_EXPORT(uart_dma_sample, uart device dma sample);

//AC API

int uart_nec_ac_on_off(void)
{
#if 0
    uint8_t data[] = {0xFA, 0xF1, 0x01, 0xFA, 0xDE};
#else
    uint8_t data[] = {0xFA, 0xF1, 0x80, 0x7F, 0x1A};
#endif

    serial_send_data(data, sizeof(data));

    return 0;
}

int uart_air_cleaner_on_off(void)
{
    uint8_t data[] = {0xFA, 0xF1, 0x00, 0xFF, 0x47};

    serial_send_data(data, sizeof(data));

    return 0;
}