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
	.file	"cyhal_system.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.CY_HALT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	CY_HALT, %function
CY_HALT:
.LFB133:
	.file 1 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_utils.h"
	.loc 1 49 1
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
	.loc 1 50 5
	.syntax unified
@ 50 "libraries\IFX_PSOC6_HAL\core-lib\include/cy_utils.h" 1
	    bkpt    1
@ 0 "" 2
	.loc 1 51 1
	.thumb
	.syntax unified
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
	.cfi_endproc
.LFE133:
	.size	CY_HALT, .-CY_HALT
	.section	.text.Cy_SysLib_Rtos_Delay,"ax",%progbits
	.align	1
	.global	Cy_SysLib_Rtos_Delay
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SysLib_Rtos_Delay, %function
Cy_SysLib_Rtos_Delay:
.LFB976:
	.file 2 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\source\\cyhal_system.c"
	.loc 2 56 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI5:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI6:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 57 24
	ldr	r0, [r7, #4]
	bl	cyhal_system_delay_ms
	str	r0, [r7, #12]
	.loc 2 58 12
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L4
	.loc 2 58 54 discriminator 1
	bl	CY_HALT
.L4:
	.loc 2 60 1
	nop
	adds	r7, r7, #16
.LCFI7:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI8:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE976:
	.size	Cy_SysLib_Rtos_Delay, .-Cy_SysLib_Rtos_Delay
	.section	.text.cyhal_system_delay_ms,"ax",%progbits
	.align	1
	.global	cyhal_system_delay_ms
	.syntax unified
	.thumb
	.thumb_func
	.type	cyhal_system_delay_ms, %function
cyhal_system_delay_ms:
.LFB977:
	.loc 2 64 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI10:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 70 5
	ldr	r0, [r7, #4]
	bl	Cy_SysLib_Delay
	.loc 2 71 12
	movs	r3, #0
	.loc 2 73 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI12:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI13:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE977:
	.size	cyhal_system_delay_ms, .-cyhal_system_delay_ms
	.section	.text.cyhal_system_get_reset_reason,"ax",%progbits
	.align	1
	.global	cyhal_system_get_reset_reason
	.syntax unified
	.thumb
	.thumb_func
	.type	cyhal_system_get_reset_reason, %function
cyhal_system_get_reset_reason:
.LFB978:
	.loc 2 76 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI15:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI16:
	.cfi_def_cfa_register 7
	.loc 2 77 27
	bl	Cy_SysLib_GetResetReason
	str	r0, [r7]
	.loc 2 78 26
	movs	r3, #0
	strb	r3, [r7, #7]
	.loc 2 80 19
	ldr	r3, [r7]
	and	r3, r3, #16
	.loc 2 80 8
	cmp	r3, #0
	beq	.L8
	.loc 2 81 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #8
	strb	r3, [r7, #7]
.L8:
	.loc 2 82 19
	ldr	r3, [r7]
	and	r3, r3, #1
	.loc 2 82 8
	cmp	r3, #0
	beq	.L9
	.loc 2 83 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #1
	strb	r3, [r7, #7]
.L9:
	.loc 2 89 19
	ldr	r3, [r7]
	and	r3, r3, #2
	.loc 2 89 8
	cmp	r3, #0
	beq	.L10
	.loc 2 90 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #2
	strb	r3, [r7, #7]
.L10:
	.loc 2 91 19
	ldr	r3, [r7]
	and	r3, r3, #4
	.loc 2 91 8
	cmp	r3, #0
	beq	.L11
	.loc 2 92 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #4
	strb	r3, [r7, #7]
.L11:
	.loc 2 93 9
	ldr	r3, [r7]
	.loc 2 93 8
	cmp	r3, #0
	bge	.L12
	.loc 2 94 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #16
	strb	r3, [r7, #7]
.L12:
	.loc 2 95 20
	ldr	r3, [r7]
	and	r3, r3, #65536
	.loc 2 95 8
	cmp	r3, #0
	beq	.L13
	.loc 2 96 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #64
	strb	r3, [r7, #7]
.L13:
	.loc 2 97 20
	ldr	r3, [r7]
	and	r3, r3, #131072
	.loc 2 97 8
	cmp	r3, #0
	beq	.L14
	.loc 2 98 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #64
	strb	r3, [r7, #7]
.L14:
	.loc 2 99 57
	ldr	r3, [r7]
	and	r3, r3, #480
	.loc 2 99 8
	cmp	r3, #0
	beq	.L15
	.loc 2 100 16
	ldrb	r3, [r7, #7]
	orr	r3, r3, #1
	strb	r3, [r7, #7]
.L15:
	.loc 2 110 12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	.loc 2 111 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI17:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI18:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE978:
	.size	cyhal_system_get_reset_reason, .-cyhal_system_get_reset_reason
	.section	.text.cyhal_system_set_isr,"ax",%progbits
	.align	1
	.global	cyhal_system_set_isr
	.syntax unified
	.thumb
	.thumb_func
	.type	cyhal_system_set_isr, %function
cyhal_system_set_isr:
.LFB979:
	.loc 2 114 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI20:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI21:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 2 121 20
	ldr	r3, [r7, #12]
	sxth	r3, r3
	.loc 2 116 21
	strh	r3, [r7, #16]	@ movhi
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r7, #20]
	.loc 2 128 12
	add	r3, r7, #16
	ldr	r1, [r7]
	mov	r0, r3
	bl	Cy_SysInt_Init
	mov	r3, r0
	.loc 2 129 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI22:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI23:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE979:
	.size	cyhal_system_set_isr, .-cyhal_system_set_isr
	.text
.Letext0:
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_result.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/cy8c624alqi_s2d42.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_syslib.h"
	.file 8 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_sysint.h"
	.file 9 "libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\include/cyhal_system.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x705
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0xc
	.4byte	.LASF228
	.4byte	.LASF229
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x187
	.byte	0x12
	.4byte	0xab
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x5
	.byte	0x2
	.4byte	0x43
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.4byte	0x50d
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 -15
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 -14
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 -13
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 -11
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 -10
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 -5
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 -4
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 -2
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x2b
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x2d
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2e
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x2f
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x31
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x33
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x35
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x36
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x37
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x39
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x3a
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x3b
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x3d
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x3e
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x3f
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x41
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x42
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x43
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x45
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x46
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x47
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x49
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x4a
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x4b
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x4d
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x4e
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x4f
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x51
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x52
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x55
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x56
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x57
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x59
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x5a
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x5b
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF120
	.byte	0x5d
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0x5e
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x5f
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x61
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x62
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x63
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x65
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x66
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x67
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x69
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x6a
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x6b
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x6e
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x6f
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x70
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x71
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x72
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x73
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x75
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x76
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x77
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x79
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x7a
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x7b
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x7d
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x7e
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x7f
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x82
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x83
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0x84
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x85
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0x86
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0x87
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0x88
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x89
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x8a
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0x8b
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0x8c
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0x8d
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0x8e
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0x8f
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0x90
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x91
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x92
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0x93
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x94
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0x95
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x96
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0x97
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x98
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0x99
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0x9a
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0x9b
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0x9d
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0x9e
	.uleb128 0x8
	.4byte	.LASF186
	.byte	0x9f
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0xa0
	.uleb128 0x8
	.4byte	.LASF188
	.byte	0xa1
	.uleb128 0x8
	.4byte	.LASF189
	.byte	0xa2
	.uleb128 0x8
	.4byte	.LASF190
	.byte	0xa3
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0xa4
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0xa5
	.uleb128 0x8
	.4byte	.LASF193
	.byte	0xa6
	.uleb128 0x8
	.4byte	.LASF194
	.byte	0xa7
	.uleb128 0x9
	.4byte	.LASF195
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF196
	.byte	0x6
	.2byte	0x102
	.byte	0x3
	.4byte	0xcb
	.uleb128 0x5
	.4byte	.LASF197
	.byte	0x7
	.2byte	0x273
	.byte	0x11
	.4byte	0x527
	.uleb128 0xa
	.byte	0x4
	.4byte	0x52d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF198
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF199
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF200
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.2byte	0x198
	.byte	0x9
	.4byte	0x56f
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x19c
	.byte	0xf
	.4byte	0x50d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0x8
	.2byte	0x1a1
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x1a2
	.byte	0x3
	.4byte	0x544
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF204
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0x66
	.byte	0x1
	.4byte	0x5c8
	.uleb128 0x8
	.4byte	.LASF205
	.byte	0
	.uleb128 0x8
	.4byte	.LASF206
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF207
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF208
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF209
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF210
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF211
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF212
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF213
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x9
	.byte	0x70
	.byte	0x3
	.4byte	0x583
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x527
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF220
	.byte	0x2
	.byte	0x71
	.byte	0xb
	.byte	0x1
	.4byte	0xb7
	.4byte	.LFB979
	.4byte	.LFE979
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x64b
	.uleb128 0xf
	.4byte	.LASF216
	.byte	0x2
	.byte	0x71
	.byte	0x28
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF217
	.byte	0x2
	.byte	0x71
	.byte	0x39
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF218
	.byte	0x2
	.byte	0x71
	.byte	0x4a
	.4byte	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xf
	.4byte	.LASF219
	.byte	0x2
	.byte	0x71
	.byte	0x66
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.ascii	"cfg\000"
	.byte	0x2
	.byte	0x74
	.byte	0x15
	.4byte	0x56f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF221
	.byte	0x2
	.byte	0x4b
	.byte	0x16
	.byte	0x1
	.4byte	0x5c8
	.4byte	.LFB978
	.4byte	.LFE978
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x689
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0x2
	.byte	0x4d
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0x2
	.byte	0x4e
	.byte	0x1a
	.4byte	0x5c8
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF224
	.byte	0x2
	.byte	0x3f
	.byte	0xb
	.byte	0x1
	.4byte	0xb7
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x6b8
	.uleb128 0xf
	.4byte	.LASF225
	.byte	0x2
	.byte	0x3f
	.byte	0x2a
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF230
	.byte	0x2
	.byte	0x37
	.byte	0x6
	.byte	0x1
	.4byte	.LFB976
	.4byte	.LFE976
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x6f2
	.uleb128 0xf
	.4byte	.LASF225
	.byte	0x2
	.byte	0x37
	.byte	0x24
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0x2
	.byte	0x39
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF231
	.byte	0x1
	.byte	0x30
	.byte	0x14
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2e
	.byte	0
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
.LLST4:
	.4byte	.LFB979
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI20
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI23
	.4byte	.LFE979
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB978
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI18
	.4byte	.LFE978
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB977
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI13
	.4byte	.LFE977
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB976
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
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI8
	.4byte	.LFE976
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
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
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB976
	.4byte	.LFE976-.LFB976
	.4byte	.LFB977
	.4byte	.LFE977-.LFB977
	.4byte	.LFB978
	.4byte	.LFE978-.LFB978
	.4byte	.LFB979
	.4byte	.LFE979-.LFB979
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB976
	.4byte	.LFE976
	.4byte	.LFB977
	.4byte	.LFE977
	.4byte	.LFB978
	.4byte	.LFE978
	.4byte	.LFB979
	.4byte	.LFE979
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF213:
	.ascii	"CYHAL_SYSTEM_RESET_PROTECTION\000"
.LASF173:
	.ascii	"tcpwm_1_interrupts_15_IRQn\000"
.LASF128:
	.ascii	"cpuss_interrupts_dw1_16_IRQn\000"
.LASF231:
	.ascii	"CY_HALT\000"
.LASF29:
	.ascii	"ioss_interrupts_gpio_2_IRQn\000"
.LASF71:
	.ascii	"scb_5_interrupt_IRQn\000"
.LASF51:
	.ascii	"cpuss_interrupts_ipc_1_IRQn\000"
.LASF103:
	.ascii	"cpuss_interrupts_dw0_20_IRQn\000"
.LASF17:
	.ascii	"Reset_IRQn\000"
.LASF84:
	.ascii	"cpuss_interrupts_dw0_1_IRQn\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF66:
	.ascii	"scb_0_interrupt_IRQn\000"
.LASF162:
	.ascii	"tcpwm_1_interrupts_4_IRQn\000"
.LASF166:
	.ascii	"tcpwm_1_interrupts_8_IRQn\000"
.LASF54:
	.ascii	"cpuss_interrupts_ipc_4_IRQn\000"
.LASF61:
	.ascii	"cpuss_interrupts_ipc_11_IRQn\000"
.LASF119:
	.ascii	"cpuss_interrupts_dw1_7_IRQn\000"
.LASF100:
	.ascii	"cpuss_interrupts_dw0_17_IRQn\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF202:
	.ascii	"intrPriority\000"
.LASF168:
	.ascii	"tcpwm_1_interrupts_10_IRQn\000"
.LASF221:
	.ascii	"cyhal_system_get_reset_reason\000"
.LASF137:
	.ascii	"cpuss_interrupts_dw1_25_IRQn\000"
.LASF27:
	.ascii	"ioss_interrupts_gpio_0_IRQn\000"
.LASF101:
	.ascii	"cpuss_interrupts_dw0_18_IRQn\000"
.LASF36:
	.ascii	"ioss_interrupts_gpio_9_IRQn\000"
.LASF174:
	.ascii	"tcpwm_1_interrupts_16_IRQn\000"
.LASF129:
	.ascii	"cpuss_interrupts_dw1_17_IRQn\000"
.LASF148:
	.ascii	"cpuss_interrupts_cm4_cti_0_IRQn\000"
.LASF0:
	.ascii	"signed char\000"
.LASF82:
	.ascii	"cpuss_interrupts_dmac_3_IRQn\000"
.LASF155:
	.ascii	"tcpwm_0_interrupts_5_IRQn\000"
.LASF76:
	.ascii	"scb_11_interrupt_IRQn\000"
.LASF194:
	.ascii	"sdhc_1_interrupt_general_IRQn\000"
.LASF104:
	.ascii	"cpuss_interrupts_dw0_21_IRQn\000"
.LASF183:
	.ascii	"audioss_0_interrupt_i2s_IRQn\000"
.LASF85:
	.ascii	"cpuss_interrupts_dw0_2_IRQn\000"
.LASF72:
	.ascii	"scb_6_interrupt_IRQn\000"
.LASF44:
	.ascii	"lpcomp_interrupt_IRQn\000"
.LASF132:
	.ascii	"cpuss_interrupts_dw1_20_IRQn\000"
.LASF158:
	.ascii	"tcpwm_1_interrupts_0_IRQn\000"
.LASF96:
	.ascii	"cpuss_interrupts_dw0_13_IRQn\000"
.LASF167:
	.ascii	"tcpwm_1_interrupts_9_IRQn\000"
.LASF55:
	.ascii	"cpuss_interrupts_ipc_5_IRQn\000"
.LASF190:
	.ascii	"usb_interrupt_lo_IRQn\000"
.LASF62:
	.ascii	"cpuss_interrupts_ipc_12_IRQn\000"
.LASF120:
	.ascii	"cpuss_interrupts_dw1_8_IRQn\000"
.LASF201:
	.ascii	"intrSrc\000"
.LASF169:
	.ascii	"tcpwm_1_interrupts_11_IRQn\000"
.LASF176:
	.ascii	"tcpwm_1_interrupts_18_IRQn\000"
.LASF28:
	.ascii	"ioss_interrupts_gpio_1_IRQn\000"
.LASF42:
	.ascii	"ioss_interrupt_gpio_IRQn\000"
.LASF46:
	.ascii	"srss_interrupt_mcwdt_0_IRQn\000"
.LASF200:
	.ascii	"double\000"
.LASF81:
	.ascii	"cpuss_interrupts_dmac_2_IRQn\000"
.LASF15:
	.ascii	"cy_rslt_t\000"
.LASF133:
	.ascii	"cpuss_interrupts_dw1_21_IRQn\000"
.LASF130:
	.ascii	"cpuss_interrupts_dw1_18_IRQn\000"
.LASF208:
	.ascii	"CYHAL_SYSTEM_RESET_DEEPSLEEP_FAULT\000"
.LASF89:
	.ascii	"cpuss_interrupts_dw0_6_IRQn\000"
.LASF149:
	.ascii	"cpuss_interrupts_cm4_cti_1_IRQn\000"
.LASF206:
	.ascii	"CYHAL_SYSTEM_RESET_WDT\000"
.LASF73:
	.ascii	"scb_7_interrupt_IRQn\000"
.LASF156:
	.ascii	"tcpwm_0_interrupts_6_IRQn\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF21:
	.ascii	"BusFault_IRQn\000"
.LASF105:
	.ascii	"cpuss_interrupts_dw0_22_IRQn\000"
.LASF192:
	.ascii	"sdhc_0_interrupt_general_IRQn\000"
.LASF161:
	.ascii	"tcpwm_1_interrupts_3_IRQn\000"
.LASF115:
	.ascii	"cpuss_interrupts_dw1_3_IRQn\000"
.LASF9:
	.ascii	"long long int\000"
.LASF68:
	.ascii	"scb_2_interrupt_IRQn\000"
.LASF217:
	.ascii	"irq_src\000"
.LASF97:
	.ascii	"cpuss_interrupts_dw0_14_IRQn\000"
.LASF32:
	.ascii	"ioss_interrupts_gpio_5_IRQn\000"
.LASF56:
	.ascii	"cpuss_interrupts_ipc_6_IRQn\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"ioss_interrupts_gpio_13_IRQn\000"
.LASF170:
	.ascii	"tcpwm_1_interrupts_12_IRQn\000"
.LASF20:
	.ascii	"MemoryManagement_IRQn\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF47:
	.ascii	"srss_interrupt_mcwdt_1_IRQn\000"
.LASF151:
	.ascii	"tcpwm_0_interrupts_1_IRQn\000"
.LASF109:
	.ascii	"cpuss_interrupts_dw0_26_IRQn\000"
.LASF189:
	.ascii	"usb_interrupt_med_IRQn\000"
.LASF95:
	.ascii	"cpuss_interrupts_dw0_12_IRQn\000"
.LASF141:
	.ascii	"cpuss_interrupts_fault_0_IRQn\000"
.LASF23:
	.ascii	"SVCall_IRQn\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF49:
	.ascii	"srss_interrupt_IRQn\000"
.LASF147:
	.ascii	"cpuss_interrupts_cm0_cti_1_IRQn\000"
.LASF222:
	.ascii	"pdl_reason\000"
.LASF163:
	.ascii	"tcpwm_1_interrupts_5_IRQn\000"
.LASF212:
	.ascii	"CYHAL_SYSTEM_RESET_SYS_CLK_ERR\000"
.LASF116:
	.ascii	"cpuss_interrupts_dw1_4_IRQn\000"
.LASF144:
	.ascii	"cpuss_interrupt_fm_IRQn\000"
.LASF218:
	.ascii	"priority\000"
.LASF191:
	.ascii	"sdhc_0_interrupt_wakeup_IRQn\000"
.LASF134:
	.ascii	"cpuss_interrupts_dw1_22_IRQn\000"
.LASF98:
	.ascii	"cpuss_interrupts_dw0_15_IRQn\000"
.LASF33:
	.ascii	"ioss_interrupts_gpio_6_IRQn\000"
.LASF41:
	.ascii	"ioss_interrupts_gpio_14_IRQn\000"
.LASF171:
	.ascii	"tcpwm_1_interrupts_13_IRQn\000"
.LASF126:
	.ascii	"cpuss_interrupts_dw1_14_IRQn\000"
.LASF219:
	.ascii	"handler\000"
.LASF185:
	.ascii	"audioss_1_interrupt_i2s_IRQn\000"
.LASF229:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF181:
	.ascii	"tcpwm_1_interrupts_23_IRQn\000"
.LASF228:
	.ascii	"libraries\\IFX_PSOC6_HAL\\mtb-hal-cat1\\source\\cyh"
	.ascii	"al_system.c\000"
.LASF152:
	.ascii	"tcpwm_0_interrupts_2_IRQn\000"
.LASF114:
	.ascii	"cpuss_interrupts_dw1_2_IRQn\000"
.LASF142:
	.ascii	"cpuss_interrupts_fault_1_IRQn\000"
.LASF215:
	.ascii	"cyhal_irq_handler\000"
.LASF91:
	.ascii	"cpuss_interrupts_dw0_8_IRQn\000"
.LASF92:
	.ascii	"cpuss_interrupts_dw0_9_IRQn\000"
.LASF203:
	.ascii	"cy_stc_sysint_t\000"
.LASF74:
	.ascii	"scb_9_interrupt_IRQn\000"
.LASF205:
	.ascii	"CYHAL_SYSTEM_RESET_NONE\000"
.LASF93:
	.ascii	"cpuss_interrupts_dw0_10_IRQn\000"
.LASF164:
	.ascii	"tcpwm_1_interrupts_6_IRQn\000"
.LASF102:
	.ascii	"cpuss_interrupts_dw0_19_IRQn\000"
.LASF67:
	.ascii	"scb_1_interrupt_IRQn\000"
.LASF197:
	.ascii	"cy_israddress\000"
.LASF175:
	.ascii	"tcpwm_1_interrupts_17_IRQn\000"
.LASF70:
	.ascii	"scb_4_interrupt_IRQn\000"
.LASF34:
	.ascii	"ioss_interrupts_gpio_7_IRQn\000"
.LASF214:
	.ascii	"cyhal_reset_reason_t\000"
.LASF45:
	.ascii	"scb_8_interrupt_IRQn\000"
.LASF127:
	.ascii	"cpuss_interrupts_dw1_15_IRQn\000"
.LASF188:
	.ascii	"usb_interrupt_hi_IRQn\000"
.LASF199:
	.ascii	"float\000"
.LASF86:
	.ascii	"cpuss_interrupts_dw0_3_IRQn\000"
.LASF38:
	.ascii	"ioss_interrupts_gpio_11_IRQn\000"
.LASF80:
	.ascii	"cpuss_interrupts_dmac_1_IRQn\000"
.LASF94:
	.ascii	"cpuss_interrupts_dw0_11_IRQn\000"
.LASF153:
	.ascii	"tcpwm_0_interrupts_3_IRQn\000"
.LASF178:
	.ascii	"tcpwm_1_interrupts_20_IRQn\000"
.LASF225:
	.ascii	"milliseconds\000"
.LASF159:
	.ascii	"tcpwm_1_interrupts_1_IRQn\000"
.LASF111:
	.ascii	"cpuss_interrupts_dw0_28_IRQn\000"
.LASF146:
	.ascii	"cpuss_interrupts_cm0_cti_0_IRQn\000"
.LASF112:
	.ascii	"cpuss_interrupts_dw1_0_IRQn\000"
.LASF63:
	.ascii	"cpuss_interrupts_ipc_13_IRQn\000"
.LASF121:
	.ascii	"cpuss_interrupts_dw1_9_IRQn\000"
.LASF117:
	.ascii	"cpuss_interrupts_dw1_5_IRQn\000"
.LASF123:
	.ascii	"cpuss_interrupts_dw1_11_IRQn\000"
.LASF204:
	.ascii	"_Bool\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF193:
	.ascii	"sdhc_1_interrupt_wakeup_IRQn\000"
.LASF165:
	.ascii	"tcpwm_1_interrupts_7_IRQn\000"
.LASF53:
	.ascii	"cpuss_interrupts_ipc_3_IRQn\000"
.LASF110:
	.ascii	"cpuss_interrupts_dw0_27_IRQn\000"
.LASF195:
	.ascii	"unconnected_IRQn\000"
.LASF2:
	.ascii	"short int\000"
.LASF122:
	.ascii	"cpuss_interrupts_dw1_10_IRQn\000"
.LASF131:
	.ascii	"cpuss_interrupts_dw1_19_IRQn\000"
.LASF125:
	.ascii	"cpuss_interrupts_dw1_13_IRQn\000"
.LASF75:
	.ascii	"scb_10_interrupt_IRQn\000"
.LASF79:
	.ascii	"cpuss_interrupts_dmac_0_IRQn\000"
.LASF157:
	.ascii	"tcpwm_0_interrupts_7_IRQn\000"
.LASF230:
	.ascii	"Cy_SysLib_Rtos_Delay\000"
.LASF223:
	.ascii	"reason\000"
.LASF106:
	.ascii	"cpuss_interrupts_dw0_23_IRQn\000"
.LASF87:
	.ascii	"cpuss_interrupts_dw0_4_IRQn\000"
.LASF196:
	.ascii	"IRQn_Type\000"
.LASF179:
	.ascii	"tcpwm_1_interrupts_21_IRQn\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF160:
	.ascii	"tcpwm_1_interrupts_2_IRQn\000"
.LASF22:
	.ascii	"UsageFault_IRQn\000"
.LASF216:
	.ascii	"irq_num\000"
.LASF57:
	.ascii	"cpuss_interrupts_ipc_7_IRQn\000"
.LASF113:
	.ascii	"cpuss_interrupts_dw1_1_IRQn\000"
.LASF64:
	.ascii	"cpuss_interrupts_ipc_14_IRQn\000"
.LASF16:
	.ascii	"long double\000"
.LASF198:
	.ascii	"char\000"
.LASF207:
	.ascii	"CYHAL_SYSTEM_RESET_ACTIVE_FAULT\000"
.LASF140:
	.ascii	"cpuss_interrupts_dw1_28_IRQn\000"
.LASF30:
	.ascii	"ioss_interrupts_gpio_3_IRQn\000"
.LASF182:
	.ascii	"pass_interrupt_sar_IRQn\000"
.LASF25:
	.ascii	"PendSV_IRQn\000"
.LASF69:
	.ascii	"scb_3_interrupt_IRQn\000"
.LASF154:
	.ascii	"tcpwm_0_interrupts_4_IRQn\000"
.LASF18:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF177:
	.ascii	"tcpwm_1_interrupts_19_IRQn\000"
.LASF26:
	.ascii	"SysTick_IRQn\000"
.LASF52:
	.ascii	"cpuss_interrupts_ipc_2_IRQn\000"
.LASF220:
	.ascii	"cyhal_system_set_isr\000"
.LASF37:
	.ascii	"ioss_interrupts_gpio_10_IRQn\000"
.LASF107:
	.ascii	"cpuss_interrupts_dw0_24_IRQn\000"
.LASF19:
	.ascii	"HardFault_IRQn\000"
.LASF88:
	.ascii	"cpuss_interrupts_dw0_5_IRQn\000"
.LASF78:
	.ascii	"csd_interrupt_IRQn\000"
.LASF184:
	.ascii	"audioss_0_interrupt_pdm_IRQn\000"
.LASF180:
	.ascii	"tcpwm_1_interrupts_22_IRQn\000"
.LASF210:
	.ascii	"CYHAL_SYSTEM_RESET_HIB_WAKEUP\000"
.LASF135:
	.ascii	"cpuss_interrupts_dw1_23_IRQn\000"
.LASF150:
	.ascii	"tcpwm_0_interrupts_0_IRQn\000"
.LASF99:
	.ascii	"cpuss_interrupts_dw0_16_IRQn\000"
.LASF58:
	.ascii	"cpuss_interrupts_ipc_8_IRQn\000"
.LASF143:
	.ascii	"cpuss_interrupt_crypto_IRQn\000"
.LASF65:
	.ascii	"cpuss_interrupts_ipc_15_IRQn\000"
.LASF224:
	.ascii	"cyhal_system_delay_ms\000"
.LASF172:
	.ascii	"tcpwm_1_interrupts_14_IRQn\000"
.LASF209:
	.ascii	"CYHAL_SYSTEM_RESET_SOFT\000"
.LASF139:
	.ascii	"cpuss_interrupts_dw1_27_IRQn\000"
.LASF31:
	.ascii	"ioss_interrupts_gpio_4_IRQn\000"
.LASF211:
	.ascii	"CYHAL_SYSTEM_RESET_WCO_ERR\000"
.LASF187:
	.ascii	"smif_interrupt_IRQn\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"ioss_interrupts_gpio_12_IRQn\000"
.LASF186:
	.ascii	"profile_interrupt_IRQn\000"
.LASF124:
	.ascii	"cpuss_interrupts_dw1_12_IRQn\000"
.LASF83:
	.ascii	"cpuss_interrupts_dw0_0_IRQn\000"
.LASF77:
	.ascii	"scb_12_interrupt_IRQn\000"
.LASF43:
	.ascii	"ioss_interrupt_vdd_IRQn\000"
.LASF227:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF24:
	.ascii	"DebugMonitor_IRQn\000"
.LASF48:
	.ascii	"srss_interrupt_backup_IRQn\000"
.LASF108:
	.ascii	"cpuss_interrupts_dw0_25_IRQn\000"
.LASF6:
	.ascii	"long int\000"
.LASF60:
	.ascii	"cpuss_interrupts_ipc_10_IRQn\000"
.LASF118:
	.ascii	"cpuss_interrupts_dw1_6_IRQn\000"
.LASF90:
	.ascii	"cpuss_interrupts_dw0_7_IRQn\000"
.LASF145:
	.ascii	"cpuss_interrupts_cm4_fp_IRQn\000"
.LASF136:
	.ascii	"cpuss_interrupts_dw1_24_IRQn\000"
.LASF226:
	.ascii	"result\000"
.LASF50:
	.ascii	"cpuss_interrupts_ipc_0_IRQn\000"
.LASF35:
	.ascii	"ioss_interrupts_gpio_8_IRQn\000"
.LASF59:
	.ascii	"cpuss_interrupts_ipc_9_IRQn\000"
.LASF138:
	.ascii	"cpuss_interrupts_dw1_26_IRQn\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
