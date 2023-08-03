#include <rtthread.h>
#include "rtdevice.h"
#include "board.h"

#include "config.h"
#include "led.h"
#include "mqtt.h"

#define DBG_TAG "led"
#define DBG_LVL DBG_LOG
#include <rtdbg.h>

#define SMART_LED_PIN   CFG_LED_PIN
#define SMART_LED_ON    CFG_LED_ON
#define SMART_LED_OFF   CFG_LED_OFF

static rt_uint8_t g_smart_led_satsu = SMART_LED_OFF;

int smart_led_on(void)
{
    rt_pin_write(SMART_LED_PIN, SMART_LED_ON);
    LOG_D("smart led on");
    return SMART_LED_ON;
}

int smart_led_off(void)
{
    rt_pin_write(SMART_LED_PIN, SMART_LED_OFF);
    LOG_D("smart led off");
    return SMART_LED_OFF;
}

static int get_smart_led_status(void)
{
    return rt_pin_read(SMART_LED_PIN);
}

int smart_led_init(void *arg)
{
    rt_pin_mode(SMART_LED_PIN, PIN_MODE_OUTPUT);

    rt_pin_write(SMART_LED_PIN, SMART_LED_OFF);

    return 0;
}

int sys_led_init(void *arg)
{
    rt_pin_mode(CFG_SYS_LED_PIN, PIN_MODE_OUTPUT);

    rt_pin_write(CFG_SYS_LED_PIN, SMART_LED_ON);

    return 0;
}

int sys_led_loop(void)
{
    while(1) {
        rt_pin_write(CFG_SYS_LED_PIN, SMART_LED_ON);
        rt_thread_mdelay(1000);
        rt_pin_write(CFG_SYS_LED_PIN, SMART_LED_OFF);
        rt_thread_mdelay(1000);
    }
}
