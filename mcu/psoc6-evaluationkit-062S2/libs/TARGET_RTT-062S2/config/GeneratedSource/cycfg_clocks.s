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
	.file	"cycfg_clocks.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	CYBSP_CSD_CLK_DIV_obj
	.section	.rodata.CYBSP_CSD_CLK_DIV_obj,"a"
	.align	2
	.type	CYBSP_CSD_CLK_DIV_obj, %object
	.size	CYBSP_CSD_CLK_DIV_obj, 3
CYBSP_CSD_CLK_DIV_obj:
	.byte	5
	.byte	0
	.byte	0
	.section	.text.init_cycfg_clocks,"ax",%progbits
	.align	1
	.global	init_cycfg_clocks
	.syntax unified
	.thumb
	.thumb_func
	.type	init_cycfg_clocks, %function
init_cycfg_clocks:
.LFB976:
	.file 1 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg_clocks.c"
	.loc 1 42 1
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
	.loc 1 43 5
	movs	r1, #0
	movs	r0, #0
	bl	Cy_SysClk_PeriphDisableDivider
	.loc 1 44 5
	movs	r2, #0
	movs	r1, #0
	movs	r0, #0
	bl	Cy_SysClk_PeriphSetDivider
	.loc 1 45 5
	movs	r1, #0
	movs	r0, #0
	bl	Cy_SysClk_PeriphEnableDivider
	.loc 1 46 1
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE976:
	.size	init_cycfg_clocks, .-init_cycfg_clocks
	.section	.text.reserve_cycfg_clocks,"ax",%progbits
	.align	1
	.global	reserve_cycfg_clocks
	.syntax unified
	.thumb
	.thumb_func
	.type	reserve_cycfg_clocks, %function
reserve_cycfg_clocks:
.LFB977:
	.loc 1 49 1
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
	.loc 1 51 5
	ldr	r0, .L3
	bl	cyhal_hwmgr_reserve
	.loc 1 53 1
	nop
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	CYBSP_CSD_CLK_DIV_obj
	.cfi_endproc
.LFE977:
	.size	reserve_cycfg_clocks, .-reserve_cycfg_clocks
	.text
