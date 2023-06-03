![image-20230602231936904](docs/xiotman-logo.png)



# 简介

xiotman，它是一套致力于解决物联网终端应用多样化挑战的软件架构解决方案。



# xiotman的架构

![image-20230602232120443](docs/xiotman-architecture.png)



# xiotman的特点

- 应用的多样性：支持多应用开发 
- 组件的多样性：支持多组件解耦 
- RTOS的多样性：支持多RTOS 
- MCU的多样性：支持多MCU



# xiotman的目录结构

![img](docs/xiotman-layers.png)

![img](docs/xiotman-software.png)



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

以下操作步骤可以帮助你，快速在PC环境模拟运行，以Windows为例：

1. 安装好env环境和scons工具；
2. 启动env环境，进入到 **xiotman/build** 目录；
3. 执行 `scons --list_app` 查看当前选择编译的应用、MCU、RTOS版本等信息；

![image-20230603084240034](docs/get-start-1.png)

4. 执行 `scons --menuconfig=build` 选择对应的应用、MCU及RTOS版本，默认的情况下，选择的是 app_uart_debug应用、qemu-vexpress-a9、rt-thread-v5.0.x版本；

![image-20230603084502429](docs/get-start-2.png)

5. 执行 `scons --clean` 清除当前选择的应用的中间编译输出；

![image-20230603084602930](docs/get-start-3.png)

6. 执行 `scons` 开始编译当前应用；

![image-20230603085604366](docs/get-start-4.png)

7. 成功完成编译后，在 `xiotman/out/app_uart_debug(qemu-vexpress-a9)/` 目录可以看到对应的固件文件输出；

![image-20230603085544819](docs/get-start-5.png)

8. 执行编译输出的固件；进入到 `xiotman/out/app_uart_debug(qemu-vexpress-a9)/` 目录，执行 `./qemu-nographic.bat` 即可运行；

![image-20230603085818951](docs/get-start-6.png)

这里的运行与 `app_uart_debug ` 的应用逻辑是一致的：

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



至此，已经完成了xiotman在PC环境的验证，如果需要编译其他应用或其他MCU平台的代码，只需要回到build目录，执行 `scons --menuconfig=build` 即可选择；同时xiotman还保留了原生的 `RTOS` 的配置，执行 `scons --menuconfig=rtos` 即可进入配置：

![image-20230603090159760](docs/get-start-7.png)

![image-20230603090145210](docs/get-start-8.png)



# **许可协议**

xiotman 系统完全开源，遵循 Apache License 2.0 开源许可协议，可以免费在商业产品中使用，并且不需要公开私有代码，没有潜在商业风险。



## 社区支持

本项目由 [架构师李肯](http://yyds.recan-li.cn) 的独家个人社区（[架构师李肯带你学嵌入式](https://bbs.csdn.net/forums/recan-iot?typeId=2920953)）进行维护，欢迎加入我们的社区，了解更多。

![image-20230602230745193](docs/recan-community.png)



# 贡献代码

如果您对 **xiotman** 感兴趣，并希望参与 **xiotman** 的开发并成为代码贡献者，请扫描下方的二维码，与我取得联系。

![img](docs/wechat.png)
