
#include "rtthread.h"
#include "smart_room.h"
#include "i2c_oled.h"
#include "i2c_aht25.h"
#include "uart_nec_ac.h"
#include "wifi.h"
#include "gpio_light.h"

extern int aliyun_mqtt_init(void);
extern int aliyun_mqtt_upload_smart_room_info(smart_room_info_t *info);

static smart_room_info_t g_info;

smart_room_info_t * smart_room_get_info(void)
{
    return &g_info;
}

static void smart_room_thread_entry(void *parameter)
{
    i2c_aht25_update(&g_info.t, &g_info.rh);

    wifi_ready_waiting();

    aliyun_mqtt_init();

    while(1) {
        i2c_aht25_update(&g_info.t, &g_info.rh);
        aliyun_mqtt_upload_smart_room_info(&g_info);
        rt_thread_mdelay(1000);
    }
}

int smart_room_ac_on_off(uint8_t on_off)
{
    if (on_off != g_info.ac_status) {
        if (on_off) {
            uart_nec_ac_on_off();
        } else {
            uart_nec_ac_on_off();
        }
        g_info.ac_status = !!on_off;
    }

    return 0;
}

int smart_room_light_on_off(uint8_t on_off)
{
    if (on_off != g_info.light_status) {
        if (on_off) {
            gpio_light_on();
        } else {
            gpio_light_off();
        }
        g_info.light_status = !!on_off;
    }

    return 0;
}

int smart_room_init(void)
{
	int ret = 0;

    wifi_init(NULL);
	uart_nec_ac_init();
    i2c_oled_init();
    i2c_aht25_init();

	/* 创建 serial 线程 */
    rt_thread_t thread = rt_thread_create("room", smart_room_thread_entry, RT_NULL, 3072, 25, 10);
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