.Letext0:
	.file 2 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_result.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_sysclk.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\include/cyhal_general_types.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\include_pvt/cyhal_hw_resources.h"
	.file 8 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\include_pvt/cyhal_pin_package.h"
	.file 9 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\COMPONENT_CAT1A\\include/triggers/cyhal_triggers_psoc6_02.h"
	.file 10 "libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cycfg_clocks.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x967
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF352
	.byte	0xc
	.4byte	.LASF353
	.4byte	.LASF354
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3c
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x4
	.byte	0x90
	.byte	0x1
	.4byte	0xcd
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x5
	.2byte	0x1410
	.byte	0x1
	.4byte	0x111
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x6
	.byte	0x9d
	.byte	0x1
	.4byte	0x12c
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0xbb
	.byte	0x1
	.4byte	0x1f5
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x1e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0xdb
	.byte	0x3
	.4byte	0x12c
	.uleb128 0x8
	.byte	0x3
	.byte	0x7
	.2byte	0x233
	.byte	0x9
	.4byte	0x23c
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x235
	.byte	0x16
	.4byte	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x236
	.byte	0xd
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x23a
	.byte	0xd
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x23b
	.byte	0x3
	.4byte	0x201
	.uleb128 0xb
	.4byte	0x23c
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.4byte	0x32f
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0x2c
	.byte	0x1
	.4byte	0x920
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x15
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x16
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x17
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x19
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x1b
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x1d
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x22
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0x23
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x25
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0x26
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0x27
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF144
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x36
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x37
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0x39
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x3a
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x3b
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x3d
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0x3e
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x3f
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0x41
	.uleb128 0x6
	.4byte	.LASF165
	.byte	0x42
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0x43
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF168
	.byte	0x45
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0x46
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x47
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF172
	.byte	0x49
	.uleb128 0x6
	.4byte	.LASF173
	.byte	0x4a
	.uleb128 0x6
	.4byte	.LASF174
	.byte	0x4b
	.uleb128 0x6
	.4byte	.LASF175
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF176
	.byte	0x4d
	.uleb128 0x6
	.4byte	.LASF177
	.byte	0x4e
	.uleb128 0x6
	.4byte	.LASF178
	.byte	0x4f
	.uleb128 0x6
	.4byte	.LASF179
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF180
	.byte	0x51
	.uleb128 0x6
	.4byte	.LASF181
	.byte	0x52
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0x53
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0x54
	.uleb128 0x6
	.4byte	.LASF184
	.byte	0x55
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0x56
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0x57
	.uleb128 0x6
	.4byte	.LASF187
	.byte	0x58
	.uleb128 0x6
	.4byte	.LASF188
	.byte	0x59
	.uleb128 0x6
	.4byte	.LASF189
	.byte	0x5a
	.uleb128 0x6
	.4byte	.LASF190
	.byte	0x5b
	.uleb128 0x6
	.4byte	.LASF191
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF192
	.byte	0x5d
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x5e
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0x5f
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x60
	.uleb128 0x6
	.4byte	.LASF196
	.byte	0x61
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x62
	.uleb128 0x6
	.4byte	.LASF198
	.byte	0x63
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0x64
	.uleb128 0x6
	.4byte	.LASF200
	.byte	0x65
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x66
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0x67
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x68
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x69
	.uleb128 0x6
	.4byte	.LASF205
	.byte	0x6a
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x6b
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x6c
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x6d
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x6e
	.uleb128 0x6
	.4byte	.LASF210
	.byte	0x6f
	.uleb128 0x6
	.4byte	.LASF211
	.byte	0x70
	.uleb128 0x6
	.4byte	.LASF212
	.byte	0x71
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0x72
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0x73
	.uleb128 0x6
	.4byte	.LASF215
	.byte	0x74
	.uleb128 0x6
	.4byte	.LASF216
	.byte	0x75
	.uleb128 0x6
	.4byte	.LASF217
	.byte	0x76
	.uleb128 0x6
	.4byte	.LASF218
	.byte	0x77
	.uleb128 0x6
	.4byte	.LASF219
	.byte	0x78
	.uleb128 0x6
	.4byte	.LASF220
	.byte	0x79
	.uleb128 0x6
	.4byte	.LASF221
	.byte	0x7a
	.uleb128 0x6
	.4byte	.LASF222
	.byte	0x7b
	.uleb128 0x6
	.4byte	.LASF223
	.byte	0x7c
	.uleb128 0x6
	.4byte	.LASF224
	.byte	0x7d
	.uleb128 0x6
	.4byte	.LASF225
	.byte	0x7e
	.uleb128 0x6
	.4byte	.LASF226
	.byte	0x7f
	.uleb128 0x6
	.4byte	.LASF227
	.byte	0x80
	.uleb128 0x6
	.4byte	.LASF228
	.byte	0x81
	.uleb128 0x6
	.4byte	.LASF229
	.byte	0x82
	.uleb128 0x6
	.4byte	.LASF230
	.byte	0x83
	.uleb128 0x6
	.4byte	.LASF231
	.byte	0x84
	.uleb128 0x6
	.4byte	.LASF232
	.byte	0x85
	.uleb128 0x6
	.4byte	.LASF233
	.byte	0x86
	.uleb128 0x6
	.4byte	.LASF234
	.byte	0x87
	.uleb128 0x6
	.4byte	.LASF235
	.byte	0x88
	.uleb128 0x6
	.4byte	.LASF236
	.byte	0x89
	.uleb128 0x6
	.4byte	.LASF237
	.byte	0x8a
	.uleb128 0x6
	.4byte	.LASF238
	.byte	0x8b
	.uleb128 0x6
	.4byte	.LASF239
	.byte	0x8c
	.uleb128 0x6
	.4byte	.LASF240
	.byte	0x8d
	.uleb128 0x6
	.4byte	.LASF241
	.byte	0x8e
	.uleb128 0x6
	.4byte	.LASF242
	.byte	0x8f
	.uleb128 0x6
	.4byte	.LASF243
	.byte	0x90
	.uleb128 0x6
	.4byte	.LASF244
	.byte	0x91
	.uleb128 0x6
	.4byte	.LASF245
	.byte	0x92
	.uleb128 0x6
	.4byte	.LASF246
	.byte	0x93
	.uleb128 0x6
	.4byte	.LASF247
	.byte	0x94
	.uleb128 0x6
	.4byte	.LASF248
	.byte	0x95
	.uleb128 0x6
	.4byte	.LASF249
	.byte	0x96
	.uleb128 0x6
	.4byte	.LASF250
	.byte	0x97
	.uleb128 0x6
	.4byte	.LASF251
	.byte	0x98
	.uleb128 0x6
	.4byte	.LASF252
	.byte	0x99
	.uleb128 0x6
	.4byte	.LASF253
	.byte	0x9a
	.uleb128 0x6
	.4byte	.LASF254
	.byte	0x9b
	.uleb128 0x6
	.4byte	.LASF255
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0x9d
	.uleb128 0x6
	.4byte	.LASF257
	.byte	0x9e
	.uleb128 0x6
	.4byte	.LASF258
	.byte	0x9f
	.uleb128 0x6
	.4byte	.LASF259
	.byte	0xa0
	.uleb128 0x6
	.4byte	.LASF260
	.byte	0xa1
	.uleb128 0x6
	.4byte	.LASF261
	.byte	0xa2
	.uleb128 0x6
	.4byte	.LASF262
	.byte	0xa3
	.uleb128 0x6
	.4byte	.LASF263
	.byte	0xa4
	.uleb128 0x6
	.4byte	.LASF264
	.byte	0xa5
	.uleb128 0x6
	.4byte	.LASF265
	.byte	0xa6
	.uleb128 0x6
	.4byte	.LASF266
	.byte	0xa7
	.uleb128 0x6
	.4byte	.LASF267
	.byte	0xa8
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0xa9
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0xaa
	.uleb128 0x6
	.4byte	.LASF270
	.byte	0xab
	.uleb128 0x6
	.4byte	.LASF271
	.byte	0xac
	.uleb128 0x6
	.4byte	.LASF272
	.byte	0xad
	.uleb128 0x6
	.4byte	.LASF273
	.byte	0xae
	.uleb128 0x6
	.4byte	.LASF274
	.byte	0xaf
	.uleb128 0x6
	.4byte	.LASF275
	.byte	0xb0
	.uleb128 0x6
	.4byte	.LASF276
	.byte	0xb1
	.uleb128 0x6
	.4byte	.LASF277
	.byte	0xb2
	.uleb128 0x6
	.4byte	.LASF278
	.byte	0xb3
	.uleb128 0x6
	.4byte	.LASF279
	.byte	0xb4
	.uleb128 0x6
	.4byte	.LASF280
	.byte	0xb5
	.uleb128 0x6
	.4byte	.LASF281
	.byte	0xb6
	.uleb128 0x6
	.4byte	.LASF282
	.byte	0xb7
	.uleb128 0x6
	.4byte	.LASF283
	.byte	0xb8
	.uleb128 0x6
	.4byte	.LASF284
	.byte	0xb9
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xba
	.uleb128 0x6
	.4byte	.LASF286
	.byte	0xbb
	.uleb128 0x6
	.4byte	.LASF287
	.byte	0xbc
	.uleb128 0x6
	.4byte	.LASF288
	.byte	0xbd
	.uleb128 0x6
	.4byte	.LASF289
	.byte	0xbe
	.uleb128 0x6
	.4byte	.LASF290
	.byte	0xbf
	.uleb128 0x6
	.4byte	.LASF291
	.byte	0xc0
	.uleb128 0x6
	.4byte	.LASF292
	.byte	0xc1
	.uleb128 0x6
	.4byte	.LASF293
	.byte	0xc2
	.uleb128 0x6
	.4byte	.LASF294
	.byte	0xc3
	.uleb128 0x6
	.4byte	.LASF295
	.byte	0xc4
	.uleb128 0x6
	.4byte	.LASF296
	.byte	0xc5
	.uleb128 0x6
	.4byte	.LASF297
	.byte	0xc6
	.uleb128 0x6
	.4byte	.LASF298
	.byte	0xc7
	.uleb128 0x6
	.4byte	.LASF299
	.byte	0xc8
	.uleb128 0x6
	.4byte	.LASF300
	.byte	0xc9
	.uleb128 0x6
	.4byte	.LASF301
	.byte	0xca
	.uleb128 0x6
	.4byte	.LASF302
	.byte	0xcb
	.uleb128 0x6
	.4byte	.LASF303
	.byte	0xcc
	.uleb128 0x6
	.4byte	.LASF304
	.byte	0xcd
	.uleb128 0x6
	.4byte	.LASF305
	.byte	0xce
	.uleb128 0x6
	.4byte	.LASF306
	.byte	0xcf
	.uleb128 0x6
	.4byte	.LASF307
	.byte	0xd0
	.uleb128 0x6
	.4byte	.LASF308
	.byte	0xd1
	.uleb128 0x6
	.4byte	.LASF309
	.byte	0xd2
	.uleb128 0x6
	.4byte	.LASF310
	.byte	0xd3
	.uleb128 0x6
	.4byte	.LASF311
	.byte	0xd4
	.uleb128 0x6
	.4byte	.LASF312
	.byte	0xd5
	.uleb128 0x6
	.4byte	.LASF313
	.byte	0xd6
	.uleb128 0x6
	.4byte	.LASF314
	.byte	0xd7
	.uleb128 0x6
	.4byte	.LASF315
	.byte	0xd8
	.uleb128 0x6
	.4byte	.LASF316
	.byte	0xd9
	.uleb128 0x6
	.4byte	.LASF317
	.byte	0xda
	.uleb128 0x6
	.4byte	.LASF318
	.byte	0xdb
	.uleb128 0x6
	.4byte	.LASF319
	.byte	0xdc
	.uleb128 0x6
	.4byte	.LASF320
	.byte	0xdd
	.uleb128 0x6
	.4byte	.LASF321
	.byte	0xde
	.uleb128 0x6
	.4byte	.LASF322
	.byte	0xdf
	.uleb128 0x6
	.4byte	.LASF323
	.byte	0xe0
	.uleb128 0x6
	.4byte	.LASF324
	.byte	0xe1
	.uleb128 0x6
	.4byte	.LASF325
	.byte	0xe2
	.uleb128 0x6
	.4byte	.LASF326
	.byte	0xe3
	.uleb128 0x6
	.4byte	.LASF327
	.byte	0xe4
	.uleb128 0x6
	.4byte	.LASF328
	.byte	0xe5
	.uleb128 0x6
	.4byte	.LASF329
	.byte	0xe6
	.uleb128 0x6
	.4byte	.LASF330
	.byte	0xe7
	.uleb128 0x6
	.4byte	.LASF331
	.byte	0xe8
	.uleb128 0x6
	.4byte	.LASF332
	.byte	0xe9
	.uleb128 0x6
	.4byte	.LASF333
	.byte	0xea
	.uleb128 0x6
	.4byte	.LASF334
	.byte	0xeb
	.uleb128 0x6
	.4byte	.LASF335
	.byte	0xec
	.uleb128 0x6
	.4byte	.LASF336
	.byte	0xed
	.uleb128 0x6
	.4byte	.LASF337
	.byte	0xee
	.uleb128 0x6
	.4byte	.LASF338
	.byte	0xef
	.uleb128 0x6
	.4byte	.LASF339
	.byte	0xf0
	.uleb128 0x6
	.4byte	.LASF340
	.byte	0xf1
	.uleb128 0x6
	.4byte	.LASF341
	.byte	0xf2
	.uleb128 0x6
	.4byte	.LASF342
	.byte	0xf3
	.uleb128 0x6
	.4byte	.LASF343
	.byte	0xf4
	.uleb128 0x6
	.4byte	.LASF344
	.byte	0xf5
	.uleb128 0x6
	.4byte	.LASF345
	.byte	0xf6
	.uleb128 0x6
	.4byte	.LASF346
	.byte	0xf7
	.uleb128 0x6
	.4byte	.LASF347
	.byte	0xf8
	.uleb128 0x6
	.4byte	.LASF348
	.byte	0xf9
	.uleb128 0x6
	.4byte	.LASF349
	.byte	0xfa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF355
	.byte	0xa
	.byte	0x32
	.byte	0x28
	.4byte	0x249
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x920
	.byte	0x1
	.byte	0x20
	.byte	0x21
	.byte	0x5
	.byte	0x3
	.4byte	CYBSP_CSD_CLK_DIV_obj
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF350
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.byte	0x1
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LLST1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF351
	.byte	0x1
	.byte	0x29
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB976
	.4byte	.LFE976
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF187:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT10\000"
.LASF188:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT11\000"
.LASF189:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT12\000"
.LASF190:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT13\000"
.LASF191:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT14\000"
.LASF192:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT15\000"
.LASF193:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT16\000"
.LASF194:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT17\000"
.LASF195:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT18\000"
.LASF196:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT19\000"
.LASF236:
	.ascii	"_CYHAL_TRIGGER_SCB5_TR_TX_REQ\000"
