
#include "rtthread.h"
#include "rtdevice.h"
#include "board.h"

#include "app.h"
#include "app_wifi.h"
#include "app_led.h"
#include "app_sd.h"

#include "hal_data.h"

#define SD_CD BSP_IO_PORT_04_PIN_05

static void app_thread_entry(void *parameter)
{
    wifi_password_exist_checking();

    wifi_init(NULL);

    net_status_led_init(NULL);

    sys_led_init(NULL);

    sd_init();

    //network is ready now ...

    while(1) {
        rt_thread_mdelay(1000);
        sys_led_loop();
    }
}

int app_init(void)
{
	int ret = 0;

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