
/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author        Notes
 * 2021-10-10     Sherman       first version
 */
#include <rtthread.h>
#include <rtdevice.h>

int app_main_entry(void *arg)
{
	uint32_t cnt = 0;

    rt_kprintf("\nHello XIoTMan@RT-Thread !\n");
    
    
    while (1)
    {
        rt_thread_mdelay(1000);
        rt_kprintf("cnt ---> === 666666 ...... %d\r\n", ++cnt);
    }

    return 0;
}