.LASF267:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH13\000"
.LASF268:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH14\000"
.LASF269:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH15\000"
.LASF270:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH16\000"
.LASF271:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH17\000"
.LASF272:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH18\000"
.LASF273:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH19\000"
.LASF99:
	.ascii	"_CYHAL_TRIGGER_CPUSS_ZERO\000"
.LASF27:
	.ascii	"CYHAL_SIGNAL_TYPE_EDGE\000"
.LASF23:
	.ascii	"CY_SYSCLK_DIV_16_BIT\000"
.LASF22:
	.ascii	"CY_SYSCLK_DIV_8_BIT\000"
.LASF251:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH5\000"
.LASF227:
	.ascii	"_CYHAL_TRIGGER_SCB9_TR_RX_REQ\000"
.LASF197:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT20\000"
.LASF198:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT21\000"
.LASF199:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT22\000"
.LASF200:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT23\000"
.LASF201:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT24\000"
.LASF202:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT25\000"
.LASF203:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT26\000"
.LASF204:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT27\000"
.LASF274:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH20\000"
.LASF275:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH21\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF277:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH23\000"
.LASF354:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF43:
	.ascii	"CYHAL_RSC_LCD\000"
.LASF355:
	.ascii	"CYBSP_CSD_CLK_DIV_obj\000"
