#include <rtthread.h>
#include "rtdevice.h"
#include "board.h"

#include "app_config.h"
#include "app_led.h"

#define DBG_TAG "led"
#define DBG_LVL DBG_LOG
#include <rtdbg.h>

#define NET_STATUS_LED_PIN   CFG_NET_STATUS_LED_PIN
#define NET_STATUS_LED_ON    CFG_LED_ON
#define NET_STATUS_LED_OFF   CFG_LED_OFF

static rt_uint8_t g_net_status_led_satsu = NET_STATUS_LED_OFF;

int net_status_led_on(void)
{
    rt_pin_write(NET_STATUS_LED_PIN, NET_STATUS_LED_ON);
    LOG_D("net_status led on");
    return NET_STATUS_LED_ON;
}

int net_status_led_off(void)
{
    rt_pin_write(NET_STATUS_LED_PIN, NET_STATUS_LED_OFF);
    LOG_D("net_status led off");
    return NET_STATUS_LED_OFF;
}

static int get_net_status_led_status(void)
{
    return rt_pin_read(NET_STATUS_LED_PIN);
}

int net_status_led_init(void *arg)
{
    rt_pin_mode(NET_STATUS_LED_PIN, PIN_MODE_OUTPUT);

    rt_pin_write(NET_STATUS_LED_PIN, NET_STATUS_LED_OFF);

    return 0;
}

int sys_led_init(void *arg)
{
    rt_pin_mode(CFG_SYS_LED_PIN, PIN_MODE_OUTPUT);

    rt_pin_write(CFG_SYS_LED_PIN, NET_STATUS_LED_ON);

    return 0;
}

int sys_led_loop(void)
{
    while(1) {
        rt_pin_write(CFG_SYS_LED_PIN, NET_STATUS_LED_ON);
        rt_thread_mdelay(1000);
        rt_pin_write(CFG_SYS_LED_PIN, NET_STATUS_LED_OFF);
        rt_thread_mdelay(1000);
    }
}
