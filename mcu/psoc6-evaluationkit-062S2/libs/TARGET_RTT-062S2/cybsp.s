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
	.file	"cybsp.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.cybsp_register_sysclk_pm_callback,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	cybsp_register_sysclk_pm_callback, %function
cybsp_register_sysclk_pm_callback:
.LFB976:
	.file 1 "libs\\TARGET_RTT-062S2\\cybsp.c"
	.loc 1 65 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI2:
	.cfi_def_cfa_register 7
	.loc 1 66 15
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 76 10
	ldr	r0, .L4
	bl	Cy_SysPm_RegisterCallback
	mov	r3, r0
	.loc 1 76 9
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 76 8
	cmp	r3, #0
	beq	.L2
	.loc 1 78 16
	ldr	r3, .L4+4
	str	r3, [r7, #4]
.L2:
	.loc 1 80 12
	ldr	r3, [r7, #4]
	.loc 1 81 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI3:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI4:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	cybsp_sysclk_pm_callback.1
	.word	100794368
	.cfi_endproc
.LFE976:
	.size	cybsp_register_sysclk_pm_callback, .-cybsp_register_sysclk_pm_callback
	.section	.text.cybsp_init,"ax",%progbits
	.align	1
	.global	cybsp_init
	.syntax unified
	.thumb
	.thumb_func
	.type	cybsp_init, %function
cybsp_init:
.LFB977:
	.loc 1 91 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI6:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI7:
	.cfi_def_cfa_register 7
	.loc 1 95 24
	bl	cyhal_hwmgr_init
	str	r0, [r7, #4]
	.loc 1 97 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L7
	.loc 1 99 18
	bl	cyhal_syspm_init
	str	r0, [r7, #4]
.L7:
	.loc 1 103 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L8
	.loc 1 105 9
	movw	r1, #3300
	movs	r0, #0
	bl	cyhal_syspm_set_supply_voltage
.L8:
	.loc 1 120 5
	bl	cycfg_config_init
	.loc 1 124 5
	bl	cycfg_config_reservations
	.loc 1 126 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L9
	.loc 1 131 18
	bl	cybsp_register_sysclk_pm_callback
	str	r0, [r7, #4]
.L9:
	.loc 1 151 12
	ldr	r3, [r7, #4]
	.loc 1 152 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI8:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI9:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE977:
	.size	cybsp_init, .-cybsp_init
	.section	.data.cybsp_sysclk_pm_callback.1,"aw"
	.align	2
	.type	cybsp_sysclk_pm_callback.1, %object
	.size	cybsp_sysclk_pm_callback.1, 28
cybsp_sysclk_pm_callback.1:
	.word	Cy_SysClk_DeepSleepCallback
	.byte	1
	.space	7
	.word	cybsp_sysclk_pm_callback_param.0
	.space	8
	.byte	-1
	.space	3
	.section	.bss.cybsp_sysclk_pm_callback_param.0,"aw",%nobits
	.align	2
	.type	cybsp_sysclk_pm_callback_param.0, %object
	.size	cybsp_sysclk_pm_callback_param.0, 8
cybsp_sysclk_pm_callback_param.0:
	.space	8
	.text
.Letext0:
	.file 2 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_result.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_syspm.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\include/cyhal_syspm.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x58a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x58
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x66
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x80
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x4
	.byte	0x90
	.byte	0x1
	.4byte	0xee
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x7
	.byte	0x2
	.4byte	0x72
	.byte	0x4
	.byte	0xc5
	.byte	0x1
	.4byte	0x312
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x33
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x3b
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x3f
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x41
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x45
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x47
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF62
	.2byte	0x100
	.uleb128 0x8
	.4byte	.LASF63
	.2byte	0x180
	.uleb128 0x8
	.4byte	.LASF64
	.2byte	0x181
	.uleb128 0x8
	.4byte	.LASF65
	.2byte	0x182
	.uleb128 0x8
	.4byte	.LASF66
	.2byte	0x183
	.uleb128 0x8
	.4byte	.LASF67
	.2byte	0x1a0
	.uleb128 0x8
	.4byte	.LASF68
	.2byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF69
	.2byte	0x1a2
	.uleb128 0x8
	.4byte	.LASF70
	.2byte	0x1a3
	.uleb128 0x8
	.4byte	.LASF71
	.2byte	0x1b8
	.uleb128 0x8
	.4byte	.LASF72
	.2byte	0x1b9
	.uleb128 0x8
	.4byte	.LASF73
	.2byte	0x1ba
	.uleb128 0x8
	.4byte	.LASF74
	.2byte	0x1bb
	.uleb128 0x8
	.4byte	.LASF75
	.2byte	0x1c0
	.uleb128 0x8
	.4byte	.LASF76
	.2byte	0x1c1
	.uleb128 0x8
	.4byte	.LASF77
	.2byte	0x1c2
	.uleb128 0x8
	.4byte	.LASF78
	.2byte	0x1c3
	.uleb128 0x8
	.4byte	.LASF79
	.2byte	0x1c4
	.uleb128 0x8
	.4byte	.LASF80
	.2byte	0x1c5
	.uleb128 0x8
	.4byte	.LASF81
	.2byte	0x1c6
	.uleb128 0x8
	.4byte	.LASF82
	.2byte	0x1c7
	.uleb128 0x8
	.4byte	.LASF83
	.2byte	0x1c8
	.uleb128 0x8
	.4byte	.LASF84
	.2byte	0x1c9
	.uleb128 0x8
	.4byte	.LASF85
	.2byte	0x200
	.uleb128 0x8
	.4byte	.LASF86
	.2byte	0x201
	.uleb128 0x8
	.4byte	.LASF87
	.2byte	0x202
	.uleb128 0x8
	.4byte	.LASF88
	.2byte	0x203
	.uleb128 0x8
	.4byte	.LASF89
	.2byte	0x204
	.uleb128 0x8
	.4byte	.LASF90
	.2byte	0x205
	.uleb128 0x8
	.4byte	.LASF91
	.2byte	0x206
	.uleb128 0x8
	.4byte	.LASF92
	.2byte	0x207
	.uleb128 0x8
	.4byte	.LASF93
	.2byte	0x208
	.uleb128 0x8
	.4byte	.LASF94
	.2byte	0x209
	.uleb128 0x8
	.4byte	.LASF95
	.2byte	0x20a
	.uleb128 0x8
	.4byte	.LASF96
	.2byte	0x20b
	.uleb128 0x8
	.4byte	.LASF97
	.2byte	0x20c
	.uleb128 0x8
	.4byte	.LASF98
	.2byte	0x20d
	.uleb128 0x8
	.4byte	.LASF99
	.2byte	0x20e
	.uleb128 0x8
	.4byte	.LASF100
	.2byte	0x20f
	.uleb128 0x8
	.4byte	.LASF101
	.2byte	0x250
	.uleb128 0x8
	.4byte	.LASF102
	.2byte	0x251
	.byte	0
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x187
	.byte	0x12
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF104
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF105
	.uleb128 0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x29
	.byte	0x5
	.2byte	0x8c3
	.byte	0x1
	.4byte	0x379
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.4byte	0x420001
	.uleb128 0xb
	.4byte	.LASF108
	.4byte	0x420002
	.uleb128 0xb
	.4byte	.LASF109
	.4byte	0x420003
	.uleb128 0xb
	.4byte	.LASF110
	.4byte	0x420004
	.uleb128 0xb
	.4byte	.LASF111
	.4byte	0x420005
	.uleb128 0xb
	.4byte	.LASF112
	.4byte	0x4200ff
	.byte	0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x8cc
	.byte	0x3
	.4byte	0x32d
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x5
	.2byte	0x99d
	.byte	0x1
	.4byte	0x3b4
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x9ad
	.byte	0x3
	.4byte	0x386
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x5
	.2byte	0xb2d
	.byte	0x1
	.4byte	0x3e9
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x5
	.2byte	0xb44
	.byte	0x3
	.4byte	0x3c1
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.2byte	0xb74
	.byte	0x9
	.4byte	0x421
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x5
	.2byte	0xb76
	.byte	0xb
	.4byte	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x5
	.2byte	0xb79
	.byte	0xb
	.4byte	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x5
	.2byte	0xb7c
	.byte	0x3
	.4byte	0x3f6
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x5
	.2byte	0xb7f
	.byte	0x20
	.4byte	0x43b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x441
	.uleb128 0xf
	.byte	0x1
	.4byte	0x379
	.4byte	0x456
	.uleb128 0x10
	.4byte	0x456
	.uleb128 0x10
	.4byte	0x3e9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x421
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0x1c
	.byte	0x5
	.2byte	0xb82
	.byte	0x10
	.4byte	0x4db
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x5
	.2byte	0xb84
	.byte	0x16
	.4byte	0x42e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x5
	.2byte	0xb85
	.byte	0x21
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x5
	.2byte	0xb86
	.byte	0xe
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x5
	.2byte	0xb8e
	.byte	0x25
	.4byte	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x5
	.2byte	0xb91
	.byte	0x23
	.4byte	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x5
	.2byte	0xb97
	.byte	0x23
	.4byte	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x5
	.2byte	0xb9c
	.byte	0xd
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x45c
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x5
	.2byte	0xba2
	.byte	0x3
	.4byte	0x45c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF137
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x6
	.byte	0xed
	.byte	0x1
	.4byte	0x510
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.byte	0x1
	.4byte	0x312
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x53f
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x1
	.byte	0x5f
	.byte	0xf
	.4byte	0x312
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x1
	.byte	0x40
	.byte	0x12
	.byte	0x1
	.4byte	0x312
	.4byte	.LFB976
	.4byte	.LFE976
	.4byte	.LLST0
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x1
	.byte	0x42
	.byte	0xf
	.4byte	0x312
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0x43
	.byte	0x2b
	.4byte	0x421
	.byte	0x5
	.byte	0x3
	.4byte	cybsp_sysclk_pm_callback_param.0
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x44
	.byte	0x24
	.4byte	0x4e1
	.byte	0x5
	.byte	0x3
	.4byte	cybsp_sysclk_pm_callback.1
	.byte	0
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI9
	.4byte	.LFE977
	.2byte	0x2
	.byte	0x7d
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
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI4
	.4byte	.LFE976
	.2byte	0x2
	.byte	0x7d
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
.LASF71:
	.ascii	"CY_RSLT_MODULE_BOARD_SHIELD_028_EPD\000"
.LASF119:
	.ascii	"cy_en_syspm_callback_type_t\000"
.LASF64:
	.ascii	"CY_RSLT_MODULE_ABSTRACTION_FS\000"
.LASF138:
	.ascii	"CYHAL_VOLTAGE_SUPPLY_VDDA\000"
.LASF107:
	.ascii	"CY_SYSPM_BAD_PARAM\000"
.LASF77:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_THERMISTOR\000"
.LASF61:
	.ascii	"CY_RSLT_MODULE_DRIVER_WHD\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF24:
	.ascii	"CY_RSLT_MODULE_DRIVER_USB_DEV\000"
.LASF33:
	.ascii	"CY_RSLT_MODULE_DRIVER_GPIO\000"
.LASF130:
	.ascii	"type\000"
.LASF95:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_SECURE_SOCKETS\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF101:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_KVSTORE\000"
.LASF135:
	.ascii	"order\000"
.LASF67:
	.ascii	"CY_RSLT_MODULE_BOARD_LIB_RETARGET_IO\000"
.LASF44:
	.ascii	"CY_RSLT_MODULE_DRIVER_SCB\000"
.LASF56:
	.ascii	"CY_RSLT_MODULE_DRIVER_CSD\000"
.LASF57:
	.ascii	"CY_RSLT_MODULE_DRIVER_SMARTIO\000"
.LASF31:
	.ascii	"CY_RSLT_MODULE_DRIVER_FLASH\000"
.LASF141:
	.ascii	"cybsp_sysclk_pm_callback_param\000"
.LASF30:
	.ascii	"CY_RSLT_MODULE_DRIVER_DMA\000"
.LASF1:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF115:
	.ascii	"CY_SYSPM_DEEPSLEEP\000"
.LASF75:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_BMI160\000"
.LASF9:
	.ascii	"long int\000"
.LASF66:
	.ascii	"CY_RSLT_MODULE_ABSTRACTION_OS\000"
.LASF73:
	.ascii	"CY_RSLT_MODULE_BOARD_SHIELD_032\000"
.LASF79:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_ST7789V\000"
.LASF27:
	.ascii	"CY_RSLT_MODULE_DRIVER_SYSPM\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF68:
	.ascii	"CY_RSLT_MODULE_BOARD_LIB_RGB_LED\000"
.LASF105:
	.ascii	"double\000"
.LASF25:
	.ascii	"CY_RSLT_MODULE_DRIVER_CTB\000"
.LASF103:
	.ascii	"cy_rslt_t\000"
.LASF22:
	.ascii	"CY_RSLT_MODULE_DRIVER_DFU\000"
.LASF127:
	.ascii	"cy_stc_syspm_callback_params_t\000"
.LASF146:
	.ascii	"cy_stc_syspm_callback\000"
.LASF45:
	.ascii	"CY_RSLT_MODULE_DRIVER_SMIF\000"
.LASF41:
	.ascii	"CY_RSLT_MODULE_DRIVER_LPCOMP\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF74:
	.ascii	"CY_RSLT_MODULE_BOARD_SHIELD_028_SENSE\000"
.LASF110:
	.ascii	"CY_SYSPM_CANCELED\000"
.LASF52:
	.ascii	"CY_RSLT_MODULE_DRIVER_SD_HOST\000"
.LASF60:
	.ascii	"CY_RSLT_MODULE_DRIVER_MSC\000"
.LASF109:
	.ascii	"CY_SYSPM_INVALID_STATE\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF108:
	.ascii	"CY_SYSPM_TIMEOUT\000"
.LASF147:
	.ascii	"cybsp_init\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF144:
	.ascii	"libs\\TARGET_RTT-062S2\\cybsp.c\000"
.LASF59:
	.ascii	"CY_RSLT_MODULE_DRIVER_CANFD\000"
.LASF81:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_AK4954A\000"
.LASF131:
	.ascii	"skipMode\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_E2271CS021\000"
.LASF129:
	.ascii	"callback\000"
.LASF35:
	.ascii	"CY_RSLT_MODULE_DRIVER_CTDAC\000"
.LASF23:
	.ascii	"CY_RSLT_MODULE_DRIVER_CAPSENSE\000"
.LASF133:
	.ascii	"prevItm\000"
.LASF70:
	.ascii	"CY_RSLT_MODULE_BOARD_LIB_WHD_INTEGRATION\000"
.LASF132:
	.ascii	"callbackParams\000"
.LASF18:
	.ascii	"CY_RSLT_TYPE_WARNING\000"
.LASF123:
	.ascii	"CY_SYSPM_AFTER_TRANSITION\000"
.LASF125:
	.ascii	"base\000"
.LASF19:
	.ascii	"CY_RSLT_TYPE_ERROR\000"
.LASF117:
	.ascii	"CY_SYSPM_LP\000"
.LASF86:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_AWS\000"
.LASF134:
	.ascii	"nextItm\000"
.LASF82:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_BMX160\000"
.LASF47:
	.ascii	"CY_RSLT_MODULE_DRIVER_PROT\000"
.LASF72:
	.ascii	"CY_RSLT_MODULE_BOARD_SHIELD_028_TFT\000"
.LASF43:
	.ascii	"CY_RSLT_MODULE_DRIVER_RTC\000"
.LASF118:
	.ascii	"CY_SYSPM_ULP\000"
.LASF36:
	.ascii	"CY_RSLT_MODULE_DRIVER_EFUSE\000"
.LASF112:
	.ascii	"CY_SYSPM_FAIL\000"
.LASF114:
	.ascii	"CY_SYSPM_SLEEP\000"
.LASF122:
	.ascii	"CY_SYSPM_BEFORE_TRANSITION\000"
.LASF49:
	.ascii	"CY_RSLT_MODULE_DRIVER_WDT\000"
.LASF100:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_ML\000"
.LASF91:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_ENTERPRISE_SECURITY\000"
.LASF116:
	.ascii	"CY_SYSPM_HIBERNATE\000"
.LASF55:
	.ascii	"CY_RSLT_MODULE_DRIVER_SEGLCD\000"
.LASF124:
	.ascii	"cy_en_syspm_callback_mode_t\000"
.LASF78:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_SSD1306\000"
.LASF50:
	.ascii	"CY_RSLT_MODULE_DRIVER_MCWDT\000"
.LASF104:
	.ascii	"float\000"
.LASF58:
	.ascii	"CY_RSLT_MODULE_DRIVER_CSDIDAC\000"
.LASF42:
	.ascii	"CY_RSLT_MODULE_DRIVER_PDM_PCM\000"
.LASF97:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_LWIP_WHD_PORT\000"
.LASF28:
	.ascii	"CY_RSLT_MODULE_DRIVER_SYSLIB\000"
.LASF94:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_TLS\000"
.LASF40:
	.ascii	"CY_RSLT_MODULE_DRIVER_IPC\000"
.LASF139:
	.ascii	"CYHAL_VOLTAGE_SUPPLY_MAX\000"
.LASF48:
	.ascii	"CY_RSLT_MODULE_DRIVER_TRIGMUX\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF128:
	.ascii	"Cy_SysPmCallback\000"
.LASF111:
	.ascii	"CY_SYSPM_SYSCALL_PENDING\000"
.LASF88:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_LINKED_LIST\000"
.LASF29:
	.ascii	"CY_RSLT_MODULE_DRIVER_SYSCLK\000"
.LASF5:
	.ascii	"short int\000"
.LASF80:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_LIGHT_SENSOR\000"
.LASF87:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_JSON\000"
.LASF34:
	.ascii	"CY_RSLT_MODULE_DRIVER_SYSANALOG\000"
.LASF39:
	.ascii	"CY_RSLT_MODULE_DRIVER_I2S\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"CY_RSLT_MODULE_DRIVER_TCPWM\000"
.LASF137:
	.ascii	"_Bool\000"
.LASF2:
	.ascii	"long double\000"
.LASF13:
	.ascii	"char\000"
.LASF89:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_COMMAND_CONSOLE\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF20:
	.ascii	"CY_RSLT_TYPE_FATAL\000"
.LASF148:
	.ascii	"cybsp_register_sysclk_pm_callback\000"
.LASF90:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_HTTP_SERVER\000"
.LASF93:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_MW\000"
.LASF121:
	.ascii	"CY_SYSPM_CHECK_FAIL\000"
.LASF92:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_TCPIP\000"
.LASF85:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_MNDS\000"
.LASF126:
	.ascii	"context\000"
.LASF37:
	.ascii	"CY_RSLT_MODULE_DRIVER_EM_EEPROM\000"
.LASF62:
	.ascii	"CY_RSLT_MODULE_ABSTRACTION_HAL\000"
.LASF17:
	.ascii	"CY_RSLT_TYPE_INFO\000"
.LASF26:
	.ascii	"CY_RSLT_MODULE_DRIVER_CRYPTO\000"
.LASF142:
	.ascii	"cybsp_sysclk_pm_callback\000"
.LASF32:
	.ascii	"CY_RSLT_MODULE_DRIVER_SYSINT\000"
.LASF54:
	.ascii	"CY_RSLT_MODULE_DRIVER_DMAC\000"
.LASF136:
	.ascii	"cy_stc_syspm_callback_t\000"
.LASF102:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_LIN\000"
.LASF21:
	.ascii	"CY_RSLT_MODULE_DRIVER_SAR\000"
.LASF51:
	.ascii	"CY_RSLT_MODULE_DRIVER_LVD\000"
.LASF113:
	.ascii	"cy_en_syspm_status_t\000"
.LASF96:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_WCM\000"
.LASF69:
	.ascii	"CY_RSLT_MODULE_BOARD_LIB_SERIAL_FLASH\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF53:
	.ascii	"CY_RSLT_MODULE_DRIVER_USBFS\000"
.LASF106:
	.ascii	"CY_SYSPM_SUCCESS\000"
.LASF120:
	.ascii	"CY_SYSPM_CHECK_READY\000"
.LASF145:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF65:
	.ascii	"CY_RSLT_MODULE_ABSTRACTION_RESOURCE\000"
.LASF143:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF98:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_OTA_UPDATE\000"
.LASF83:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_DPS3XX\000"
.LASF84:
	.ascii	"CY_RSLT_MODULE_BOARD_HARDWARE_WM8960\000"
.LASF38:
	.ascii	"CY_RSLT_MODULE_DRIVER_PROFILE\000"
.LASF140:
	.ascii	"result\000"
.LASF63:
	.ascii	"CY_RSLT_MODULE_ABSTRACTION_BSP\000"
.LASF99:
	.ascii	"CY_RSLT_MODULE_MIDDLEWARE_HTTP_CLIENT\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