.LASF150:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT10\000"
.LASF153:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT13\000"
.LASF221:
	.ascii	"_CYHAL_TRIGGER_SCB3_TR_RX_REQ\000"
.LASF343:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ1\000"
.LASF344:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ2\000"
.LASF345:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ3\000"
.LASF346:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ4\000"
.LASF347:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ5\000"
.LASF348:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ6\000"
.LASF349:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ7\000"
.LASF152:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT12\000"
.LASF151:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT11\000"
.LASF62:
	.ascii	"channel_num\000"
.LASF318:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW0\000"
.LASF319:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW1\000"
.LASF320:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW2\000"
.LASF321:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW3\000"
.LASF322:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW4\000"
.LASF323:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW5\000"
.LASF324:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW6\000"
.LASF325:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW7\000"
.LASF326:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW8\000"
.LASF327:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW9\000"
.LASF154:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT14\000"
.LASF155:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT15\000"
.LASF17:
	.ascii	"CY_RSLT_TYPE_FATAL\000"
.LASF157:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT17\000"
.LASF156:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT16\000"
.LASF159:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT19\000"
.LASF235:
	.ascii	"_CYHAL_TRIGGER_SCB4_TR_TX_REQ\000"
.LASF254:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH0\000"
.LASF255:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH1\000"
.LASF158:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT18\000"
.LASF257:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH3\000"
.LASF258:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH4\000"
.LASF259:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH5\000"
.LASF260:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH6\000"
.LASF261:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH7\000"
.LASF262:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH8\000"
.LASF263:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH9\000"
.LASF61:
	.ascii	"block_num\000"
