/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-03-27     takeout       the first version
 */
#ifndef APPLICATIONS_CONFIG_H_
#define APPLICATIONS_CONFIG_H_

#include <rtthread.h>
#include "rtdevice.h"
#include "hal_data.h"

/* led module configuration */
#define CFG_SYS_LED_PIN 					BSP_IO_PORT_02_PIN_09
#define CFG_NET_STATUS_LED_PIN 				BSP_IO_PORT_02_PIN_10
#define CFG_LED_ON                      	PIN_LOW
#define CFG_LED_OFF                     	PIN_HIGH

#define CFG_NET_STATUS_LED_OFF_VALUE    	0x01
#define CFG_NET_STATUS_LED_ON_VALUE       	0x00

#define CFG_WELCOME_WAV_FILE				"/assets/welcome/welcome.wav"

#endif /* APPLICATIONS_CONFIG_H_ */
