
#include "rtthread.h"
#include "sd.h"

static void sd_thread_entry(void *parameter)
{
    //TODO

    while(1) {
        rt_thread_mdelay(1000);
    }
}

int sd_save_data(const uint8_t *data, uint16_t len)
{
    //TODO
    return -1;
}

int sd_init(void)
{
	int ret = 0;

	/* 创建 serial 线程 */
    rt_thread_t thread = rt_thread_create("sd", sd_thread_entry, RT_NULL, 3072, 25, 10);
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