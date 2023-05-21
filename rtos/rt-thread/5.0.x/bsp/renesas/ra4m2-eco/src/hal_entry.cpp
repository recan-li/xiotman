/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-12-7      Vandoul      first version.
 */
#include "rtthread.h"
#include "drivers/pin.h"
#include "hal_data.h"
#include "drivers/spi.h"
#ifdef __cplusplus
extern "C"{
#endif
#include "bsp_api.h"
#include "spi_msd.h"
#ifdef __cplusplus
}
#endif

#include "smart_room.h"

void hal_entry(void)
{
    uint32_t t, h;
		uint32_t cnt = 0;

    rt_kprintf("hal_entry run.\r\n");
    rt_pin_mode(BSP_IO_PORT_04_PIN_04, PIN_MODE_OUTPUT);

    //smart_room_init();

    while (1)
    {
        rt_pin_write(BSP_IO_PORT_04_PIN_04, !rt_pin_read(BSP_IO_PORT_04_PIN_04));

        //uart_nec_ac_on_off();
        //uart_air_cleaner_on_off();
        //i2c_aht25_update(&t, &h);
        //rt_kprintf("TEMP: %d%d.%d 'C\n", t/100, (t/10)%10, t%10);
        //rt_kprintf("  RH: %d%d.%d%%\n", h/100, (h/10)%10, h%10);

        //i2c_oled_test_main();

        rt_thread_mdelay(1000);
        //rt_kprintf("1234567890\r\n");
				rt_kprintf("cnt ... %d\r\n", ++cnt);
    }
}

