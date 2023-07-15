
#include "rtthread.h"
#include "app.h"
#include "wifi.h"
#include "mqtt.h"
#include "led.h"
#include "sd.h"

static void app_thread_entry(void *parameter)
{
    wifi_ready_waiting();

    //network is ready now ...
    smart_led_init(NULL);

    sys_led_init(NULL);

    sd_init();

    mqtt_bafa_init(NULL);

    while(1) {
        rt_thread_mdelay(1000);
        //rt_kprintf("tick ...\n");
        sys_led_loop();
    }
}

int app_init(void)
{
	int ret = 0;

    wifi_init(NULL);

	/* 创建 serial 线程 */
    rt_thread_t thread = rt_thread_create("app", app_thread_entry, RT_NULL, 3072, 25, 10);
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