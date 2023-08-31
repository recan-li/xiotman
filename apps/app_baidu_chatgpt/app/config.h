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

/* led module configuration */
#define CFG_SYS_LED_PIN 					GET_PIN(0, 0)
#define CFG_SMART_LED_PIN 					GET_PIN(12, 6)
#define CFG_LED_ON                      	PIN_LOW
#define CFG_LED_OFF                     	PIN_HIGH

#define CFG_SMART_LED_OFF_VALUE         	0x00
#define CFG_SMART_LED_ON_VALUE          	0x01

/* bafa MQTT module configuration */
#define CFG_BAFA_MQTT_URI                  	"tcp://119.91.109.180:9501"
#define CFG_BAFA_MQTT_TOPIC_LED_IN     		"xiaoduled002"
#define CFG_BAFA_MQTT_TOPIC_LED_OUT    		"xiaoduled002"
#define CFG_BAFA_MQTT_CLIENT_ID         	"733852288bf1b29a0efb6b3cf560631a"
#define CFG_BAFA_MQTT_USERNAME            	""
#define CFG_BAFA_MQTT_PASSWORD            	""
#define CFG_BAFA_MQTT_TOPIC_AI 				"aichatgpt"

#endif /* APPLICATIONS_CONFIG_H_ */
