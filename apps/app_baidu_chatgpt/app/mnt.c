/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-31     takeout       the first version
 */

#include <rtthread.h>

#if 1

#ifdef RT_USING_DFS
#include <dfs_fs.h>
#include <dfs_ramfs.h>

int mnt_init(void)
{
    if (dfs_mount(RT_NULL, "/", "ram", 0, (const void *)dfs_ramfs_create(rt_malloc(8*1024),8*1024)) == 0)
    {
        rt_kprintf("RAM file system initializated!\n");
    }
    else
    {
        rt_kprintf("RAM file system initializate failed!\n");
    }

    return 0;
}
INIT_ENV_EXPORT(mnt_init);
#endif

#else

/* Initialize the filesystem */
int filesystem_init(void)
{
    // ramdisk as root
    if(rt_device_find("ramdisk0"))
    {
        // format the ramdisk
        mkfs("elm", "ramdisk0");

        /* mount ramdisk0 as root directory */
        if (dfs_mount("ramdisk0", "/", "elm", 0, RT_NULL) == 0)
        {
            rt_kprintf("ramdisk mounted on \"/\".\n");

            /* now you can create dir dynamically. */
            mkdir("/tmp", 0x777);
        }
        else
        {
            rt_kprintf("root folder creation failed!\n");
        }
        return RT_EOK;
    }
    rt_kprintf("cannot find ramdisk device");
    return RT_ERROR;
}
INIT_ENV_EXPORT(filesystem_init);

int ramdisk_device_init(void)
{
   ramdisk_init("ramdisk0", NULL, 512, 64);
   return RT_EOK;
}
INIT_DEVICE_EXPORT(ramdisk_device_init);

#endif
