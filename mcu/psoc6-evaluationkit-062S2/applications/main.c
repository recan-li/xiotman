/*
 * Copyright (c) 2006-2023, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-06-29     Rbb666       first version
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern int app_main_entry(void *arg);

int main(void)
{
    return app_main_entry(NULL);
}
