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
	.file	"cycfg.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_cycfg_all,"ax",%progbits
	.align	1
	.global	init_cycfg_all
	.syntax unified
	.thumb
	.thumb_func
	.type	init_cycfg_all, %function
init_cycfg_all:
.LFB976:
	.file 1 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg.c"
	.loc 1 33 1
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
	.loc 1 34 5
	bl	cycfg_config_init
	.loc 1 35 5
	bl	cycfg_config_reservations
	.loc 1 36 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE976:
	.size	init_cycfg_all, .-init_cycfg_all
	.section	.text.cycfg_config_init,"ax",%progbits
	.align	1
	.global	cycfg_config_init
	.syntax unified
	.thumb
	.thumb_func
	.type	cycfg_config_init, %function
cycfg_config_init:
.LFB977:
	.loc 1 38 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI3:
	.cfi_def_cfa_register 7
	.loc 1 39 5
	bl	init_cycfg_system
	.loc 1 40 5
	bl	init_cycfg_clocks
	.loc 1 41 5
	bl	init_cycfg_routing
	.loc 1 42 5
	bl	init_cycfg_peripherals
	.loc 1 43 5
	bl	init_cycfg_pins
	.loc 1 44 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE977:
	.size	cycfg_config_init, .-cycfg_config_init
	.section	.text.cycfg_config_reservations,"ax",%progbits
	.align	1
	.global	cycfg_config_reservations
	.syntax unified
	.thumb
	.thumb_func
	.type	cycfg_config_reservations, %function
cycfg_config_reservations:
.LFB978:
	.loc 1 46 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI5:
	.cfi_def_cfa_register 7
	.loc 1 47 5
	bl	reserve_cycfg_system
	.loc 1 48 5
	bl	reserve_cycfg_clocks
	.loc 1 49 5
	bl	reserve_cycfg_pins
	.loc 1 50 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE978:
	.size	cycfg_config_reservations, .-cycfg_config_reservations
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.byte	0x1
	.4byte	.LFB978
	.4byte	.LFE978
	.4byte	.LLST2
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.byte	0x1
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LLST1
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.byte	0x1
	.4byte	.LFB976
	.4byte	.LFE976
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
	.uleb128 0x4
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
.LLST2:
	.4byte	.LFB978
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI5
	.4byte	.LFE978
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB977
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE977
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB976
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
	.4byte	.LFE976
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB976
	.4byte	.LFE976-.LFB976
	.4byte	.LFB977
	.4byte	.LFE977-.LFB977
	.4byte	.LFB978
	.4byte	.LFE978-.LFB978
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB976
	.4byte	.LFE976
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LFB978
	.4byte	.LFE978
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"_Bool\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF14:
	.ascii	"cycfg_config_reservations\000"
.LASF15:
	.ascii	"cycfg_config_init\000"
.LASF11:
	.ascii	"float\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF10:
	.ascii	"char\000"
.LASF18:
	.ascii	"libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cy"
	.ascii	"cfg.c\000"
.LASF4:
	.ascii	"long int\000"
.LASF12:
	.ascii	"double\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long double\000"
.LASF2:
	.ascii	"short int\000"
.LASF16:
	.ascii	"init_cycfg_all\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
