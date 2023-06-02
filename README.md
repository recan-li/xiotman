![image-20230602231936904](http://share.recan-li.cn/bed/2023/06/02/dJs1vLwfIC3DnlU.png?my_wx_id=721317716)



# 简介

xiotman，它是一套致力于解决物联网终端应用多样化挑战的软件架构解决方案。



# xiotman的架构

![image-20230602232120443](http://share.recan-li.cn/bed/2023/06/02/muX7t6ywIS5b41D.png?my_wx_id=721317716)



# xiotman的特点

- 应用的多样性：支持多应用开发 
- 组件的多样性：支持多组件解耦 
- RTOS的多样性：支持多RTOS 
- MCU的多样性：支持多MCU



# xiotman的目录结构

![img](http://share.recan-li.cn/bed/2023/06/02/D4KFpNIBVcjbqX8.png?my_wx_id=721317716)

![img](http://share.recan-li.cn/bed/2023/06/02/iWHI54odmSsvRel.png?my_wx_id=721317716)



# 资源文档

## 硬件支持

- **qemu-vexpress-a9**
- **RA2E1**
- **RA2L1**
- **RA4M2**
- **RA6M4**

更多的硬件芯片支持中 ......



## 实时操作系统支持

- **FreeRTOS**
  - V9.0.x （**待支持**）
  - V10.4.x （**待支持**）
- **RT-Thread**
  - V3.1.x （**待支持**）
  - V4.1.x （**待支持**）
  - V5.0.x （**已支持**）

更多的操作系统（版本）支持中 ......



## 开发环境支持

- Windows下：env + scons +gcc  （**已验证**）
- Linux下：（**待验证**）
- MacOS下：（**待验证**）




## 文档

> 待进一步补充。。。



## 例程

目前默认的仓库代码下，主要支持了 **app_uart_debug** 应用，和 **app_smart_room** 应用（基于RA4M2），其他demo应用还在进一步完善中。

其他 **app_uart_debug** 应用如下：

```c
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
```



## **快速上手**

xiotman 中支持选用 **qemu-vexpress-a9** 这块MCU，与QEMU硬件模拟，快速地调试和使用xiotman框架。

[QEMU 入门指南(Windows)](documentation/quick-start/quick_start_qemu/quick_start_qemu.md)

[QEMU 入门指南(Ubuntu)](documentation/quick-start/quick_start_qemu/quick_start_qemu_linux.md)



# **许可协议**

xiotman 系统完全开源，遵循 Apache License 2.0 开源许可协议，可以免费在商业产品中使用，并且不需要公开私有代码，没有潜在商业风险。



## 社区支持

本项目由 [架构师李肯](http://yyds.recan-li.cn) 的独家个人社区（[架构师李肯带你学嵌入式](https://bbs.csdn.net/forums/recan-iot?typeId=2920953)）进行维护，欢迎加入我们的社区，了解更多。

![image-20230602230745193](http://share.recan-li.cn/bed/2023/06/02/VQpnBce3FDx2H7I.png?my_wx_id=721317716)



# 贡献代码

如果您对 **xiotman** 感兴趣，并希望参与 **xiotman** 的开发并成为代码贡献者，请扫描下方的二维码，与我取得联系。

![img](http://share.recan-li.cn/bed/2023/06/02/Kys7JrLPfQqRV3d.png?my_wx_id=721317716)
