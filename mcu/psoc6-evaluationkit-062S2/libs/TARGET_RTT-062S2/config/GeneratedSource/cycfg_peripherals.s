	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cycfg_peripherals.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	cy_csd_0_context
	.section	.bss.cy_csd_0_context,"aw",%nobits
	.align	2
	.type	cy_csd_0_context, %object
	.size	cy_csd_0_context, 1
cy_csd_0_context:
	.space	1
	.section	.text.init_cycfg_peripherals,"ax",%progbits
	.align	1
	.global	init_cycfg_peripherals
	.syntax unified
	.thumb
	.thumb_func
	.type	init_cycfg_peripherals, %function
init_cycfg_peripherals:
.LFB144:
	.file 1 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg_peripherals.c"
	.loc 1 38 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI1:
	.cfi_def_cfa_register 7
	.loc 1 39 5
	movs	r2, #0
	movs	r1, #0
	movs	r0, #47
	bl	Cy_SysClk_PeriphAssignDivider
	.loc 1 40 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE144:
	.size	init_cycfg_peripherals, .-init_cycfg_peripherals
	.text
.Letext0:
	.file 2 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_result.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_sysclk.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_csd.h"
	.file 8 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg_peripherals.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2e5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0xc
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x58
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x4
	.byte	0x20
	.byte	0x1
	.4byte	0x1e1
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x22
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x23
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x25
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x26
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x27
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x35
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x5
	.byte	0x90
	.byte	0x1
	.4byte	0x208
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF71
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF73
	.uleb128 0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x6
	.2byte	0x1410
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x7
	.2byte	0x1eb
	.byte	0x1
	.4byte	0x280
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x201
	.byte	0x2
	.4byte	0x24c
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.2byte	0x248
	.byte	0x9
	.4byte	0x2a8
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x24b
	.byte	0x15
	.4byte	0x280
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x24c
	.byte	0x3
	.4byte	0x28d
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x8
	.byte	0x3f
	.byte	0x1d
	.4byte	0x2a8
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x2b5
	.byte	0x1
	.byte	0x1f
	.byte	0x16
	.byte	0x5
	.byte	0x3
	.4byte	cy_csd_0_context
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.byte	0x1
	.4byte	.LFB144
	.4byte	.LFE144
	.4byte	.LLST0
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB144
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE144
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB144
	.4byte	.LFE144
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF75:
	.ascii	"CY_SYSCLK_DIV_16_BIT\000"
.LASF89:
	.ascii	"lockKey\000"
.LASF62:
	.ascii	"PCLK_CPUSS_CLOCK_TRACE_IN\000"
.LASF80:
	.ascii	"CY_CSD_CAPSENSE_KEY\000"
.LASF79:
	.ascii	"CY_CSD_USER_DEFINED_KEY\000"
.LASF74:
	.ascii	"CY_SYSCLK_DIV_8_BIT\000"
.LASF2:
	.ascii	"short int\000"
.LASF90:
	.ascii	"cy_csd_0_context\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF13:
	.ascii	"PCLK_SCB1_CLOCK\000"
.LASF65:
	.ascii	"PCLK_USB_CLOCK_DEV_BRS\000"
.LASF85:
	.ascii	"cy_stc_csd_context_t\000"
.LASF27:
	.ascii	"PCLK_TCPWM0_CLOCKS0\000"
.LASF15:
	.ascii	"PCLK_SCB3_CLOCK\000"
.LASF87:
	.ascii	"libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cy"
	.ascii	"cfg_peripherals.c\000"
.LASF0:
	.ascii	"signed char\000"
.LASF81:
	.ascii	"CY_CSD_ADC_KEY\000"
.LASF78:
	.ascii	"CY_CSD_NONE_KEY\000"
.LASF71:
	.ascii	"float\000"
.LASF31:
	.ascii	"PCLK_TCPWM0_CLOCKS4\000"
.LASF6:
	.ascii	"long long int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF23:
	.ascii	"PCLK_SCB11_CLOCK\000"
.LASF4:
	.ascii	"long int\000"
.LASF17:
	.ascii	"PCLK_SCB5_CLOCK\000"
.LASF25:
	.ascii	"PCLK_SMARTIO8_CLOCK\000"
.LASF24:
	.ascii	"PCLK_SCB12_CLOCK\000"
.LASF19:
	.ascii	"PCLK_SCB7_CLOCK\000"
.LASF11:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"PCLK_TCPWM0_CLOCKS1\000"
.LASF29:
	.ascii	"PCLK_TCPWM0_CLOCKS2\000"
.LASF30:
	.ascii	"PCLK_TCPWM0_CLOCKS3\000"
