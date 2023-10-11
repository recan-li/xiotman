

**基于RT-Thread与瑞萨RASC工具的高效开发流程介绍及开源作品集分享**

​                                                                                 —— recan 2023/10/10



> **RT-Thread多年以来，一直以组件丰富、开发易用等优秀的特性走在行业的前列，而瑞萨MCU同样也是经过多年的技术积累，一直冠以高可靠的芯片设计，辅以成熟稳定且多样化的开发工具，深受开发者的喜爱。就这样强大的两大开发阵营强强联合，会给开发者带来如何不一样的高效开发体验呢？我们拭目以待。**



**目录**

[toc]



# 1 自我介绍

![image-20231010165205995](https://s2.loli.net/2023/10/10/KAgSCWnsruEyFzD.png?my_wx_id=721317716)

CSDN博客主页：[http://yyds.recan-li.cn](http://yyds.recan-li.cn)

RT-Thread技术社区个人主页：[https://club.rt-thread.org/u/1f240523a93e4305.html](https://club.rt-thread.org/u/1f240523a93e4305.html)

个人微信：**721317716**

&nbsp;

# 2 主题分享

## 2.1 核心主题
**基于RT-Thread与瑞萨RASC工具的高效开发流程介绍及开源作品集分享**



## 2.2 直播大纲

### 2.2.1 瑞萨MCU的几款常见常用的MCU介绍

参考：[瑞萨电子 (Renesas Electronics Corporation)](https://www.renesas.cn/cn/zh)

![image-20231010175135136](https://s2.loli.net/2023/10/10/XTDBolduhntgZWO.png?my_wx_id=721317716)

![image-20231010175252067](https://s2.loli.net/2023/10/10/yZkCHeQ5wr6BKAW.png?my_wx_id=721317716)



### 2.2.2 RT-Thread在瑞萨MCU的适配情况介绍

参考：[https://gitee.com/recan-li/rt-thread/tree/master/bsp/renesas](https://gitee.com/recan-li/rt-thread/tree/master/bsp/renesas)

![image-20231010173725507](https://s2.loli.net/2023/10/10/BFGfAC7Pl4kEwxz.png?my_wx_id=721317716)



### 2.2.3.基于RT-Thread与瑞萨RASC工具的高效开发流程介绍

工具安装有以下几个：

- MDK（KEIL）：我手上的版本是 **V5.35**，版本太低了不行；
- MDK编译环境的芯片包：Renesas.RA_DFP.3.5.0.pack，要求与FAP、RASC、e2-studio同版本；我这边使用的 **V3.5.0** 版本。
- FSP（灵活配置软件包）：要求与RASC、e2-studio同版本，三个工具都是瑞萨提供的；主要是瑞萨提供的软件包；
- RASC（[RA Smart Configurator](https://www.renesas.com/us/en/software-tool/ra-smart-configurator)）：主要用于图形化配置芯片驱动代码；RASC 视频教程： https://www.renesas.cn/cn/zh/software-tool/ra-smart-configurator#tools_support
- e2-studio：瑞萨提供的IDE开发环境，与KEIL类似，应该也是基于ecplise框架搭出来的；下载地址：[e² studio | Renesas](https://www.renesas.cn/cn/zh/software-tool/e-studio)
- download tool：（Renesas Flash Programmer V3.11）瑞萨的单独下载工具。
- rt-studio 开发工具：一站式的RT-Thread开发环境
- env开发环境（工具）



以上主要的工具和文档，都可以通过网盘下载得到。

![image-20230326175149323](https://s2.loli.net/2023/10/10/8oQ35dNpnfIlkec.png?my_wx_id=721317716)



**RASC 配置，详见演示操作。**



### 2.2.4.多个基于RT-Thread和瑞萨MCU的开源作品分享

- [**【RA4M2设计挑战赛】基于RA4M2和阿里云物联网平台的智能卧室小管家**](https://bbs.elecfans.com/jishu_2336364_1_1.html)【在当次比赛中获得三等奖】

![image-20231010231709662](https://s2.loli.net/2023/10/11/AJRZ6H5FUhqOzEM.png?my_wx_id=721317716)

- [**【RT-Thread应用设计大赛】基于RT-Thread和RA6M4实现samba服务的移动网盘**](https://club.rt-thread.org/ask/article/4ad11a94e24e97fd.html) 【在当次比赛中获得一等奖】

![image-20231010231731730](https://s2.loli.net/2023/10/11/DX1zxiRYV236BCA.png?my_wx_id=721317716)

- [**【Renesas GUI挑战赛】基于HMI-Board和LVGL的儿童益智学习机**](https://club.rt-thread.org/ask/article/572b6bd6f909082d.html) 【目前还在评奖阶段】

![image-20231010231751422](https://s2.loli.net/2023/10/10/vHqz3IKED8yam7F.png?my_wx_id=721317716)

- [**【致敬未来的攻城狮计划】基于RA2E1的全勤30天学习打卡**](https://blog.csdn.net/oxygen23333/article/details/130654212)

![image-20231010232117882](https://s2.loli.net/2023/10/10/xLdM76Aas2I5Qu1.png?my_wx_id=721317716)



### 2.2.5.基于RT-Thread和瑞萨MCU做产品开发的总结与展望

- 开发便捷，省事省力，官方开发板设计得很精致，板载J-Link非常好用
- 文档齐全，参考设计较为完备
- RASC自动生成代码可读性较高
- 与RT-Thread生态结合完备，一键式的开发体验非常棒
- 芯片稳定性是瑞萨一贯的设计作风，扛得住压力
- 对开发便利、设计流程、性能稳定等方面有需求，不妨考虑试试瑞萨的几款芯片

&nbsp;

# 3 Q & A

- 瑞萨的MCU系列？
- 瑞萨MCU上面跑RT-Thread？
- 瑞萨MCU开发配套的工具？
- 感兴趣的开源项目？

&nbsp;

# 4 直播彩蛋

![image-20231010161124582](https://s2.loli.net/2023/10/10/Mn3rC9SlPUOyNHd.png?my_wx_id=721317716)

