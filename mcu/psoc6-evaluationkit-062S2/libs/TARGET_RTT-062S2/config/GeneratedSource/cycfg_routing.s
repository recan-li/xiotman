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
	.file	"cycfg_routing.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_cycfg_routing,"ax",%progbits
	.align	1
	.global	init_cycfg_routing
	.syntax unified
	.thumb
	.thumb_func
	.type	init_cycfg_routing, %function
init_cycfg_routing:
.LFB133:
	.file 1 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg_routing.c"
	.loc 1 34 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI1:
	.cfi_def_cfa_register 7
	.loc 1 35 33
	ldr	r3, .L2
	.loc 1 35 53
	add	r3, r3, #8192
	mov	r2, r3
	movs	r3, #51
	str	r3, [r2, #16]
	.loc 1 39 33
	ldr	r3, .L2
	.loc 1 39 53
	add	r3, r3, #8192
	mov	r2, r3
	movs	r3, #51
	str	r3, [r2, #20]
	.loc 1 43 1
	nop
	mov	sp, r7
.LCFI2:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI3:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L3:
	.align	2
.L2:
	.word	1076887552
	.cfi_endproc
.LFE133:
	.size	init_cycfg_routing, .-init_cycfg_routing
	.text
.Letext0:
	.file 2 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/ip/cyip_hsiom_v2.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x239
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x7
	.4byte	0x8c
	.4byte	0xa1
	.uleb128 0x8
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x91
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x7
	.4byte	0x8c
	.4byte	0xbb
	.uleb128 0x8
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x5
	.4byte	0xbb
	.uleb128 0x7
	.4byte	0x8c
	.4byte	0xd5
	.uleb128 0x8
	.4byte	0x74
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x5
	.4byte	0xd5
	.uleb128 0x7
	.4byte	0x8c
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0x74
	.2byte	0x5ff
	.byte	0
	.uleb128 0x6
	.4byte	0xdf
	.uleb128 0x5
	.4byte	0xf0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x10a
	.uleb128 0x8
	.4byte	0x74
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0xfa
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.byte	0x2a
	.byte	0x9
	.4byte	0x146
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2b
	.byte	0x15
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0x15
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.byte	0x1c
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x3
	.4byte	0x10f
	.uleb128 0xc
	.2byte	0x2244
	.byte	0x4
	.byte	0x33
	.byte	0x9
	.4byte	0x1fc
	.uleb128 0xd
	.ascii	"PRT\000"
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x35
	.byte	0x1c
	.4byte	0xf5
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x15
	.4byte	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2000
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x1c
	.4byte	0xc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2100
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x15
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x2200
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x15
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x2204
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x15
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x2208
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x15
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x220c
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x1c
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0x2210
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x15
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x2240
	.byte	0
	.uleb128 0x7
	.4byte	0x146
	.4byte	0x20c
	.uleb128 0x8
	.4byte	0x74
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3e
	.byte	0x3
	.4byte	0x152
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x6b7
	.byte	0x17
	.4byte	0x20c
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB133
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"HSIOM_Type\000"
.LASF25:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF14:
	.ascii	"HSIOM_PRT_V2_Type\000"
.LASF16:
	.ascii	"RESERVED1\000"
.LASF21:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"ALT_JTAG_EN\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"RESERVED\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF17:
	.ascii	"MONITOR_CTL_0\000"
.LASF18:
	.ascii	"MONITOR_CTL_1\000"
.LASF19:
	.ascii	"MONITOR_CTL_2\000"
.LASF20:
	.ascii	"MONITOR_CTL_3\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF28:
	.ascii	"init_cycfg_routing\000"
.LASF26:
	.ascii	"libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cy"
	.ascii	"cfg_routing.c\000"
.LASF6:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF0:
	.ascii	"short int\000"
.LASF23:
	.ascii	"HSIOM_V2_Type\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"PORT_SEL0\000"
.LASF12:
	.ascii	"PORT_SEL1\000"
.LASF15:
	.ascii	"AMUX_SPLIT_CTL\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
