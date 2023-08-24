
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

int libtest_add_api(int a, int b)
{
	int c = a + b + 1000;
	rt_kprintf("run in libtest_gcc.a ... line %d\n", __LINE__);
    return c;
}
