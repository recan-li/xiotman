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
	.file	"cy_trigmux.c"
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
	.section	.text.Cy_TrigMux_Connect,"ax",%progbits
	.align	1
	.global	Cy_TrigMux_Connect
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_TrigMux_Connect, %function
Cy_TrigMux_Connect:
.LFB137:
	.file 2 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\source\\cy_trigmux.c"
	.loc 2 112 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI5:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI6:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 2 113 28
	ldr	r3, .L11
	str	r3, [r7, #20]
	.loc 2 114 12
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L3
	.loc 2 114 13 discriminator 1
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3
	.loc 2 114 93 discriminator 2
	bl	CY_HALT
.L3:
	.loc 2 115 33
	ldr	r3, [r7, #12]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	.loc 2 115 12
	cmp	r3, #0
	beq	.L4
	.loc 2 115 71 discriminator 1
	bl	CY_HALT
.L4:
	.loc 2 116 105
	ldr	r3, .L11+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 116 75
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 116 140
	subs	r3, r3, #1
	.loc 2 116 72
	orr	r3, r3, #1073741824
	orr	r3, r3, #3840
	.loc 2 116 37
	mvns	r2, r3
	.loc 2 116 35
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	.loc 2 116 12
	cmp	r3, #0
	bne	.L5
	.loc 2 116 172 discriminator 2
	ldr	r3, [r7, #8]
	and	r3, r3, #1073741824
	.loc 2 116 13 discriminator 2
	cmp	r3, #0
	bne	.L6
.L5:
	.loc 2 116 194 discriminator 3
	bl	CY_HALT
.L6:
	.loc 2 119 28
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	eors	r3, r3, r2
	and	r3, r3, #3840
	.loc 2 119 8
	cmp	r3, #0
	bne	.L7
.LBB2:
	.loc 2 121 35
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #16]
	.loc 2 123 411
	ldr	r3, .L11+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 123 443
	ldr	r2, .L11+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #112]
	.loc 2 123 422
	add	r2, r2, r3
	.loc 2 123 637
	ldr	r3, .L11+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 123 607
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 123 672
	subs	r1, r3, #1
	.loc 2 123 680
	ldr	r3, [r7, #8]
	ands	r3, r3, r1
	.loc 2 123 691
	lsls	r1, r3, #2
	.loc 2 123 508
	ldr	r3, .L11+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 123 489
	mov	r0, r3
	.loc 2 123 486
	ldr	r3, [r7, #8]
	ands	r3, r3, r0
	.loc 2 123 530
	lsrs	r3, r3, #8
	.loc 2 123 562
	ldr	r0, .L11+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #114]
	.loc 2 123 541
	mul	r3, r0, r3
	.loc 2 123 578
	add	r3, r3, r1
	add	r3, r3, r2
	.loc 2 123 370
	ldr	r3, [r3]
	.loc 2 123 724
	bic	r3, r3, #1020
	bic	r3, r3, #3
	.loc 2 127 71
	ldr	r2, [r7, #12]
	uxtb	r2, r2
	.loc 2 128 54
	ldrb	r1, [r7, #7]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L8
	.loc 2 128 54 is_stmt 0 discriminator 1
	mov	r1, #256
	b	.L9
.L8:
	.loc 2 128 54 discriminator 2
	movs	r1, #0
.L9:
	.loc 2 127 81 is_stmt 1
	orrs	r1, r1, r2
	.loc 2 129 44
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	.loc 2 129 65
	lsls	r2, r2, #9
	.loc 2 129 73
	and	r2, r2, #512
	.loc 2 128 61
	orrs	r2, r2, r1
	.loc 2 123 52
	ldr	r1, .L11+4
	ldr	r1, [r1]
	ldr	r1, [r1, #8]
	.loc 2 123 84
	ldr	r0, .L11+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #112]
	.loc 2 123 63
	add	r0, r0, r1
	.loc 2 123 278
	ldr	r1, .L11+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #114]
	.loc 2 123 248
	lsrs	r1, r1, #2
	uxth	r1, r1
	.loc 2 123 313
	subs	r4, r1, #1
	.loc 2 123 321
	ldr	r1, [r7, #8]
	ands	r1, r1, r4
	.loc 2 123 332
	lsls	r4, r1, #2
	.loc 2 123 149
	ldr	r1, .L11+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #110]
	.loc 2 123 130
	mov	r5, r1
	.loc 2 123 127
	ldr	r1, [r7, #8]
	ands	r1, r1, r5
	.loc 2 123 171
	lsrs	r1, r1, #8
	.loc 2 123 203
	ldr	r5, .L11+4
	ldr	r5, [r5]
	ldrh	r5, [r5, #114]
	.loc 2 123 182
	mul	r1, r5, r1
	.loc 2 123 219
	add	r1, r1, r4
	add	r1, r1, r0
	.loc 2 126 61
	orrs	r3, r3, r2
	.loc 2 123 365
	str	r3, [r1]
	.loc 2 131 9
	ldr	r0, [r7, #16]
	bl	Cy_SysLib_ExitCriticalSection
	.loc 2 133 16
	movs	r3, #0
	str	r3, [r7, #20]
.L7:
.LBE2:
	.loc 2 136 12
	ldr	r3, [r7, #20]
	.loc 2 137 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI7:
	.cfi_def_cfa_offset 16
	mov	sp, r7
.LCFI8:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L12:
	.align	2
.L11:
	.word	13500417
	.word	cy_device
	.cfi_endproc
.LFE137:
	.size	Cy_TrigMux_Connect, .-Cy_TrigMux_Connect
	.section	.text.Cy_TrigMux_Select,"ax",%progbits
	.align	1
	.global	Cy_TrigMux_Select
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_TrigMux_Select, %function
Cy_TrigMux_Select:
.LFB138:
	.loc 2 171 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
.LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI10:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	.loc 2 172 28
	ldr	r3, .L21
	str	r3, [r7, #12]
	.loc 2 174 12
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L14
	.loc 2 174 13 discriminator 1
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	.loc 2 174 93 discriminator 2
	bl	CY_HALT
.L14:
	.loc 2 175 106
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 175 76
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 175 141
	subs	r3, r3, #1
	.loc 2 175 73
	orr	r3, r3, #1073741824
	orr	r3, r3, #7936
	.loc 2 175 37
	mvns	r2, r3
	.loc 2 175 35
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	.loc 2 175 12
	cmp	r3, #0
	bne	.L15
	.loc 2 175 173 discriminator 2
	ldr	r3, [r7, #4]
	and	r3, r3, #1073741824
	.loc 2 175 151 discriminator 2
	cmp	r3, #0
	beq	.L15
	.loc 2 175 212 discriminator 4
	ldr	r3, [r7, #4]
	and	r3, r3, #4096
	.loc 2 175 13 discriminator 4
	cmp	r3, #0
	bne	.L16
.L15:
	.loc 2 175 253 discriminator 5
	bl	CY_HALT
.L16:
	.loc 2 177 38
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 2 177 8
	cmp	r3, #31
	bls	.L17
.LBB3:
	.loc 2 181 26
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #8]
	.loc 2 183 411
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 183 443
	ldr	r2, .L21+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #112]
	.loc 2 183 422
	add	r2, r2, r3
	.loc 2 183 637
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 183 607
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 183 672
	subs	r1, r3, #1
	.loc 2 183 680
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	.loc 2 183 691
	lsls	r1, r3, #2
	.loc 2 183 508
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 183 489
	mov	r0, r3
	.loc 2 183 486
	ldr	r3, [r7, #4]
	ands	r3, r3, r0
	.loc 2 183 530
	lsrs	r3, r3, #8
	.loc 2 183 562
	ldr	r0, .L21+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #114]
	.loc 2 183 541
	mul	r3, r0, r3
	.loc 2 183 578
	add	r3, r3, r1
	add	r3, r3, r2
	.loc 2 183 370
	ldr	r3, [r3]
	.loc 2 183 724
	bic	r2, r3, #768
	.loc 2 186 45
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	.loc 2 186 45 is_stmt 0 discriminator 1
	movw	r1, #257
	b	.L19
.L18:
	.loc 2 186 45 discriminator 2
	movs	r1, #1
.L19:
	.loc 2 188 32 is_stmt 1
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	.loc 2 188 53
	lsls	r3, r3, #9
	.loc 2 188 61
	and	r3, r3, #512
	.loc 2 187 49
	orrs	r3, r3, r1
	.loc 2 183 52
	ldr	r1, .L21+4
	ldr	r1, [r1]
	ldr	r1, [r1, #8]
	.loc 2 183 84
	ldr	r0, .L21+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #112]
	.loc 2 183 63
	add	r0, r0, r1
	.loc 2 183 278
	ldr	r1, .L21+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #114]
	.loc 2 183 248
	lsrs	r1, r1, #2
	uxth	r1, r1
	.loc 2 183 313
	subs	r4, r1, #1
	.loc 2 183 321
	ldr	r1, [r7, #4]
	ands	r1, r1, r4
	.loc 2 183 332
	lsls	r4, r1, #2
	.loc 2 183 149
	ldr	r1, .L21+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #110]
	.loc 2 183 130
	mov	r5, r1
	.loc 2 183 127
	ldr	r1, [r7, #4]
	ands	r1, r1, r5
	.loc 2 183 171
	lsrs	r1, r1, #8
	.loc 2 183 203
	ldr	r5, .L21+4
	ldr	r5, [r5]
	ldrh	r5, [r5, #114]
	.loc 2 183 182
	mul	r1, r5, r1
	.loc 2 183 219
	add	r1, r1, r4
	add	r1, r1, r0
	.loc 2 185 49
	orrs	r3, r3, r2
	.loc 2 183 365
	str	r3, [r1]
	.loc 2 190 9
	ldr	r0, [r7, #8]
	bl	Cy_SysLib_ExitCriticalSection
	.loc 2 192 16
	movs	r3, #0
	str	r3, [r7, #12]
.L17:
.LBE3:
	.loc 2 195 12
	ldr	r3, [r7, #12]
	.loc 2 196 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI12:
	.cfi_def_cfa_offset 16
	mov	sp, r7
.LCFI13:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L22:
	.align	2
.L21:
	.word	13500417
	.word	cy_device
	.cfi_endproc
.LFE138:
	.size	Cy_TrigMux_Select, .-Cy_TrigMux_Select
	.section	.text.Cy_TrigMux_Deselect,"ax",%progbits
	.align	1
	.global	Cy_TrigMux_Deselect
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_TrigMux_Deselect, %function
Cy_TrigMux_Deselect:
.LFB139:
	.loc 2 221 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
.LCFI14:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
.LCFI15:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI16:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 222 28
	ldr	r3, .L28
	str	r3, [r7, #12]
	.loc 2 224 106
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 224 76
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 224 141
	subs	r3, r3, #1
	.loc 2 224 73
	orr	r3, r3, #1073741824
	orr	r3, r3, #7936
	.loc 2 224 37
	mvns	r2, r3
	.loc 2 224 35
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	.loc 2 224 12
	cmp	r3, #0
	bne	.L24
	.loc 2 224 173 discriminator 2
	ldr	r3, [r7, #4]
	and	r3, r3, #1073741824
	.loc 2 224 151 discriminator 2
	cmp	r3, #0
	beq	.L24
	.loc 2 224 212 discriminator 4
	ldr	r3, [r7, #4]
	and	r3, r3, #4096
	.loc 2 224 13 discriminator 4
	cmp	r3, #0
	bne	.L25
.L24:
	.loc 2 224 253 discriminator 5
	bl	CY_HALT
.L25:
	.loc 2 226 38
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 2 226 8
	cmp	r3, #31
	bls	.L26
.LBB4:
	.loc 2 230 26
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #8]
	.loc 2 232 52
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 232 84
	ldr	r2, .L28+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #112]
	.loc 2 232 63
	add	r2, r2, r3
	.loc 2 232 278
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 232 248
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 232 313
	subs	r1, r3, #1
	.loc 2 232 365
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	lsls	r1, r3, #2
	.loc 2 232 149
	ldr	r3, .L28+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 232 130
	mov	r0, r3
	.loc 2 232 365
	ldr	r3, [r7, #4]
	ands	r3, r3, r0
	lsrs	r3, r3, #8
	.loc 2 232 203
	ldr	r0, .L28+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #114]
	.loc 2 232 365
	mul	r3, r0, r3
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 2 232 52
	ldr	r2, .L28+4
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	.loc 2 232 84
	ldr	r1, .L28+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #112]
	.loc 2 232 63
	add	r1, r1, r2
	.loc 2 232 278
	ldr	r2, .L28+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #114]
	.loc 2 232 248
	lsrs	r2, r2, #2
	uxth	r2, r2
	.loc 2 232 313
	subs	r0, r2, #1
	.loc 2 232 365
	ldr	r2, [r7, #4]
	ands	r2, r2, r0
	lsls	r0, r2, #2
	.loc 2 232 149
	ldr	r2, .L28+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #110]
	.loc 2 232 130
	mov	r4, r2
	.loc 2 232 365
	ldr	r2, [r7, #4]
	ands	r2, r2, r4
	lsrs	r2, r2, #8
	.loc 2 232 203
	ldr	r4, .L28+4
	ldr	r4, [r4]
	ldrh	r4, [r4, #114]
	.loc 2 232 365
	mul	r2, r4, r2
	add	r2, r2, r0
	add	r2, r2, r1
	bic	r3, r3, #768
	bic	r3, r3, #1
	str	r3, [r2]
	.loc 2 236 9
	ldr	r0, [r7, #8]
	bl	Cy_SysLib_ExitCriticalSection
	.loc 2 238 16
	movs	r3, #0
	str	r3, [r7, #12]
.L26:
.LBE4:
	.loc 2 241 12
	ldr	r3, [r7, #12]
	.loc 2 242 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI17:
	.cfi_def_cfa_offset 12
	mov	sp, r7
.LCFI18:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L29:
	.align	2
.L28:
	.word	13500417
	.word	cy_device
	.cfi_endproc
.LFE139:
	.size	Cy_TrigMux_Deselect, .-Cy_TrigMux_Deselect
	.section	.text.Cy_TrigMux_SetDebugFreeze,"ax",%progbits
	.align	1
	.global	Cy_TrigMux_SetDebugFreeze
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_TrigMux_SetDebugFreeze, %function
Cy_TrigMux_SetDebugFreeze:
.LFB140:
	.loc 2 272 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
.LCFI19:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
.LCFI20:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI21:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 2 273 28
	ldr	r3, .L35
	str	r3, [r7, #12]
	.loc 2 275 38
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 2 275 8
	cmp	r3, #31
	bls	.L31
.LBB5:
	.loc 2 279 26
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #8]
	.loc 2 281 12
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	.loc 2 283 56
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 283 88
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #112]
	.loc 2 283 67
	add	r2, r2, r3
	.loc 2 283 282
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 283 252
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 283 317
	subs	r1, r3, #1
	.loc 2 283 369
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	lsls	r1, r3, #2
	.loc 2 283 153
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 283 134
	mov	r0, r3
	.loc 2 283 369
	ldr	r3, [r7, #4]
	ands	r3, r3, r0
	lsrs	r3, r3, #8
	.loc 2 283 207
	ldr	r0, .L35+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #114]
	.loc 2 283 369
	mul	r3, r0, r3
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 2 283 56
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	.loc 2 283 88
	ldr	r1, .L35+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #112]
	.loc 2 283 67
	add	r1, r1, r2
	.loc 2 283 282
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #114]
	.loc 2 283 252
	lsrs	r2, r2, #2
	uxth	r2, r2
	.loc 2 283 317
	subs	r0, r2, #1
	.loc 2 283 369
	ldr	r2, [r7, #4]
	ands	r2, r2, r0
	lsls	r0, r2, #2
	.loc 2 283 153
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #110]
	.loc 2 283 134
	mov	r4, r2
	.loc 2 283 369
	ldr	r2, [r7, #4]
	ands	r2, r2, r4
	lsrs	r2, r2, #8
	.loc 2 283 207
	ldr	r4, .L35+4
	ldr	r4, [r4]
	ldrh	r4, [r4, #114]
	.loc 2 283 369
	mul	r2, r4, r2
	add	r2, r2, r0
	add	r2, r2, r1
	orr	r3, r3, #4096
	str	r3, [r2]
	b	.L33
.L32:
	.loc 2 287 56
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 287 88
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #112]
	.loc 2 287 67
	add	r2, r2, r3
	.loc 2 287 282
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 287 252
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 287 317
	subs	r1, r3, #1
	.loc 2 287 369
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	lsls	r1, r3, #2
	.loc 2 287 153
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 287 134
	mov	r0, r3
	.loc 2 287 369
	ldr	r3, [r7, #4]
	ands	r3, r3, r0
	lsrs	r3, r3, #8
	.loc 2 287 207
	ldr	r0, .L35+4
	ldr	r0, [r0]
	ldrh	r0, [r0, #114]
	.loc 2 287 369
	mul	r3, r0, r3
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 2 287 56
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	.loc 2 287 88
	ldr	r1, .L35+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #112]
	.loc 2 287 67
	add	r1, r1, r2
	.loc 2 287 282
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #114]
	.loc 2 287 252
	lsrs	r2, r2, #2
	uxth	r2, r2
	.loc 2 287 317
	subs	r0, r2, #1
	.loc 2 287 369
	ldr	r2, [r7, #4]
	ands	r2, r2, r0
	lsls	r0, r2, #2
	.loc 2 287 153
	ldr	r2, .L35+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #110]
	.loc 2 287 134
	mov	r4, r2
	.loc 2 287 369
	ldr	r2, [r7, #4]
	ands	r2, r2, r4
	lsrs	r2, r2, #8
	.loc 2 287 207
	ldr	r4, .L35+4
	ldr	r4, [r4]
	ldrh	r4, [r4, #114]
	.loc 2 287 369
	mul	r2, r4, r2
	add	r2, r2, r0
	add	r2, r2, r1
	bic	r3, r3, #4096
	str	r3, [r2]
.L33:
	.loc 2 290 9
	ldr	r0, [r7, #8]
	bl	Cy_SysLib_ExitCriticalSection
	.loc 2 292 16
	movs	r3, #0
	str	r3, [r7, #12]
.L31:
.LBE5:
	.loc 2 295 12
	ldr	r3, [r7, #12]
	.loc 2 296 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI22:
	.cfi_def_cfa_offset 12
	mov	sp, r7
.LCFI23:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L36:
	.align	2
.L35:
	.word	13500417
	.word	cy_device
	.cfi_endproc
.LFE140:
	.size	Cy_TrigMux_SetDebugFreeze, .-Cy_TrigMux_SetDebugFreeze
	.section	.text.Cy_TrigMux_SwTrigger,"ax",%progbits
	.align	1
	.global	Cy_TrigMux_SwTrigger
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_TrigMux_SwTrigger, %function
Cy_TrigMux_SwTrigger:
.LFB141:
	.loc 2 344 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI25:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI26:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 345 28
	ldr	r3, .L49
	str	r3, [r7, #12]
	.loc 2 347 83
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 347 64
	mov	r2, r3
	.loc 2 347 137
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #114]
	.loc 2 347 107
	lsrs	r3, r3, #2
	uxth	r3, r3
	.loc 2 347 172
	subs	r3, r3, #1
	.loc 2 347 104
	orrs	r3, r3, r2
	orr	r3, r3, #1073741824
	.loc 2 347 36
	mvns	r2, r3
	.loc 2 347 34
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	.loc 2 347 12
	cmp	r3, #0
	beq	.L38
	.loc 2 347 186 discriminator 1
	bl	CY_HALT
.L38:
	.loc 2 348 46
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 2 348 12
	cmp	r3, #31
	bhi	.L39
	.loc 2 348 62 discriminator 2
	ldr	r3, [r7]
	cmp	r3, #255
	bls	.L40
.L39:
	.loc 2 348 13 discriminator 3
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L40
	.loc 2 348 112 discriminator 4
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L40
	.loc 2 348 135 discriminator 5
	ldr	r3, [r7]
	cmp	r3, #255
	beq	.L40
	.loc 2 348 166 discriminator 6
	bl	CY_HALT
.L40:
	.loc 2 350 8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L41
	.loc 2 353 72
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 353 104
	ldr	r2, .L49+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #108]
	.loc 2 353 83
	add	r3, r3, r2
	.loc 2 353 31
	ldr	r3, [r3]
	.loc 2 353 124
	and	r3, r3, #-2147483648
	.loc 2 353 12
	cmp	r3, #-2147483648
	beq	.L42
.LBB6:
	.loc 2 358 60
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldrh	r3, [r3, #110]
	.loc 2 357 56
	orr	r3, r3, #1073741824
	orr	r3, r3, #255
	.loc 2 356 40
	ldr	r2, [r7, #4]
	ands	r3, r3, r2
	.loc 2 356 22
	orr	r3, r3, #-2147483648
	str	r3, [r7, #8]
	.loc 2 361 20
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 2 363 46
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 2 363 62
	cmp	r3, #31
	bhi	.L43
	.loc 2 363 62 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L44
.L43:
	.loc 2 363 62 discriminator 2
	movs	r3, #0
.L44:
	.loc 2 363 16 is_stmt 1 discriminator 4
	cmp	r3, #0
	beq	.L45
	.loc 2 365 142
	ldr	r3, [r7]
	lsls	r3, r3, #16
	.loc 2 365 151
	and	r2, r3, #16711680
	.loc 2 365 59
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 365 91
	ldr	r1, .L49+4
	ldr	r1, [r1]
	ldrh	r1, [r1, #108]
	.loc 2 365 70
	add	r3, r3, r1
	.loc 2 365 19
	mov	r1, r3
	.loc 2 365 119
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	.loc 2 365 111
	str	r3, [r1]
	b	.L42
.L45:
	.loc 2 367 21
	ldr	r3, [r7]
	cmp	r3, #2
	bne	.L46
	.loc 2 369 59
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 369 91
	ldr	r2, .L49+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #108]
	.loc 2 369 70
	add	r3, r3, r2
	.loc 2 369 19
	mov	r2, r3
	.loc 2 369 119
	ldr	r3, [r7, #8]
	orr	r3, r3, #536870912
	.loc 2 369 111
	str	r3, [r2]
	b	.L42
.L46:
	.loc 2 371 21
	ldr	r3, [r7]
	cmp	r3, #255
	bne	.L47
	.loc 2 373 59
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 373 91
	ldr	r2, .L49+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #108]
	.loc 2 373 70
	add	r3, r3, r2
	.loc 2 373 19
	mov	r2, r3
	.loc 2 373 111
	ldr	r3, [r7, #8]
	str	r3, [r2]
	b	.L42
.L47:
	.loc 2 377 24
	ldr	r3, .L49+8
	str	r3, [r7, #12]
	b	.L42
.L41:
.LBE6:
	.loc 2 384 72
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 384 104
	ldr	r2, .L49+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #108]
	.loc 2 384 83
	add	r3, r3, r2
	.loc 2 384 31
	ldr	r3, [r3]
	.loc 2 384 124
	and	r3, r3, #-2147483648
	.loc 2 384 12
	cmp	r3, #-2147483648
	bne	.L42
	.loc 2 386 55
	ldr	r3, .L49+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	.loc 2 386 87
	ldr	r2, .L49+4
	ldr	r2, [r2]
	ldrh	r2, [r2, #108]
	.loc 2 386 66
	add	r3, r3, r2
	.loc 2 386 15
	mov	r2, r3
	.loc 2 386 107
	movs	r3, #0
	str	r3, [r2]
	.loc 2 388 20
	movs	r3, #0
	str	r3, [r7, #12]
.L42:
	.loc 2 392 12
	ldr	r3, [r7, #12]
	.loc 2 393 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI27:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI28:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	13500418
	.word	cy_device
	.word	13500417
	.cfi_endproc
.LFE141:
	.size	Cy_TrigMux_SwTrigger, .-Cy_TrigMux_SwTrigger
	.text
.Letext0:
	.file 3 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/cy_device.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_trigmux.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x943
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x43
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x70
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x5
	.2byte	0x5fa
	.byte	0x1
	.4byte	0xf2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x600
	.byte	0x3
	.4byte	0xd6
	.uleb128 0x8
	.byte	0xc0
	.byte	0x6
	.byte	0x4b
	.byte	0x9
	.4byte	0x694
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x4f
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x50
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x51
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x52
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x53
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x56
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x57
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x58
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x5b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x5c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x60
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x64
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x65
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x66
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0x67
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.byte	0x6e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0x6f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0x70
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.byte	0x71
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x6
	.byte	0x72
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.byte	0x73
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.byte	0x74
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x6
	.byte	0x75
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x6
	.byte	0x76
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x6
	.byte	0x77
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.byte	0x78
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x6
	.byte	0x79
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x6
	.byte	0x7a
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x6
	.byte	0x7b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x53
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x6
	.byte	0x7c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x6
	.byte	0x7d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x55
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x6
	.byte	0x7e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x6
	.byte	0x7f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x57
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x6
	.byte	0x82
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x6
	.byte	0x83
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x6
	.byte	0x84
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x6
	.byte	0x8b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x6
	.byte	0x8c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x6
	.byte	0x8d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x6
	.byte	0x8e
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x6
	.byte	0x91
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x6
	.byte	0x92
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6e
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x6
	.byte	0x93
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x6
	.byte	0x94
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x6
	.byte	0x96
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x6
	.byte	0x97
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x6
	.byte	0x98
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x6
	.byte	0x99
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x6
	.byte	0x9b
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x6
	.byte	0x9c
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7a
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x6
	.byte	0x9d
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x6
	.byte	0x9e
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7e
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x6
	.byte	0xa1
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x6
	.byte	0xa2
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x6
	.byte	0xa3
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x6
	.byte	0xa4
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x6
	.byte	0xa5
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x6
	.byte	0xa8
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x6
	.byte	0xa9
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x6
	.byte	0xaa
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x6
	.byte	0xab
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x6
	.byte	0xac
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x6
	.byte	0xad
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x6
	.byte	0xae
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x6
	.byte	0xaf
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x6
	.byte	0xb0
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x6
	.byte	0xb1
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xaa
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x6
	.byte	0xb2
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x6
	.byte	0xb3
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xae
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x6
	.byte	0xb4
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x6
	.byte	0xb5
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb2
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x6
	.byte	0xb6
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x6
	.byte	0xb7
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb6
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x6
	.byte	0xb8
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x6
	.byte	0xbb
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x6
	.byte	0xbc
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x6
	.byte	0xbd
	.byte	0x3
	.4byte	0xff
	.uleb128 0xa
	.4byte	0x694
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.byte	0xc7
	.byte	0x20
	.4byte	0x6b3
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF115
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF116
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF117
	.uleb128 0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x7
	.2byte	0x14b
	.byte	0x1
	.4byte	0x6f6
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.4byte	0xce0001
	.uleb128 0xd
	.4byte	.LASF120
	.4byte	0xce0002
	.byte	0
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x14f
	.byte	0x3
	.4byte	0x6ce
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x157
	.byte	0x18
	.byte	0x1
	.4byte	0x6f6
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x76e
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x157
	.byte	0x36
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x157
	.byte	0x49
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x159
	.byte	0x1c
	.4byte	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x164
	.byte	0x16
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x10f
	.byte	0x18
	.byte	0x1
	.4byte	0x6f6
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x7d9
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x10f
	.byte	0x3b
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x10f
	.byte	0x48
	.4byte	0x7d9
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x111
	.byte	0x1c
	.4byte	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x115
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF131
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF132
	.byte	0x2
	.byte	0xdc
	.byte	0x18
	.byte	0x1
	.4byte	0x6f6
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x837
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x2
	.byte	0xdc
	.byte	0x35
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x2
	.byte	0xde
	.byte	0x1c
	.4byte	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x2
	.byte	0xe4
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF133
	.byte	0x2
	.byte	0xaa
	.byte	0x18
	.byte	0x1
	.4byte	0x6f6
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x8ac
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x2
	.byte	0xaa
	.byte	0x33
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x2
	.byte	0xaa
	.byte	0x40
	.4byte	0x7d9
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x2
	.byte	0xaa
	.byte	0x57
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x2
	.byte	0xac
	.byte	0x1c
	.4byte	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x2
	.byte	0xb3
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF136
	.byte	0x2
	.byte	0x6f
	.byte	0x18
	.byte	0x1
	.4byte	0x6f6
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x930
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x2
	.byte	0x6f
	.byte	0x34
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x2
	.byte	0x6f
	.byte	0x45
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x2
	.byte	0x6f
	.byte	0x52
	.4byte	0x7d9
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x2
	.byte	0x6f
	.byte	0x69
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x2
	.byte	0x71
	.byte	0x1c
	.4byte	0x6f6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x2
	.byte	0x79
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x14
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
	.uleb128 0x15
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
.LLST5:
	.4byte	.LFB141
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI28
	.4byte	.LFE141
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB140
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
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
	.sleb128 12
	.4byte	.LCFI23
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB139
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x77
	.sleb128 12
	.4byte	.LCFI18
	.4byte	.LFE139
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB138
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI13
	.4byte	.LFE138
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB137
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI8
	.4byte	.LFE137
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
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
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF57:
	.ascii	"protBusMasterMask\000"
.LASF124:
	.ascii	"retVal\000"
.LASF142:
	.ascii	"CY_HALT\000"
.LASF136:
	.ascii	"Cy_TrigMux_Connect\000"
.LASF67:
	.ascii	"flashCtlMainWs3Freq\000"
.LASF92:
	.ascii	"gpioPrtCfgInOffset\000"
.LASF135:
	.ascii	"trigType\000"
.LASF113:
	.ascii	"ipcLockStatusOffset\000"
.LASF33:
	.ascii	"cryptoVersion\000"
.LASF51:
	.ascii	"periClockNr\000"
.LASF40:
	.ascii	"cpussIpcIrqNr\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF89:
	.ascii	"periDiv24_5CtlOffset\000"
.LASF96:
	.ascii	"cpussCm4ClockCtlOffset\000"
.LASF21:
	.ascii	"cpussBase\000"
.LASF74:
	.ascii	"dwChCtlPrioPos\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF119:
	.ascii	"CY_TRIGMUX_BAD_PARAM\000"
.LASF78:
	.ascii	"periTrCmdOffset\000"
.LASF102:
	.ascii	"cpussSysTickCtlOffset\000"
.LASF60:
	.ascii	"flashPipeRequired\000"
.LASF64:
	.ascii	"flashCtlMainWs0Freq\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF83:
	.ascii	"periDivCmdTypeSelPos\000"
.LASF25:
	.ascii	"protBase\000"
.LASF35:
	.ascii	"ipcVersion\000"
.LASF103:
	.ascii	"cpussCm0NmiCtlOffset\000"
.LASF137:
	.ascii	"inTrig\000"
.LASF26:
	.ascii	"hsiomBase\000"
.LASF7:
	.ascii	"long int\000"
.LASF58:
	.ascii	"cryptoMemSize\000"
.LASF90:
	.ascii	"gpioPrtIntrCfgOffset\000"
.LASF23:
	.ascii	"periBase\000"
.LASF56:
	.ascii	"sysPmSimoPresent\000"
.LASF139:
	.ascii	"libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\so"
	.ascii	"urce\\cy_trigmux.c\000"
.LASF129:
	.ascii	"enable\000"
.LASF41:
	.ascii	"cpussDw0ChNr\000"
.LASF117:
	.ascii	"double\000"
.LASF88:
	.ascii	"periDiv16_5CtlOffset\000"
.LASF48:
	.ascii	"srssNumPll\000"
.LASF109:
	.ascii	"cpussRam0PwrCtl\000"
.LASF86:
	.ascii	"periDiv8CtlOffset\000"
.LASF93:
	.ascii	"gpioPrtCfgOutOffset\000"
.LASF22:
	.ascii	"flashcBase\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF71:
	.ascii	"tcpwmSMCPrecent\000"
.LASF53:
	.ascii	"passSarChannels\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF37:
	.ascii	"srssVersion\000"
.LASF99:
	.ascii	"cpussCm4PwrCtlOffset\000"
.LASF94:
	.ascii	"gpioPrtCfgSioOffset\000"
.LASF98:
	.ascii	"cpussCm0StatusOffset\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF79:
	.ascii	"periTrCmdGrSelMsk\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF130:
	.ascii	"interruptState\000"
.LASF39:
	.ascii	"cpussIpcNr\000"
.LASF27:
	.ascii	"gpioBase\000"
.LASF66:
	.ascii	"flashCtlMainWs2Freq\000"
.LASF80:
	.ascii	"periTrGrOffset\000"
.LASF107:
	.ascii	"cpussRam1Ctl0\000"
.LASF133:
	.ascii	"Cy_TrigMux_Select\000"
.LASF132:
	.ascii	"Cy_TrigMux_Deselect\000"
.LASF31:
	.ascii	"sar0Base\000"
.LASF81:
	.ascii	"periTrGrSize\000"
.LASF114:
	.ascii	"cy_stc_device_t\000"
.LASF118:
	.ascii	"CY_TRIGMUX_SUCCESS\000"
.LASF54:
	.ascii	"epMonitorNr\000"
.LASF126:
	.ascii	"Cy_TrigMux_SwTrigger\000"
.LASF104:
	.ascii	"cpussCm4NmiCtlOffset\000"
.LASF100:
	.ascii	"cpussTrimRamCtlOffset\000"
.LASF95:
	.ascii	"cpussCm0ClockCtlOffset\000"
.LASF32:
	.ascii	"cpussVersion\000"
.LASF140:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF36:
	.ascii	"periVersion\000"
.LASF72:
	.ascii	"dwChOffset\000"
.LASF43:
	.ascii	"cpussFlashPaSize\000"
.LASF85:
	.ascii	"periDivCmdPaTypeSelPos\000"
.LASF108:
	.ascii	"cpussRam2Ctl0\000"
.LASF122:
	.ascii	"trigLine\000"
.LASF125:
	.ascii	"trCmd\000"
.LASF111:
	.ascii	"cpussRam2PwrCtl\000"
.LASF76:
	.ascii	"dwStatusChIdxPos\000"
.LASF55:
	.ascii	"udbPresent\000"
.LASF50:
	.ascii	"srssIsPiloPresent\000"
.LASF28:
	.ascii	"passBase\000"
.LASF30:
	.ascii	"cryptoBase\000"
.LASF52:
	.ascii	"smifDeviceNr\000"
.LASF128:
	.ascii	"outTrig\000"
.LASF116:
	.ascii	"float\000"
.LASF77:
	.ascii	"dwStatusChIdxMsk\000"
.LASF141:
	.ascii	"cy_device\000"
.LASF105:
	.ascii	"cpussRomCtl\000"
.LASF75:
	.ascii	"dwChCtlPreemptablePos\000"
.LASF24:
	.ascii	"udbBase\000"
.LASF131:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"flashCtlMainWs4Freq\000"
.LASF4:
	.ascii	"short int\000"
.LASF106:
	.ascii	"cpussRam0Ctl0\000"
.LASF19:
	.ascii	"TRIGGER_TYPE_EDGE\000"
.LASF123:
	.ascii	"cycles\000"
.LASF70:
	.ascii	"tcpwmAMCPresent\000"
.LASF82:
	.ascii	"periDivCmdDivSelMsk\000"
.LASF121:
	.ascii	"cy_en_trigmux_status_t\000"
.LASF49:
	.ascii	"srssNumHfroot\000"
.LASF63:
	.ascii	"flashEraseDelay\000"
.LASF45:
	.ascii	"cpussFmIrq\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF69:
	.ascii	"tcpwmCC1Present\000"
.LASF17:
	.ascii	"long double\000"
.LASF127:
	.ascii	"Cy_TrigMux_SetDebugFreeze\000"
.LASF115:
	.ascii	"char\000"
.LASF110:
	.ascii	"cpussRam1PwrCtl\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF87:
	.ascii	"periDiv16CtlOffset\000"
.LASF20:
	.ascii	"en_trig_type_t\000"
.LASF18:
	.ascii	"TRIGGER_TYPE_LEVEL\000"
.LASF65:
	.ascii	"flashCtlMainWs1Freq\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF73:
	.ascii	"dwChSize\000"
.LASF112:
	.ascii	"ipcStructSize\000"
.LASF44:
	.ascii	"cpussIpc0Irq\000"
.LASF91:
	.ascii	"gpioPrtCfgOffset\000"
.LASF42:
	.ascii	"cpussDw1ChNr\000"
.LASF46:
	.ascii	"cpussNotConnectedIrq\000"
.LASF61:
	.ascii	"flashWriteDelay\000"
.LASF38:
	.ascii	"passVersion\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF97:
	.ascii	"cpussCm4StatusOffset\000"
.LASF120:
	.ascii	"CY_TRIGMUX_INVALID_STATE\000"
.LASF138:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF101:
	.ascii	"cpussTrimRomCtlOffset\000"
.LASF47:
	.ascii	"srssNumClkpath\000"
.LASF34:
	.ascii	"dwVersion\000"
.LASF29:
	.ascii	"ipcBase\000"
.LASF84:
	.ascii	"periDivCmdPaDivSelPos\000"
.LASF62:
	.ascii	"flashProgramDelay\000"
.LASF134:
	.ascii	"invert\000"
.LASF59:
	.ascii	"flashRwwRequired\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
