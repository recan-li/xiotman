
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

#include "libtest.h"

int app_main_entry(void *arg)
{
	uint32_t cnt = 0;
	int c;

    rt_kprintf("\nHello static library test !\n");

    //call api in libtest.a
    c = libtest_add_api(10, 20);
    rt_kprintf("result c: %d\n", c);
    
    while (1)
    {
        rt_thread_mdelay(1000);
    }

    return 0;
}
