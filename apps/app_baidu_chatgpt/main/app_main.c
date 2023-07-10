
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
#include "app.h"

int app_main_entry(void *arg)
{
    rt_kprintf("\nHello baidu & ChatGPT !\n");

    app_init();
    
    while (1)
    {
        rt_thread_mdelay(1000);
    }

    return 0;
}