.LASF292:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW6\000"
.LASF276:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH22\000"
.LASF105:
	.ascii	"_CYHAL_TRIGGER_CPUSS_CTI_TR_OUT0\000"
.LASF106:
	.ascii	"_CYHAL_TRIGGER_CPUSS_CTI_TR_OUT1\000"
.LASF216:
	.ascii	"_CYHAL_TRIGGER_SCB11_TR_I2C_SCL_FILTERED\000"
.LASF37:
	.ascii	"CYHAL_RSC_DW\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF244:
	.ascii	"_CYHAL_TRIGGER_SMIF_TR_RX_REQ\000"
.LASF213:
	.ascii	"_CYHAL_TRIGGER_SCB8_TR_I2C_SCL_FILTERED\000"
.LASF160:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT20\000"
.LASF161:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT21\000"
.LASF162:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT22\000"
.LASF163:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT23\000"
.LASF164:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT24\000"
.LASF165:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT25\000"
.LASF166:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT26\000"
.LASF167:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT27\000"
.LASF168:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT28\000"
.LASF19:
	.ascii	"float\000"
.LASF49:
	.ascii	"CYHAL_RSC_SMIF\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF176:
	.ascii	"_CYHAL_TRIGGER_PASS_TR_SAR_OUT\000"
.LASF310:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW0\000"
.LASF311:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW1\000"
.LASF312:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW2\000"
.LASF313:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW3\000"
.LASF314:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW4\000"
.LASF315:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW5\000"
.LASF316:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW6\000"
.LASF317:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_UNDERFLOW7\000"
.LASF220:
	.ascii	"_CYHAL_TRIGGER_SCB2_TR_RX_REQ\000"
.LASF174:
	.ascii	"_CYHAL_TRIGGER_LPCOMP_DSI_COMP0\000"
.LASF175:
	.ascii	"_CYHAL_TRIGGER_LPCOMP_DSI_COMP1\000"
.LASF24:
	.ascii	"CY_SYSCLK_DIV_16_5_BIT\000"
.LASF222:
	.ascii	"_CYHAL_TRIGGER_SCB4_TR_RX_REQ\000"
.LASF243:
	.ascii	"_CYHAL_TRIGGER_SCB12_TR_TX_REQ\000"
.LASF101:
	.ascii	"_CYHAL_TRIGGER_AUDIOSS1_TR_I2S_RX_REQ\000"
.LASF207:
	.ascii	"_CYHAL_TRIGGER_SCB2_TR_I2C_SCL_FILTERED\000"
.LASF100:
	.ascii	"_CYHAL_TRIGGER_AUDIOSS0_TR_I2S_RX_REQ\000"
.LASF256:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH2\000"
.LASF210:
	.ascii	"_CYHAL_TRIGGER_SCB5_TR_I2C_SCL_FILTERED\000"
.LASF246:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH0\000"
.LASF247:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH1\000"
.LASF248:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH2\000"
.LASF249:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH3\000"
.LASF250:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH4\000"
.LASF226:
	.ascii	"_CYHAL_TRIGGER_SCB8_TR_RX_REQ\000"
.LASF252:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH6\000"
.LASF253:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_COMPARE_MATCH7\000"
.LASF15:
	.ascii	"CY_RSLT_TYPE_WARNING\000"
.LASF59:
	.ascii	"cyhal_resource_t\000"
