/*
 * Copyright (c) 2006-2023, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2019-05-16     chenyong     first version
 */

#ifndef __AT_DEVICE_W60X_H__
#define __AT_DEVICE_W60X_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>

#include <at_device.h>

/* The maximum number of sockets supported by the w60x device */
#define AT_DEVICE_W60X_SOCKETS_NUM  20

struct at_device_w60x
{
    char *device_name;
    char *client_name;

    char *wifi_ssid;
    char *wifi_password;
    size_t recv_line_num;
    struct at_device device;

    void *user_data;
};

#ifdef AT_USING_SOCKET

/* w60x device socket initialize */
int w60x_socket_init(struct at_device *device);

/* w60x device class socket register */
int w60x_socket_class_register(struct at_device_class *class);

#endif /* AT_USING_SOCKET */

#ifdef __cplusplus
}
#endif

#endif /* __AT_DEVICE_W60X_H__ */
