# 【英飞凌创意创客大赛】基于Infineon和ChatGPT的人工智能语音小管家



> 概要
> 
> 本文给大家介绍一个Infineon和ChatGPT的人工智能语音小管家项目，该项目是博主架构师李肯参加由RT-Thread与英飞凌联合举办的2023英飞凌创意创客大赛的参赛项目，旨在探索智能硬件+智能音箱+ChatGPT的超级组合在C端市场的潜在应用，希望能给大家带来帮助和启发。

[TOC]

# 1 前言

如今，智能化的设备慢慢走进了千家万户，大大提升了人民生活的智能化，但是随之而来的是各种智能设备无法互联互通，形成了一片片信息孤岛，这就迫切需要一个类似于智能家居管家系统的中枢设备来接管这些零散的智能设备；而在各种成熟的应用产品方案中，形态各异的智能音箱无疑是一个比较合适的选择。

众观市场上的各种智能音响，小度音响凭借其优异的市场表现，占据了很大一块市场份额，使得“小度小度，现在几度”成为了家庭中很常见的交互问候语。

有这么一个设想，我们将家庭环境中形态各异的智能设备，通过简单的协议改造，加上终端设备出色的主控能力，智能设备全部集合到小度音箱中去，而这个终端系统与小度音响直接打通，这样跟小度直接对话就能操作这些智能设备，这是一个不错的点子。

同时，当下人工智能非常火爆，尤其以ChatGPT最为强大，倘若这样的一套终端系统能够接入最前沿的ChatgPT，那么可以想象的是，这个智能系统的可玩性将会大大提升，而本项目正是基于这样的目的，着手去探讨这样方案的可行性。

# 2 项目简介

## 2.1 项目名称

**基于Infineon和ChatGPT的人工智能语音小管家**

## 2.2 设计思路

本项目主要使用Infineon的控制芯片作为端侧的核心控制器，实现一个物联网网关，网关外围接入多种传感器器件和控制器件，通过Wi-Fi模组实现与云端的互通，并接入小度音箱控制系统，实现使用音箱控制智能设备。

这个项目中，我将引入试下最流行的人工智能模型ChatGPT，这将极大地提升智能管家的时髦性和可玩性。本项目着重定义的应用场景是在智慧家庭中，一个有趣的人工智能小管家，不仅能够给家庭智能带来便利，还将提升家居生活的智能化和幸福感。解放双手，释放人类，享受智能生活，一切都将变得可能。

## 2.3 主要解决的问题

家庭中的智能设备越来越多，一个集中式的智能家庭中枢控制系统迫在眉睫，旨在解决所有智能设备的调度和控制问题，为智能生活提供便利。同时，将智能音箱系统接入最前沿的ChatGPT技术，丰富设备的可玩性。

## 2.4 项目创新点

- 主要是设备端各项传感器器件和控制器件的集成，以及与小度音响的直连互通。
- 在智能家居中，目前主流的所谓的“智能”，都是一个比较粗狂的智能，比如小度、小爱同学等；真正如果做到引入人工智能这种层次，还得看ChatGPT；如果能讲ChatGPT接入智能家庭这个场景中，那么可玩的的东西，想象力就可大了。

## 2.5 本次参赛的初衷

采用本项目参赛，本身并不期望作出多么惊艳的产品，旨在探索智能硬件+智能音箱+ChatGPT的超级组合在C端市场的潜在应用，希望能给大家带来帮助和启发。

# 3 系统架构介绍

## 3.1 方案预研