.LASF172:
	.ascii	"_CYHAL_TRIGGER_CSD_DSI_SENSE_OUT\000"
.LASF21:
	.ascii	"_Bool\000"
.LASF240:
	.ascii	"_CYHAL_TRIGGER_SCB9_TR_TX_REQ\000"
.LASF8:
	.ascii	"long long int\000"
.LASF55:
	.ascii	"CYHAL_RSC_TDM\000"
.LASF120:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT9\000"
.LASF245:
	.ascii	"_CYHAL_TRIGGER_SMIF_TR_TX_REQ\000"
.LASF352:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF228:
	.ascii	"_CYHAL_TRIGGER_SCB10_TR_RX_REQ\000"
.LASF74:
	.ascii	"CYHAL_PORT_10\000"
.LASF75:
	.ascii	"CYHAL_PORT_11\000"
.LASF76:
	.ascii	"CYHAL_PORT_12\000"
.LASF77:
	.ascii	"CYHAL_PORT_13\000"
.LASF78:
	.ascii	"CYHAL_PORT_14\000"
.LASF79:
	.ascii	"CYHAL_PORT_15\000"
.LASF80:
	.ascii	"CYHAL_PORT_16\000"
.LASF81:
	.ascii	"CYHAL_PORT_17\000"
.LASF82:
	.ascii	"CYHAL_PORT_18\000"
.LASF83:
	.ascii	"CYHAL_PORT_19\000"
.LASF234:
	.ascii	"_CYHAL_TRIGGER_SCB3_TR_TX_REQ\000"
.LASF329:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW11\000"
.LASF330:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW12\000"
.LASF331:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW13\000"
.LASF332:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW14\000"
.LASF333:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW15\000"
.LASF334:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW16\000"
.LASF335:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW17\000"
.LASF336:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW18\000"
.LASF337:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW19\000"
.LASF31:
	.ascii	"CYHAL_RSC_CAN\000"
.LASF18:
	.ascii	"char\000"
.LASF242:
	.ascii	"_CYHAL_TRIGGER_SCB11_TR_TX_REQ\000"
.LASF30:
	.ascii	"CYHAL_RSC_BLESS\000"
.LASF215:
	.ascii	"_CYHAL_TRIGGER_SCB10_TR_I2C_SCL_FILTERED\000"
.LASF53:
	.ascii	"CYHAL_RSC_SDIODEV\000"
.LASF16:
	.ascii	"CY_RSLT_TYPE_ERROR\000"
.LASF64:
	.ascii	"CYHAL_PORT_0\000"
.LASF65:
	.ascii	"CYHAL_PORT_1\000"
.LASF66:
	.ascii	"CYHAL_PORT_2\000"
.LASF67:
	.ascii	"CYHAL_PORT_3\000"
.LASF68:
	.ascii	"CYHAL_PORT_4\000"
.LASF69:
	.ascii	"CYHAL_PORT_5\000"
.LASF70:
	.ascii	"CYHAL_PORT_6\000"
.LASF38:
	.ascii	"CYHAL_RSC_ETH\000"
.LASF72:
	.ascii	"CYHAL_PORT_8\000"
.LASF73:
	.ascii	"CYHAL_PORT_9\000"
.LASF118:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT7\000"
.LASF119:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT8\000"
.LASF103:
	.ascii	"_CYHAL_TRIGGER_AUDIOSS1_TR_I2S_TX_REQ\000"
.LASF225:
	.ascii	"_CYHAL_TRIGGER_SCB7_TR_RX_REQ\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF85:
	.ascii	"CYHAL_PORT_21\000"
.LASF86:
	.ascii	"CYHAL_PORT_22\000"
.LASF87:
	.ascii	"CYHAL_PORT_23\000"
.LASF88:
	.ascii	"CYHAL_PORT_24\000"
.LASF89:
	.ascii	"CYHAL_PORT_25\000"
.LASF102:
	.ascii	"_CYHAL_TRIGGER_AUDIOSS0_TR_I2S_TX_REQ\000"
.LASF91:
	.ascii	"CYHAL_PORT_27\000"
.LASF92:
	.ascii	"CYHAL_PORT_28\000"
.LASF93:
	.ascii	"CYHAL_PORT_29\000"
.LASF338:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW20\000"
.LASF339:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW21\000"
.LASF340:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW22\000"
.LASF341:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW23\000"
.LASF239:
	.ascii	"_CYHAL_TRIGGER_SCB8_TR_TX_REQ\000"
.LASF45:
	.ascii	"CYHAL_RSC_LPCOMP\000"
.LASF205:
	.ascii	"_CYHAL_TRIGGER_SCB0_TR_I2C_SCL_FILTERED\000"
.LASF229:
	.ascii	"_CYHAL_TRIGGER_SCB11_TR_RX_REQ\000"