.LASF82:
	.ascii	"CY_CSD_IDAC_KEY\000"
.LASF32:
	.ascii	"PCLK_TCPWM0_CLOCKS5\000"
.LASF33:
	.ascii	"PCLK_TCPWM0_CLOCKS6\000"
.LASF34:
	.ascii	"PCLK_TCPWM0_CLOCKS7\000"
.LASF35:
	.ascii	"PCLK_TCPWM1_CLOCKS0\000"
.LASF36:
	.ascii	"PCLK_TCPWM1_CLOCKS1\000"
.LASF37:
	.ascii	"PCLK_TCPWM1_CLOCKS2\000"
.LASF38:
	.ascii	"PCLK_TCPWM1_CLOCKS3\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF40:
	.ascii	"PCLK_TCPWM1_CLOCKS5\000"
.LASF41:
	.ascii	"PCLK_TCPWM1_CLOCKS6\000"
.LASF42:
	.ascii	"PCLK_TCPWM1_CLOCKS7\000"
.LASF43:
	.ascii	"PCLK_TCPWM1_CLOCKS8\000"
.LASF44:
	.ascii	"PCLK_TCPWM1_CLOCKS9\000"
.LASF60:
	.ascii	"PCLK_LCD_CLOCK\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"CY_SYSCLK_DIV_16_5_BIT\000"
.LASF49:
	.ascii	"PCLK_TCPWM1_CLOCKS14\000"
.LASF86:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF70:
	.ascii	"char\000"
.LASF91:
	.ascii	"init_cycfg_peripherals\000"
.LASF21:
	.ascii	"PCLK_SCB9_CLOCK\000"
.LASF73:
	.ascii	"_Bool\000"
.LASF61:
	.ascii	"PCLK_PROFILE_CLOCK_PROFILE\000"
.LASF45:
	.ascii	"PCLK_TCPWM1_CLOCKS10\000"
.LASF46:
	.ascii	"PCLK_TCPWM1_CLOCKS11\000"
.LASF47:
	.ascii	"PCLK_TCPWM1_CLOCKS12\000"
.LASF48:
	.ascii	"PCLK_TCPWM1_CLOCKS13\000"
.LASF64:
	.ascii	"PCLK_PASS_CLOCK_SAR\000"
.LASF50:
	.ascii	"PCLK_TCPWM1_CLOCKS15\000"
.LASF51:
	.ascii	"PCLK_TCPWM1_CLOCKS16\000"
.LASF52:
	.ascii	"PCLK_TCPWM1_CLOCKS17\000"
.LASF53:
	.ascii	"PCLK_TCPWM1_CLOCKS18\000"
.LASF54:
	.ascii	"PCLK_TCPWM1_CLOCKS19\000"
.LASF14:
	.ascii	"PCLK_SCB2_CLOCK\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF59:
	.ascii	"PCLK_CSD_CLOCK\000"
.LASF72:
	.ascii	"double\000"
.LASF63:
	.ascii	"PCLK_PASS_CLOCK_PUMP_PERI\000"
.LASF69:
	.ascii	"CY_RSLT_TYPE_FATAL\000"
.LASF39:
	.ascii	"PCLK_TCPWM1_CLOCKS4\000"
.LASF22:
	.ascii	"PCLK_SCB10_CLOCK\000"
.LASF68:
	.ascii	"CY_RSLT_TYPE_ERROR\000"
.LASF16:
	.ascii	"PCLK_SCB4_CLOCK\000"
.LASF66:
	.ascii	"CY_RSLT_TYPE_INFO\000"
.LASF67:
	.ascii	"CY_RSLT_TYPE_WARNING\000"
.LASF77:
	.ascii	"CY_SYSCLK_DIV_24_5_BIT\000"
.LASF83:
	.ascii	"CY_CSD_CMP_KEY\000"
.LASF88:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF18:
	.ascii	"PCLK_SCB6_CLOCK\000"
.LASF26:
	.ascii	"PCLK_SMARTIO9_CLOCK\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF84:
	.ascii	"cy_en_csd_key_t\000"
.LASF12:
	.ascii	"PCLK_SCB0_CLOCK\000"
.LASF55:
	.ascii	"PCLK_TCPWM1_CLOCKS20\000"
.LASF56:
	.ascii	"PCLK_TCPWM1_CLOCKS21\000"
.LASF57:
	.ascii	"PCLK_TCPWM1_CLOCKS22\000"
.LASF58:
	.ascii	"PCLK_TCPWM1_CLOCKS23\000"
.LASF20:
	.ascii	"PCLK_SCB8_CLOCK\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