在过往的项目经历中，我已实现过 **基于小度音箱的智能家庭中枢控制系统**，参见 [这里](https://bbs.elecfans.com/jishu_2337593_1_1.html); 这个方案已经证实了，小度音箱作为控制中枢的可行性，现在只不过把控制中枢的逻辑移植过来。

剩下的就是小度音箱与ChatGPT的衔接问题，从查到的资料可知，在 [DuerOS开放平台 (baidu.com)](https://dueros.baidu.com/open) 的开放资料可知，小度音箱支持自定义 **技能**， 而通过这个技能，我们可以实现捕捉到从小度音箱获取的用户语音输入信息，这个时候需要利用到 **DuerOS SDK 的API能力**， 将语音的输入转换成文本信息，进而转发到了用户自定义的处理服务器，再由这个服务器将文本信息通过ChatGPT的Open API能力，得到反馈的信息（经ChatGPT处理得到的信息），再通过DuerOS SDK的API，通过小度音箱将信息输出，形成一个操作闭环。

同时，这个自定义的服务器还可以将与ChatGPT交互的信息，以MQTT Publish的形式推送到智能终端，达到保存信息记录的目的。

在预研的过程中，有参考一篇博文，给我一定的指导意义，详见 [这里](https://juejin.cn/post/7203685609654550588)。

经过以上分析，得到了方案的可行性，下面开始着手设计系统架构图。

## 3.2 系统核心架构图

经过调研设计，得到整个系统的核心架构图如下所示：

![小度智能家庭+chatgpt系统架构图 (1)](https://s2.loli.net/2023/07/15/cW3d4tDiHPobn7a.png?my_wx_id=721317716)

从上面这个核心架构图中，我们可以看到整个IoT系统组成，包括智能设备终端侧、巴法云物联网平台、小度云平台、小度音箱、OpenAI-ChatGPT后台，自定义后台服务（负责对接小度云平台）等等。下面就整个系统的几大重要组件，我会一一进行简要讲解。



## 3.3 终端侧

终端侧主要承载的是对巴法云平台的对接，接收巴法云平台下发的控制指令和ChatGPT交互数据，同时做一些边缘侧的应用逻辑处理，还需要具备对外网络的通讯能力，保持与巴法云平台的MQTT长链接。

这里巴法云平台推送的数据主要有两类：

- 对外围的智能设备的操作之类，比如关灯/开灯；
- 还有一类就是小度音箱与ChatGPT的交互记录数据。

终端侧包括的核心组件有：**英飞凌的PSoC™ 62 with CAPSENSE™ evaluation kit**，搭载的是国产实时操作系统 [RT-Thread](https://www.rt-thread.org/)，同时外设板载有 [ESP8266](https://www.espressif.com/zh-hans/products/socs/esp8266) Wi-Fi通讯模组、继电器（GPIO模拟）、存储的SD卡等等。

终端侧不仅包含设备硬件，还需要对应的固件软件，两者相辅相成，共同完成终端侧的功能逻辑。

![image-20230715190530271](https://s2.loli.net/2023/07/15/r8SQtVavqsEBjLO.png?my_wx_id=721317716)

## 3.4 后端侧

后端侧包括两部分：

**巴法云平台**

这个后端侧，其实没有真正的开发工作，仅仅是登录巴法云平台后台，配置MQTT板块，然后生成【智能灯】两个设备，以便于终端侧和小度音响识别。

同时，巴法云的MQTT后台，还需要配置一个专门用于传输ChatGPT交互数据的topic通道，以便于终端与自定义服务器进行数据传输。

![image-20230715220734624](https://s2.loli.net/2023/07/15/IBu6Tv9VASrosC1.png?my_wx_id=721317716)



**自定义服务器**

这个后端侧是有一定的开发工作量，包括以下几个核心内容：

- 移植DuerOS SDK，调用其API，通过小度技能的Callback能力，将从小度音箱输入的语音转文本信息取得；
- 基于OpenAI 的API KEY 能力，编写逻辑程序，讲文本信息发往ChatGPT服务，并获得ChatGPT的响应数据；
- 再通过DuerOS SDK 的API，把ChatGPT的响应数据转为语音，再通过小度音箱播放出来。

**值得注意的是，这部分涉及的后端知识比较多，对多个SDK的研究还需要投入更多的时间和精力**。



## 3.5 移动端

这里说的移动端，特指小度APP；其实这里面也没有开发工作，当你的小度APP账号登录之后，它有一个操作步骤可以加入基于巴法云平台的【智能设备】，按照说明添加成功后，就可以在小度APP上看到巴法云平台对应的设备列表了。

详细的绑定操作步骤，见 [此文的第二部分](https://blog.csdn.net/bemfa/article/details/120034113)。

![image-20230301004858379](https://s2.loli.net/2023/07/15/uVYys3cU2egnC7S.png?my_wx_id=721317716)

# 4 系统设计说明

## 4.1 硬件部分

- **MCU主控：英飞凌的PSoC™ 62**

[Infineon Technologies](https://www.digikey.cn/zh/supplier-centers/infineon-technologies) 的 PSoC 62S2 评估套件 (CY8CEVAL-062S2) 使客户能够使用 PSoC 62 MCU 评估和开发应用。该套件采用 PSoC 62 MCU (CY8C624ABZI-S2D44)：150 MHz Arm® Cortex®-M4 和 100 MHz Arm Cortex-M0+内核、2 MB 闪存、1 MB SRAM、硬件加密加速器、丰富的模拟和数字外设、音频和通信接口，以及采用 CAPSENSE™ 技术的行业领先电容式感应。PSoC 62S2 评估套件提供了许多开箱即用的用例，用于开发即将推出的连接边缘节点。

它的具体接口资源展示如下：

![image-20230715221709874](https://s2.loli.net/2023/07/15/6kIdfVo4DXQjugC.png?my_wx_id=721317716)


在我的项目中，我主要使用它的以下几个外设资源：

1）UART6：RT-Thread的终端调试串口；

2）UART5：用于连接串口WI-Fi模块ESP8266，实现网络通讯能力；

3）GPIO：P0.0 用作系统工作状态显示灯，P0.1 用于控制智能灯开关（模拟）；

4）SDIO：外挂SD卡，用于存储ChatGPT的交互信息。

以下是我的实物连接示意图：

![image-20230715224526150](https://s2.loli.net/2023/07/15/jOQlLd58pfmHcF2.png?my_wx_id=721317716)

- **Wi-Fi模组：ESP8266**

本次参赛，我采用了我惯用的Wi-Fi通讯模组ESP8266，非常的便捷，借助RT-Thread的软件包，基本无需编写任何代码，就可以实现网络能力；当然串口通讯还是需要配置一下，只不过不用谢代码而已。

我这里使用的搭建ESP8266 Wi-Fi芯片的模组ESP-12F，它是由安信可科技开发的，该模块核心处理器 ESP8266 在较小尺寸封装中集成了 业界领先的 Tensilica L106 超低功耗 32 位微型 MCU，带有 16 位精简模式，主频支持 80 MHz 和 160 MHz，支持 RTOS，集成 Wi-Fi MAC/ BB/RF/PA/LNA，板载天线。

![ESP8266](https://s2.loli.net/2023/07/15/VBj4emdyFWuk6M5.png?my_wx_id=721317716)

- **GPIO控制**：

目前这一块的接入，采用的是GPIO做模拟，并没有实际接入继电器，但已经完全可以实现其操作原理。

其中，P0.0 用作系统工作状态显示灯（**每一秒闪烁一次**），P0.1 用于控制智能灯开关（模拟）。

如上上图所示。



## 4.2 软件部分

整个软件部分的开发主要分为两大部分：**终端软件和后端服务器软件**。

**终端固件开发**

主要包括四大部分：英飞凌的PSoC™ 62的原厂BSP、RT-Thread实时操作系统、ESP8266相关的配置代码使能、个性化的应用逻辑代码。

其中英飞凌的PSoC™ 62的原厂BSP基本不动，原厂和相关开发者已经适配好了；通用的RT-Thread操作系统的代码也不在此处的修改中，直接复用已有的代码，这里使用的版本是 **5.0.0**版本 。

ESP8266相关的AT、网络组件代码也是现成的，使能配置之后就可以直接用了，还是非常的方便。

除了AT相关的软件包代码外，我还使用了 **paho-mqtt** 这个软件包，这个软件包主要封装了MQTT协议的实现技术细节，开放了一些灵活好用的API给到应用层，以便于提供MQTT的通讯能力。

还有一个cJSON的软件包，这里也使用到了，它用于做一些上下行数据包的解析和封装，主要原因是需要解析一些与云平台对接的数据协议，这就要求终端必须具备解析JSON数据的能力。

所以这里重点讲一下，应用逻辑的代码：主要包括GPIO的控制等，而这些控制信号的输入，都是来源于巴法云平台的下发，而巴法云平台的联动下发则来源于用户对小度音响的语音控制输入。

另一方面，当终端收到来自ChatGPT交互日志的请求数据时，也会将该数据写入SD卡作为存储。

以下是终端软件应用逻辑部分的层次图：

![image-20230715225537050](https://s2.loli.net/2023/07/15/vVGcfwOt3nheTUP.png?my_wx_id=721317716)

其中：

**Wi-Fi线程**：由于在RT-Thread中AT组件是开启后，默认就跑起来了，而在应用层暂时没有一个比较好的方式感知网络能力的建立，所以这里新建了一个线程，用于实时检查网络通讯能力；当网络通讯能力已建立时，通过信号量的方式，通知其他模块。

**Smart Home （+ ChatGPT） MQTT线程**：主要负责跟巴法云物联网平台进行对接，采用的MQTT通讯协议，它的运行，依赖于基础网络能力的建立；当它与巴法云物联网平台建立联系时，它就可以接收平台的控制指令下发，比如开关空调或开关照明灯等；

**系统运行展示线程**：此线程并没有参与过多的应用逻辑，仅仅是每一秒钟闪烁一下运行指示灯，表示系统正在运行中;

**智能灯（模拟）控制模块**：一个LED模拟继电器控制智能灯的逻辑，当收到下发的打开或关闭指令时，执行对灯的操控；

**SD卡存储显示**：此线程主要用于存储小度音箱与ChatGPT的交互信息。

以上各个线程各司其职，相辅相成，共同完成智能家庭中枢控制系统的逻辑功能。

下面展示的是工程项目中的代码结构，里面的代码结构一本与上面的代码逻辑示意图保持一致。

![image-20230715231042087](https://s2.loli.net/2023/07/15/eNI8PAcGW7yTaJd.png?my_wx_id=721317716)

**后端代码开发**：

由于时间关系比较紧张，还未完全学透DuerOS SDK与小度音箱的衔接，以下是部分参考代码，还需要进一步学习：

```java
javascriptCopy code
const sdk = require('baidu-sdk');
const OpenAI = require('openai');

const openai = new OpenAI('<your_api_key>');

sdk.onVoice((data) => {
  const text = data.result.recognize[0].payload.result.word[0];
  openai.generate(text).then((response) => {
    sdk.sendText(response.data[0].text);
  });
});
```



关于应用OpenAI 的API KEY 构建ChatGPT能力，倒不是一个难事，使用python脚本即可实现，范例代码如下：

```python
import openai

#my_gpt_key = "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"
#my_gpt_key = "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"
#my_gpt_key = "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"
#my_gpt_key = "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"
#my_gpt_key = "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"
my_gpt_key = "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"

import time

def ask_gpt(text: str):    
    #openai.api_type = "azure"
    #openai.api_key = "..."
    #openai.api_base = "https://example-endpoint.openai.azure.com"
    #openai.api_version = "2022-12-01"
    openai.api_key = my_gpt_key # "PUT YOUR API KEY HERE"
    # 获取当前时间
    t1 = int(time.time())
    
    # list engines
    #engines = openai.Engine.list()
    # print the first engine's id
    #print(engines.data[0].id)
    res = openai.Completion.create(
        engine="text-davinci-003", prompt=text, temperature=0.6, max_tokens=2048
    )
    t2 = int(time.time())
    print(t2 - t1)
    return res.choices[0].text
 
def main():
    while True:
        query = input("Ask a question: ")
        res = ask_gpt(query)
        print(f"{res}\n")
 
main()
```





## 4.3 创新性的开发环境

由于我早期基于RT-Thread做开发，也是非常依赖于RT-Thread Studio开发环境，虽然提供了一些便利，但是碍于它的配置实在是太慢了，并且非常吃内存和吃存储空间，于是被我启用了。

也正是由于这些吃瘪，我自己经过设计，延续了scons+env的构建环境，打造了一套属于自己的开发环境，我取名叫 **xiotman**。

关于它的介绍，详见我的开源项目：[xiotman: 一套致力于解决物联网终端应用多样化挑战的软件架构解决方案。 (gitee.com)](https://gitee.com/recan-li/xiotman)

![image-20230602232120443](https://s2.loli.net/2023/07/15/C2bY67VwlynAtru.png?my_wx_id=721317716)

借助这个项目，我很方便就把我本次参赛的项目移植移植进来了：

![image-20230715230302202](https://s2.loli.net/2023/07/15/vY6JIiHDgjRsZhS.png?my_wx_id=721317716)

基于scons+env的构建编译，也是非常的丝滑，多线程编程，想想就开心：

![image-20230715230816590](https://s2.loli.net/2023/07/15/uP2lMs5tpqCJiAv.png?my_wx_id=721317716)

在烧录固件这块，我没有使用RT-Studio的下载工具，而是使用了原厂提供的 **Cypress Programmer 4.2**，烧录工具用起来还是很爽的，尤其是自带烧录器这个实用功能，必须点个赞。

![image-20230715230643738](https://s2.loli.net/2023/07/15/VJqnu8siZ1lKQSL.png?my_wx_id=721317716)

# 5 项目实施过程

**1）熟悉英飞凌的PSoC™ 62的基本开发资料**

这一步主要是熟悉开发板的基本资源，对外设等信息有一定的概念，以便于方便后续的开发调试；同时，还需要把相关的一些官方软件给安装好，熟练使用配置工具和下载工具。

参加大赛主办发举行的一些线上直播活动，了解必要的开发基础。

磨刀不误砍柴工，只要熟练上手了，才能开发出优秀的应用程序。

**2）移植RT-Thread操作系统**

本次参赛，其实并不要求去移植RT-Thread，其实也要多感谢RT-Thread官方和社区的小伙伴，其实他们都已经做好了基本的移植了，只需要对照着自己的开发板资源跳调整一下即可。

有了上面的踩坑经验，直接上手RT-Thread的DEMO教程，很快就可以把操作系统跑起来了，一切都回归到熟悉的地方，研发进度再次提速。

下面就是基于RT-Thread操作系统进行编程了。

**3）配置RT-Thread的软件包**

目前由于xiotman的在线更新软件包的功能还没完全打通，所以我是通过在原生rt-thread/bsp目录，使用env配置工具先把软件包下载下来，然后手动拷贝到xiotman的components/packages/对应的目录。

这个项目中，我使用了paho-matt软件包、AT-device软件包、CJSON软件包；的确让我的项目开发提速了不少。

![image-20230715231139567](https://s2.loli.net/2023/07/15/xzQvCPbyha8sN43.png?my_wx_id=721317716)

**4）配置巴法云物联网平台**

我是参考这个 [esp8266接入小度语音，小度音箱控制](https://blog.csdn.net/bemfa/article/details/120034113?spm=1001.2014.3001.5501) 来创建自己的自定义产品的，并实现与小度音箱的绑定的。

基本上以上4步完成后，终端就可以很顺利地连上巴法云物联网平台了，而这期间基本就是零代码，全部都归功于RT-Thread灵活的代码配置工具，非常地赞。

![image-20230715231340585](https://s2.loli.net/2023/07/15/iMGToQkltPXFNCb.png?my_wx_id=721317716)

**5）调试外设驱动**

这里主要是调试各种驱动接口，包括红外发射器的UART接口、照明灯开关的GPIO控制。

在调试过程中，一般一个个模块来，避免模块直接的干扰，这样可以有效地加快开发速度。

等到各个功能模块完成后，统一串起来跑一跑，确保没有问题。

**6）全功能自测**

到了这一步，基本功能开发就已经完成了，需要将终端设备的功能与云端能力联系起来调试，比如对小度音箱进行控制语音输入，看一下巴法云平台能否推送对应的控制消息下来，同时看下终端能否对控制消息进行合理的处理，比如控制空调开关或者控制照明开关等。

>  **但是由于对接ChatGPT的后端服务器程序还未完工，所以涉及ChatGPT部分的逻辑，还需要再等一等，是一个遗憾。**

**7）准备结项资料**

项目收尾的最后，需要准备各种结项资料，包括项目稳定、演示视频、各种实物图片等等。



# 6 项目效果显示

## 6.1 功能描述

本期项目中，已实现以下功能：

- 在巴法云后台配置智能设备：智能空调和智能灯，在小度APP是可以看到设备情况；
- 基于英飞凌的PSoC™ 62的终端，实现智能家庭中枢控制系统的功能；
- 跟小度音响语音对话，比如【打开灯】或【关闭灯】，即可实现控制指令下发，终端通过GPIO控制LED（模拟真实场景的智能灯）
- 打通本地空调状态和智能灯状态与巴法云、小度平台的联系，实现实时控制联动。

**还未实现的功能**：

- **打通小度音箱与自定义后端服务器，完成语音输入的提取和转发**
- **对接OpenAI，基于API KEY 实现ChatGPT的功能**。



## 6.2 图片展示

以下是项目的部分图片展示：

- **项目应用启动/调试log**

![image-20230715231751648.png](https://s2.loli.net/2023/07/15/vpCLy1WgQY7D3IN.png?my_wx_id=721317716)

![image-20230715231840831](https://s2.loli.net/2023/07/15/cEHxRXzJ2IBm7e4.png?my_wx_id=721317716)

- **小度APP使用界面**

![image-20230301010625080](https://s2.loli.net/2023/07/15/Eht65W1DpOduQGB.png?my_wx_id=721317716)

- **通过巴法云添加的智能设备在小度APP的展示**

![image-20230301010702885](https://s2.loli.net/2023/07/15/HTaJ3ISd8ZA7Cy4.png?my_wx_id=721317716)

## 6.3 视频展示

>  **因时间关系，还未来得及录制，后续补充**。



## 6.4 代码开源

本参赛项目的源代码已全面开源在 [这里](https://gitee.com/recan-li/xiotman)

其中应用部分的代码在 [https://gitee.com/recan-li/xiotman/tree/master/apps/app_baidu_chatgpt](https://gitee.com/recan-li/xiotman/tree/master/apps/app_baidu_chatgpt)

有关项目源代码的事情，也可与我讨论。

# 7 项目复盘

项目还有一部分功能未实现，小小总结一下这次项目：

- DDL无效论：时间不够用，下次别留这么少的时间了；
- 百度开发者账号是需要认证的，需要几天的时间审核，容易耽误事儿；
- 英飞凌的PSoC™ 62 很好用，搭配的开发工具、下载工具非常棒，能够让人快速上手；
- xiotman第一次用于参加业余比赛，感觉使用起来还是比较清爽的，后面慢慢会都转到它来开发更多的项目。

# 8 致谢

感谢本次大赛的主办方RT-Thread和英飞凌，为广大开发者提供福利的同时，也带来了业内前沿的开发技术，是我们学习和提高的一个好平台，期待下次继续参与这样的比赛。

至于，比赛结果怎么样，倒是其次，参与过，学习过，提高过，差不多就可以了。



# 9 项目的TODOLIST

- DuerOS SDK的深度研究，争取玩透小度音箱及百度的AI相关应用；
- 基于ChatGPT的API KEY 熟练部署ChatGPT的应用，打通智能音箱与ChatGPT的沟通渠道；
- 演示视频，待补充。



# 10 参考链接

- [RT-Thread x Infineon创意创客大赛](https://club.rt-thread.org/ask/article/d4aa78c6fb75dda7.html)
- [DuerOS开放平台 (baidu.com)](https://dueros.baidu.com/open)
- [把 chatGPT 接入小度 - 掘金 (juejin.cn)](https://juejin.cn/post/7203685609654550588)
- [xiotman: 一套致力于解决物联网终端应用多样化挑战的软件架构解决方案。 (gitee.com)](https://gitee.com/recan-li/xiotman)
- [esp8266接入小度语音，小度音箱控制，附开源app控制](https://blog.csdn.net/bemfa/article/details/120034113?spm=1001.2014.3001.5501)
- [巴法云接入文档](https://cloud.bemfa.com/docs/#/)
- [巴法云开发者论坛](https://bbs.bemfa.com/)



# 11 更多分享

本次项目介绍后，我还继续探索RT-Thread在各种嵌入式平台开发的可能性，并以此来要求自己输出各种关于RT-Thread、嵌入式、物联网等等热门技术话题的原创内容，欢迎大家持续关注我。

我是 **架构师李肯** （**全网同名**），**2022年电子发烧友论坛优秀开发者、2022年RT-Thread技术社区优秀布道者、CSDN博客专家**，欢迎大家来交流。