.LASF328:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_UNDERFLOW10\000"
.LASF107:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DMAC_TR_OUT0\000"
.LASF108:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DMAC_TR_OUT1\000"
.LASF109:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DMAC_TR_OUT2\000"
.LASF110:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DMAC_TR_OUT3\000"
.LASF44:
	.ascii	"CYHAL_RSC_LIN\000"
.LASF63:
	.ascii	"cyhal_resource_inst_t\000"
.LASF219:
	.ascii	"_CYHAL_TRIGGER_SCB1_TR_RX_REQ\000"
.LASF94:
	.ascii	"CYHAL_PORT_30\000"
.LASF95:
	.ascii	"CYHAL_PORT_31\000"
.LASF96:
	.ascii	"CYHAL_PORT_32\000"
.LASF97:
	.ascii	"CYHAL_PORT_33\000"
.LASF98:
	.ascii	"CYHAL_PORT_34\000"
.LASF177:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT0\000"
.LASF178:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT1\000"
.LASF179:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT2\000"
.LASF180:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT3\000"
.LASF181:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT4\000"
.LASF182:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT5\000"
.LASF183:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT6\000"
.LASF184:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT7\000"
.LASF185:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT8\000"
.LASF186:
	.ascii	"_CYHAL_TRIGGER_PERI_TR_IO_INPUT9\000"
.LASF217:
	.ascii	"_CYHAL_TRIGGER_SCB12_TR_I2C_SCL_FILTERED\000"
.LASF350:
	.ascii	"reserve_cycfg_clocks\000"
.LASF241:
	.ascii	"_CYHAL_TRIGGER_SCB10_TR_TX_REQ\000"
.LASF212:
	.ascii	"_CYHAL_TRIGGER_SCB7_TR_I2C_SCL_FILTERED\000"
.LASF54:
	.ascii	"CYHAL_RSC_TCPWM\000"
.LASF351:
	.ascii	"init_cycfg_clocks\000"
.LASF36:
	.ascii	"CYHAL_RSC_DMA\000"
.LASF52:
	.ascii	"CYHAL_RSC_SDHC\000"
.LASF224:
	.ascii	"_CYHAL_TRIGGER_SCB6_TR_RX_REQ\000"
.LASF50:
	.ascii	"CYHAL_RSC_RTC\000"
.LASF14:
	.ascii	"CY_RSLT_TYPE_INFO\000"
.LASF342:
	.ascii	"_CYHAL_TRIGGER_USB_DMA_REQ0\000"
.LASF42:
	.ascii	"CYHAL_RSC_KEYSCAN\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF238:
	.ascii	"_CYHAL_TRIGGER_SCB7_TR_TX_REQ\000"
.LASF13:
	.ascii	"long double\000"
.LASF218:
	.ascii	"_CYHAL_TRIGGER_SCB0_TR_RX_REQ\000"
.LASF206:
	.ascii	"_CYHAL_TRIGGER_SCB1_TR_I2C_SCL_FILTERED\000"
.LASF58:
	.ascii	"CYHAL_RSC_INVALID\000"
.LASF2:
	.ascii	"short int\000"
.LASF232:
	.ascii	"_CYHAL_TRIGGER_SCB1_TR_TX_REQ\000"
.LASF4:
	.ascii	"long int\000"
.LASF39:
	.ascii	"CYHAL_RSC_GPIO\000"
.LASF57:
	.ascii	"CYHAL_RSC_USB\000"
.LASF133:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT22\000"
.LASF140:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT0\000"
.LASF141:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT1\000"
.LASF142:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT2\000"
.LASF143:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT3\000"
.LASF144:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT4\000"
.LASF145:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT5\000"
.LASF146:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT6\000"
.LASF147:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT7\000"
.LASF148:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT8\000"
.LASF149:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW1_TR_OUT9\000"
.LASF111:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT0\000"
.LASF112:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT1\000"
.LASF113:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT2\000"
.LASF114:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT3\000"
.LASF115:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT4\000"
.LASF116:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT5\000"
.LASF117:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT6\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF297:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW11\000"
.LASF298:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW12\000"
.LASF299:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW13\000"
.LASF26:
	.ascii	"CYHAL_SIGNAL_TYPE_LEVEL\000"
.LASF301:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW15\000"
.LASF302:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW16\000"
.LASF303:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW17\000"
.LASF304:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW18\000"
.LASF305:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW19\000"
.LASF48:
	.ascii	"CYHAL_RSC_PDM\000"
.LASF171:
	.ascii	"_CYHAL_TRIGGER_CSD_DSI_SAMPLE_OUT\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF209:
	.ascii	"_CYHAL_TRIGGER_SCB4_TR_I2C_SCL_FILTERED\000"
.LASF35:
	.ascii	"CYHAL_RSC_DAC\000"
