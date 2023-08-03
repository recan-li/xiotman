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
	.file	"cy_mcwdt.c"
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
	.section	.text.Cy_MCWDT_Unlock,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_MCWDT_Unlock, %function
Cy_MCWDT_Unlock:
.LFB141:
	.file 2 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_mcwdt.h"
	.loc 2 891 1
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
	.loc 2 894 22
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #12]
	.loc 2 899 90
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	.loc 2 899 105
	bic	r3, r3, #-1073741824
	.loc 2 899 138
	orr	r2, r3, #1073741824
	.loc 2 899 52
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	.loc 2 900 90
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	.loc 2 900 105
	bic	r3, r3, #-1073741824
	.loc 2 900 138
	orr	r2, r3, #-2147483648
	.loc 2 900 52
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	.loc 2 902 5
	ldr	r0, [r7, #12]
	bl	Cy_SysLib_ExitCriticalSection
	.loc 2 903 1
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
.LFE141:
	.size	Cy_MCWDT_Unlock, .-Cy_MCWDT_Unlock
	.section	.text.Cy_MCWDT_Init,"ax",%progbits
	.align	1
	.global	Cy_MCWDT_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_MCWDT_Init, %function
Cy_MCWDT_Init:
.LFB161:
	.file 3 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\source\\cy_mcwdt.c"
	.loc 3 57 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI10:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 58 26
	ldr	r3, .L16
	str	r3, [r7, #12]
	.loc 3 60 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L4
	.loc 3 60 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L4
	.loc 3 62 27
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 3 62 16
	cmp	r3, #0
	beq	.L5
	.loc 3 62 62 discriminator 1
	ldr	r3, [r7]
	ldrh	r3, [r3]
	.loc 3 62 17 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 3 62 14 discriminator 2
	bl	CY_HALT
.L5:
	.loc 3 63 27
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 63 16
	cmp	r3, #0
	beq	.L6
	.loc 3 63 62 discriminator 1
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	.loc 3 63 17 discriminator 1
	cmp	r3, #0
	bne	.L6
	.loc 3 63 14 discriminator 2
	bl	CY_HALT
.L6:
	.loc 3 64 35
	ldr	r3, [r7]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 3 64 16
	cmp	r3, #31
	bls	.L7
	.loc 3 64 55 discriminator 1
	bl	CY_HALT
.L7:
	.loc 3 65 69
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 65 16
	cmp	r3, #0
	beq	.L8
	.loc 3 65 131 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 65 80 discriminator 1
	cmp	r3, #1
	beq	.L8
	.loc 3 65 195 discriminator 2
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 65 142 discriminator 2
	cmp	r3, #2
	beq	.L8
	.loc 3 65 263 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 65 17 discriminator 3
	cmp	r3, #3
	beq	.L8
	.loc 3 65 279 discriminator 4
	bl	CY_HALT
.L8:
	.loc 3 66 69
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 3 66 16
	cmp	r3, #0
	beq	.L9
	.loc 3 66 131 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 3 66 80 discriminator 1
	cmp	r3, #1
	beq	.L9
	.loc 3 66 195 discriminator 2
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 3 66 142 discriminator 2
	cmp	r3, #2
	beq	.L9
	.loc 3 66 263 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 3 66 17 discriminator 3
	cmp	r3, #3
	beq	.L9
	.loc 3 66 279 discriminator 4
	bl	CY_HALT
.L9:
	.loc 3 67 69
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 3 67 16
	cmp	r3, #0
	beq	.L10
	.loc 3 67 131 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 3 67 80 discriminator 1
	cmp	r3, #1
	beq	.L10
	.loc 3 67 195 discriminator 2
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 3 67 142 discriminator 2
	cmp	r3, #2
	beq	.L10
	.loc 3 67 263 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 3 67 17 discriminator 3
	cmp	r3, #3
	beq	.L10
	.loc 3 67 279 discriminator 4
	bl	CY_HALT
.L10:
	.loc 3 69 78
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	.loc 3 69 98
	lsls	r3, r3, #16
	.loc 3 70 61
	ldr	r2, [r7]
	ldrh	r2, [r2]
	.loc 3 69 114
	orrs	r2, r2, r3
	.loc 3 69 57
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	.loc 3 72 79
	ldr	r3, [r7]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 3 72 94
	lsls	r3, r3, #24
	.loc 3 72 103
	and	r2, r3, #520093696
	.loc 3 73 59
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 3 73 69
	lsls	r3, r3, #16
	.loc 3 73 78
	and	r3, r3, #65536
	.loc 3 72 119
	orrs	r2, r2, r3
	.loc 3 74 59
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 3 74 77
	lsls	r3, r3, #2
	.loc 3 74 85
	and	r3, r3, #4
	.loc 3 73 91
	orrs	r2, r2, r3
	.loc 3 75 59
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 75 77
	lsls	r3, r3, #10
	.loc 3 75 86
	and	r3, r3, #1024
	.loc 3 74 94
	orrs	r3, r3, r2
	.loc 3 76 47
	ldr	r2, [r7]
	ldrb	r2, [r2, #11]	@ zero_extendqisi2
	.loc 3 76 71
	cmp	r2, #0
	beq	.L11
	.loc 3 76 71 is_stmt 0 discriminator 1
	mov	r2, #2048
	b	.L12
.L11:
	.loc 3 76 71 discriminator 2
	movs	r2, #0
.L12:
	.loc 3 75 97 is_stmt 1
	orrs	r2, r2, r3
	.loc 3 77 59
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 3 77 69
	lsls	r3, r3, #8
	.loc 3 77 77
	and	r3, r3, #768
	.loc 3 76 78
	orrs	r3, r3, r2
	.loc 3 78 47
	ldr	r2, [r7]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	.loc 3 78 69
	cmp	r2, #0
	beq	.L13
	.loc 3 78 69 is_stmt 0 discriminator 1
	movs	r2, #8
	b	.L14
.L13:
	.loc 3 78 69 discriminator 2
	movs	r2, #0
.L14:
	.loc 3 77 88 is_stmt 1
	orrs	r2, r2, r3
	.loc 3 79 59
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 79 77
	and	r3, r3, #3
	.loc 3 78 76
	orrs	r2, r2, r3
	.loc 3 72 58
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	.loc 3 96 13
	movs	r3, #0
	str	r3, [r7, #12]
.L4:
	.loc 3 99 12
	ldr	r3, [r7, #12]
	.loc 3 100 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI12:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI13:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	14024705
	.cfi_endproc
.LFE161:
	.size	Cy_MCWDT_Init, .-Cy_MCWDT_Init
	.section	.text.Cy_MCWDT_DeInit,"ax",%progbits
	.align	1
	.global	Cy_MCWDT_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_MCWDT_DeInit, %function
Cy_MCWDT_DeInit:
.LFB162:
	.loc 3 118 1
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
	str	r0, [r7, #4]
	.loc 3 119 5
	ldr	r0, [r7, #4]
	bl	Cy_MCWDT_Unlock
	.loc 3 121 54
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 3 122 55
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 3 123 53
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 3 124 54
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 3 125 51
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	.loc 3 126 52
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 3 127 56
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 3 128 57
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	.loc 3 132 1
	nop
	adds	r7, r7, #8
.LCFI17:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI18:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE162:
	.size	Cy_MCWDT_DeInit, .-Cy_MCWDT_DeInit
	.section	.text.Cy_MCWDT_GetCountCascaded,"ax",%progbits
	.align	1
	.global	Cy_MCWDT_GetCountCascaded
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_MCWDT_GetCountCascaded, %function
Cy_MCWDT_GetCountCascaded:
.LFB163:
	.loc 3 159 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #36
.LCFI20:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI21:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 160 14
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	.loc 3 161 14
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	str	r3, [r7, #28]
	.loc 3 162 14
	ldr	r3, [r7, #12]
	uxth	r3, r3
	str	r3, [r7, #24]
	.loc 3 163 69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 3 163 14
	uxth	r3, r3
	str	r3, [r7, #20]
	.loc 3 164 69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 3 164 101
	lsrs	r3, r3, #16
	.loc 3 164 14
	uxth	r3, r3
	str	r3, [r7, #16]
	.loc 3 175 8
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L20
	.loc 3 177 17
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L20:
	.loc 3 181 62
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 3 181 13
	and	r3, r3, #4
	.loc 3 181 8
	cmp	r3, #0
	bne	.L21
	.loc 3 186 18
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	.loc 3 188 12
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L22
	.loc 3 191 20
	movw	r3, #65535
	str	r3, [r7, #20]
.L22:
	.loc 3 194 12
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L21
	.loc 3 197 21
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L21:
	.loc 3 202 14
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	.loc 3 205 62
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 3 205 13
	and	r3, r3, #1024
	.loc 3 205 8
	cmp	r3, #0
	bne	.L23
	.loc 3 207 16
	movw	r3, #65535
	str	r3, [r7, #16]
.L23:
	.loc 3 211 8
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L24
	.loc 3 214 18
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 3 219 18
	movs	r3, #0
	str	r3, [r7, #28]
.L24:
	.loc 3 223 37
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	.loc 3 223 14
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #12]
	.loc 3 225 12
	ldr	r3, [r7, #12]
	.loc 3 226 1
	mov	r0, r3
	adds	r7, r7, #36
.LCFI22:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI23:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI24:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE163:
	.size	Cy_MCWDT_GetCountCascaded, .-Cy_MCWDT_GetCountCascaded
	.text
.Letext0:
	.file 4 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 5 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/ip/cyip_srss.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x44b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xc
	.4byte	.LASF64
	.4byte	.LASF65
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xbc
	.4byte	0xd8
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0xc8
	.uleb128 0x5
	.4byte	0xd8
	.uleb128 0x9
	.byte	0x40
	.byte	0x6
	.byte	0x2a
	.byte	0x9
	.4byte	0x1a0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2c
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2d
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2e
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x30
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x31
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x32
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x33
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0x35
	.byte	0x15
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0x1c
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x3
	.4byte	0xe2
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x6ac
	.byte	0x1e
	.4byte	0x1a0
	.uleb128 0x6
	.4byte	0x1ac
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF32
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x13b
	.byte	0x1
	.4byte	0x1fb
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x141
	.byte	0x3
	.4byte	0x1d3
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x2
	.2byte	0x16b
	.byte	0x1
	.4byte	0x227
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.4byte	0xd60001
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x16e
	.byte	0x3
	.4byte	0x208
	.uleb128 0xf
	.byte	0xc
	.byte	0x2
	.2byte	0x1ef
	.byte	0x9
	.4byte	0x2df
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x1f1
	.byte	0xe
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1f4
	.byte	0xe
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x1f7
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x1fa
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x1fd
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x1ff
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x222
	.byte	0xd
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x223
	.byte	0xd
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x224
	.byte	0xd
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x225
	.byte	0xd
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF51
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x226
	.byte	0x3
	.4byte	0x234
	.uleb128 0x6
	.4byte	0x2e6
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF59
	.byte	0x3
	.byte	0x9e
	.byte	0xa
	.byte	0x1
	.4byte	0xab
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x372
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x3
	.byte	0x9e
	.byte	0x3d
	.4byte	0x372
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x3
	.byte	0xa0
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x3
	.byte	0xa1
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x3
	.byte	0xa2
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x3
	.byte	0xa3
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x3
	.byte	0xa4
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF66
	.byte	0x3
	.byte	0x75
	.byte	0x6
	.byte	0x1
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x3a3
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x3
	.byte	0x75
	.byte	0x29
	.4byte	0x3a3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x1ac
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF60
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.byte	0x1
	.4byte	0x227
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x3f6
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x3
	.byte	0x38
	.byte	0x37
	.4byte	0x3a3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x3
	.byte	0x38
	.byte	0x5a
	.4byte	0x3f6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"ret\000"
	.byte	0x3
	.byte	0x3a
	.byte	0x1a
	.4byte	0x227
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x37a
	.byte	0x14
	.byte	0x1
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x438
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x37a
	.byte	0x37
	.4byte	0x3a3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x37c
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF68
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LFB163
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI20
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI24
	.4byte	.LFE163
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB162
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
	.4byte	.LFE162
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB161
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
	.sleb128 24
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI13
	.4byte	.LFE161
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB141
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
	.4byte	.LFE141
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
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"cy_en_mcwdtmode_t\000"
.LASF29:
	.ascii	"MCWDT_STRUCT_Type\000"
.LASF17:
	.ascii	"MCWDT_CNTLOW\000"
.LASF2:
	.ascii	"short int\000"
.LASF53:
	.ascii	"countVal\000"
.LASF68:
	.ascii	"CY_HALT\000"
.LASF56:
	.ascii	"match0\000"
.LASF57:
	.ascii	"match1\000"
.LASF40:
	.ascii	"cy_en_mcwdt_status_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF44:
	.ascii	"c1Mode\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF21:
	.ascii	"MCWDT_CTL\000"
.LASF43:
	.ascii	"c0Mode\000"
.LASF61:
	.ascii	"config\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF38:
	.ascii	"CY_MCWDT_SUCCESS\000"
.LASF54:
	.ascii	"counter1\000"
.LASF47:
	.ascii	"c0ClearOnMatch\000"
.LASF25:
	.ascii	"MCWDT_INTR_MASKED\000"
.LASF18:
	.ascii	"MCWDT_CNTHIGH\000"
.LASF31:
	.ascii	"float\000"
.LASF9:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"MCWDT_MATCH\000"
.LASF30:
	.ascii	"char\000"
.LASF6:
	.ascii	"long int\000"
.LASF24:
	.ascii	"MCWDT_INTR_MASK\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"c1ClearOnMatch\000"
.LASF59:
	.ascii	"Cy_MCWDT_GetCountCascaded\000"
.LASF41:
	.ascii	"c0Match\000"
.LASF15:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF60:
	.ascii	"Cy_MCWDT_Init\000"
.LASF50:
	.ascii	"c1c2Cascade\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF67:
	.ascii	"Cy_MCWDT_Unlock\000"
.LASF28:
	.ascii	"MCWDT_STRUCT_V1_Type\000"
.LASF36:
	.ascii	"CY_MCWDT_MODE_INT_RESET\000"
.LASF52:
	.ascii	"cy_stc_mcwdt_config_t\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF63:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF64:
	.ascii	"libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\so"
	.ascii	"urce\\cy_mcwdt.c\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF51:
	.ascii	"_Bool\000"
.LASF55:
	.ascii	"counter0\000"
.LASF66:
	.ascii	"Cy_MCWDT_DeInit\000"
.LASF46:
	.ascii	"c2Mode\000"
.LASF33:
	.ascii	"CY_MCWDT_MODE_NONE\000"
.LASF62:
	.ascii	"interruptState\000"
.LASF27:
	.ascii	"RESERVED1\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"double\000"
.LASF49:
	.ascii	"c0c1Cascade\000"
.LASF23:
	.ascii	"MCWDT_INTR_SET\000"
.LASF45:
	.ascii	"c2ToggleBit\000"
.LASF35:
	.ascii	"CY_MCWDT_MODE_RESET\000"
.LASF26:
	.ascii	"MCWDT_LOCK\000"
.LASF20:
	.ascii	"MCWDT_CONFIG\000"
.LASF65:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF16:
	.ascii	"RESERVED\000"
.LASF39:
	.ascii	"CY_MCWDT_BAD_PARAM\000"
.LASF34:
	.ascii	"CY_MCWDT_MODE_INT\000"
.LASF58:
	.ascii	"base\000"
.LASF42:
	.ascii	"c1Match\000"
.LASF22:
	.ascii	"MCWDT_INTR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