.LASF169:
	.ascii	"_CYHAL_TRIGGER_CPUSS_TR_FAULT0\000"
.LASF170:
	.ascii	"_CYHAL_TRIGGER_CPUSS_TR_FAULT1\000"
.LASF28:
	.ascii	"CYHAL_RSC_ADC\000"
.LASF56:
	.ascii	"CYHAL_RSC_UDB\000"
.LASF40:
	.ascii	"CYHAL_RSC_I2S\000"
.LASF306:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW20\000"
.LASF307:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW21\000"
.LASF308:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW22\000"
.LASF309:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW23\000"
.LASF126:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT15\000"
.LASF231:
	.ascii	"_CYHAL_TRIGGER_SCB0_TR_TX_REQ\000"
.LASF71:
	.ascii	"CYHAL_PORT_7\000"
.LASF60:
	.ascii	"type\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF214:
	.ascii	"_CYHAL_TRIGGER_SCB9_TR_I2C_SCL_FILTERED\000"
.LASF223:
	.ascii	"_CYHAL_TRIGGER_SCB5_TR_RX_REQ\000"
.LASF25:
	.ascii	"CY_SYSCLK_DIV_24_5_BIT\000"
.LASF47:
	.ascii	"CYHAL_RSC_OPAMP\000"
.LASF41:
	.ascii	"CYHAL_RSC_I3C\000"
.LASF286:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW0\000"
.LASF287:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW1\000"
.LASF288:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW2\000"
.LASF289:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW3\000"
.LASF290:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW4\000"
.LASF291:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW5\000"
.LASF237:
	.ascii	"_CYHAL_TRIGGER_SCB6_TR_TX_REQ\000"
.LASF293:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW7\000"
.LASF294:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW8\000"
.LASF295:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW9\000"
.LASF51:
	.ascii	"CYHAL_RSC_SCB\000"
.LASF29:
	.ascii	"CYHAL_RSC_ADCMIC\000"
.LASF104:
	.ascii	"_CYHAL_TRIGGER_AUDIOSS0_TR_PDM_RX_REQ\000"
.LASF278:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW0\000"
.LASF279:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW1\000"
.LASF280:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW2\000"
.LASF281:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW3\000"
.LASF282:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW4\000"
.LASF283:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW5\000"
.LASF284:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW6\000"
.LASF34:
	.ascii	"CYHAL_RSC_CRYPTO\000"
.LASF0:
	.ascii	"signed char\000"
.LASF135:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT24\000"
.LASF121:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT10\000"
.LASF122:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT11\000"
.LASF123:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT12\000"
.LASF124:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT13\000"
.LASF125:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT14\000"
.LASF296:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW10\000"
.LASF127:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT16\000"
.LASF128:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT17\000"
.LASF129:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT18\000"
.LASF130:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT19\000"
.LASF208:
	.ascii	"_CYHAL_TRIGGER_SCB3_TR_I2C_SCL_FILTERED\000"
.LASF300:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_OVERFLOW14\000"
.LASF211:
	.ascii	"_CYHAL_TRIGGER_SCB6_TR_I2C_SCL_FILTERED\000"
.LASF233:
	.ascii	"_CYHAL_TRIGGER_SCB2_TR_TX_REQ\000"
.LASF20:
	.ascii	"double\000"
.LASF84:
	.ascii	"CYHAL_PORT_20\000"
.LASF139:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT28\000"
.LASF285:
	.ascii	"_CYHAL_TRIGGER_TCPWM0_TR_OVERFLOW7\000"
.LASF90:
	.ascii	"CYHAL_PORT_26\000"
.LASF32:
	.ascii	"CYHAL_RSC_CLKPATH\000"
.LASF131:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT20\000"
.LASF132:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT21\000"
.LASF33:
	.ascii	"CYHAL_RSC_CLOCK\000"
.LASF134:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT23\000"
.LASF173:
	.ascii	"_CYHAL_TRIGGER_CSD_TR_ADC_DONE\000"
.LASF136:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT25\000"
.LASF137:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT26\000"
.LASF138:
	.ascii	"_CYHAL_TRIGGER_CPUSS_DW0_TR_OUT27\000"
.LASF264:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH10\000"
.LASF353:
	.ascii	"libs\\TARGET_RTT-062S2\\config\\GeneratedSource\\cy"
	.ascii	"cfg_clocks.c\000"
.LASF265:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH11\000"
.LASF266:
	.ascii	"_CYHAL_TRIGGER_TCPWM1_TR_COMPARE_MATCH12\000"
.LASF46:
	.ascii	"CYHAL_RSC_LPTIMER\000"
.LASF230:
	.ascii	"_CYHAL_TRIGGER_SCB12_TR_RX_REQ\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
