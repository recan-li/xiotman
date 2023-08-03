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
	.file	"cy_sd_host.c"
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
	.section	.text.Cy_SD_Host_EnableSdClk,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_EnableSdClk, %function
Cy_SD_Host_EnableSdClk:
.LFB137:
	.file 2 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_sd_host.h"
	.loc 2 1651 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI5:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI6:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1653 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L4
	.loc 2 1655 107
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 2 1655 55
	orr	r3, r3, #12
	uxth	r2, r3
	.loc 2 1655 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
.L4:
	.loc 2 1659 1
	nop
	adds	r7, r7, #12
.LCFI7:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI8:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI9:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE137:
	.size	Cy_SD_Host_EnableSdClk, .-Cy_SD_Host_EnableSdClk
	.section	.text.Cy_SD_Host_DisableSdClk,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_DisableSdClk, %function
Cy_SD_Host_DisableSdClk:
.LFB138:
	.loc 2 1673 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI11:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI12:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1675 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L7
	.loc 2 1678 100
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 2 1678 56
	bic	r3, r3, #4
	uxth	r2, r3
	.loc 2 1678 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
	.loc 2 1682 9
	movs	r0, #8
	bl	Cy_SysLib_DelayUs
	.loc 2 1685 100
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 2 1685 56
	bic	r3, r3, #8
	uxth	r2, r3
	.loc 2 1685 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
.L7:
	.loc 2 1688 1
	nop
	adds	r7, r7, #8
.LCFI13:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI14:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE138:
	.size	Cy_SD_Host_DisableSdClk, .-Cy_SD_Host_DisableSdClk
	.section	.text.Cy_SD_Host_BufferRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_BufferRead, %function
Cy_SD_Host_BufferRead:
.LFB139:
	.loc 2 1706 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI16:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI17:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1708 43
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #32]
	.loc 2 1709 1
	mov	r0, r3
	adds	r7, r7, #12
.LCFI18:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI19:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI20:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE139:
	.size	Cy_SD_Host_BufferRead, .-Cy_SD_Host_BufferRead
	.section	.text.Cy_SD_Host_BufferWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_BufferWrite, %function
Cy_SD_Host_BufferWrite:
.LFB140:
	.loc 2 1729 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI21:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI22:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI23:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 1730 28
	ldr	r3, .L13
	str	r3, [r7, #12]
	.loc 2 1733 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L11
	.loc 2 1735 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	mov	r2, r3
	ldr	r3, [r7]
	str	r3, [r2, #32]
	.loc 2 1737 13
	movs	r3, #0
	str	r3, [r7, #12]
.L11:
	.loc 2 1740 12
	ldr	r3, [r7, #12]
	.loc 2 1741 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI24:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI25:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI26:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L14:
	.align	2
.L13:
	.word	15335426
	.cfi_endproc
.LFE140:
	.size	Cy_SD_Host_BufferWrite, .-Cy_SD_Host_BufferWrite
	.section	.text.Cy_SD_Host_GetNormalInterruptStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetNormalInterruptStatus, %function
Cy_SD_Host_GetNormalInterruptStatus:
.LFB150:
	.loc 2 1972 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI28:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI29:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1975 52
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #48]	@ movhi
	uxth	r3, r3
	.loc 2 1975 9
	str	r3, [r7, #12]
	.loc 2 1977 12
	ldr	r3, [r7, #12]
	.loc 2 1978 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI30:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI31:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI32:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE150:
	.size	Cy_SD_Host_GetNormalInterruptStatus, .-Cy_SD_Host_GetNormalInterruptStatus
	.section	.text.Cy_SD_Host_ClearNormalInterruptStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_ClearNormalInterruptStatus, %function
Cy_SD_Host_ClearNormalInterruptStatus:
.LFB151:
	.loc 2 1995 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI33:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI34:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI35:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 1996 58
	ldr	r3, [r7]
	uxth	r2, r3
	.loc 2 1996 56
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #48]	@ movhi
	.loc 2 1997 1
	nop
	adds	r7, r7, #12
.LCFI36:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI37:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI38:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE151:
	.size	Cy_SD_Host_ClearNormalInterruptStatus, .-Cy_SD_Host_ClearNormalInterruptStatus
	.section	.text.Cy_SD_Host_SetNormalInterruptEnable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetNormalInterruptEnable, %function
Cy_SD_Host_SetNormalInterruptEnable:
.LFB152:
	.loc 2 2014 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI39:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI40:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI41:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 2015 61
	ldr	r3, [r7]
	uxth	r2, r3
	.loc 2 2015 59
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #52]	@ movhi
	.loc 2 2016 1
	nop
	adds	r7, r7, #12
.LCFI42:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI43:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI44:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE152:
	.size	Cy_SD_Host_SetNormalInterruptEnable, .-Cy_SD_Host_SetNormalInterruptEnable
	.section	.text.Cy_SD_Host_GetErrorInterruptStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetErrorInterruptStatus, %function
Cy_SD_Host_GetErrorInterruptStatus:
.LFB156:
	.loc 2 2098 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI45:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI46:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI47:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 2101 52
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #50]	@ movhi
	uxth	r3, r3
	.loc 2 2101 9
	str	r3, [r7, #12]
	.loc 2 2103 12
	ldr	r3, [r7, #12]
	.loc 2 2104 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI48:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI49:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI50:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE156:
	.size	Cy_SD_Host_GetErrorInterruptStatus, .-Cy_SD_Host_GetErrorInterruptStatus
	.section	.text.Cy_SD_Host_ClearErrorInterruptStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_ClearErrorInterruptStatus, %function
Cy_SD_Host_ClearErrorInterruptStatus:
.LFB157:
	.loc 2 2121 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI51:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI52:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI53:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 2122 57
	ldr	r3, [r7]
	uxth	r2, r3
	.loc 2 2122 55
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #50]	@ movhi
	.loc 2 2123 1
	nop
	adds	r7, r7, #12
.LCFI54:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI55:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI56:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE157:
	.size	Cy_SD_Host_ClearErrorInterruptStatus, .-Cy_SD_Host_ClearErrorInterruptStatus
	.section	.text.Cy_SD_Host_SetErrorInterruptEnable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetErrorInterruptEnable, %function
Cy_SD_Host_SetErrorInterruptEnable:
.LFB158:
	.loc 2 2141 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI57:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI58:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI59:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 2 2142 60
	ldr	r3, [r7]
	uxth	r2, r3
	.loc 2 2142 58
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #54]	@ movhi
	.loc 2 2143 1
	nop
	adds	r7, r7, #12
.LCFI60:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI61:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI62:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE158:
	.size	Cy_SD_Host_SetErrorInterruptEnable, .-Cy_SD_Host_SetErrorInterruptEnable
	.section	.text.Cy_SD_Host_eMMC_InitCard,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_eMMC_InitCard, %function
Cy_SD_Host_eMMC_InitCard:
.LFB162:
	.file 3 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\source\\cy_sd_host.c"
	.loc 3 450 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 584
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI63:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #584
.LCFI64:
	.cfi_def_cfa_offset 592
	add	r7, sp, #0
.LCFI65:
	.cfi_def_cfa_register 7
	add	r3, r7, #584
	sub	r3, r3, #572
	str	r0, [r3]
	add	r3, r7, #584
	sub	r3, r3, #576
	str	r1, [r3]
	add	r3, r7, #584
	sub	r3, r3, #580
	str	r2, [r3]
	.loc 3 451 28
	movs	r3, #0
	str	r3, [r7, #580]
	.loc 3 452 36
	movs	r3, #5
	strb	r3, [r7, #575]
	.loc 3 456 14
	add	r3, r7, #584
	sub	r3, r3, #548
	mov	r0, r3
	mov	r3, #512
	mov	r2, r3
	movs	r1, #0
	bl	memset
	.loc 3 461 11
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_OpsGoIdle
	str	r0, [r7, #580]
	.loc 3 464 5
	add	r3, r7, #584
	sub	r3, r3, #572
	movs	r1, #0
	ldr	r0, [r3]
	bl	Cy_SD_Host_SoftwareReset
	.loc 3 465 5
	add	r3, r7, #584
	sub	r3, r3, #572
	movs	r1, #1
	ldr	r0, [r3]
	bl	Cy_SD_Host_SoftwareReset
	.loc 3 467 11
	mov	r3, #1000
	str	r3, [r7, #576]
	.loc 3 468 11
	b	.L24
.L28:
	.loc 3 471 15
	add	r1, r7, #564
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, .L39
	ldr	r0, [r3]
	bl	Cy_SD_Host_MmcOpsSendOpCond
	str	r0, [r7, #580]
	.loc 3 473 31
	add	r3, r7, #584
	sub	r3, r3, #580
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3, #1]
	.loc 3 476 39
	ldr	r3, [r7, #564]
	and	r3, r3, #1073741824
	.loc 3 476 12
	cmp	r3, #0
	beq	.L25
	.loc 3 478 35
	add	r3, r7, #584
	sub	r3, r3, #580
	ldr	r3, [r3]
	movs	r2, #1
	strb	r2, [r3, #1]
.L25:
	.loc 3 481 12
	ldr	r3, [r7, #580]
	cmp	r3, #0
	beq	.L37
	.loc 3 487 13
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_ErrorReset
	.loc 3 489 13
	mov	r0, #1000
	bl	Cy_SysLib_DelayUs
	.loc 3 491 14
	ldr	r3, [r7, #576]
	subs	r3, r3, #1
	str	r3, [r7, #576]
.L24:
	.loc 3 468 11
	ldr	r3, [r7, #576]
	cmp	r3, #0
	bne	.L28
	b	.L27
.L37:
	.loc 3 483 13
	nop
.L27:
	.loc 3 495 23
	add	r3, r7, #584
	sub	r3, r3, #576
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 495 8
	cmp	r3, #0
	beq	.L29
	.loc 3 496 36 discriminator 1
	ldr	r3, [r7, #564]
	and	r3, r3, #128
	.loc 3 495 46 discriminator 1
	cmp	r3, #0
	beq	.L29
	.loc 3 499 9
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_DisableCardVoltage
	.loc 3 501 9
	movs	r0, #30
	bl	Cy_SysLib_Delay
	.loc 3 504 9
	add	r3, r7, #584
	sub	r3, r3, #572
	movs	r1, #1
	ldr	r0, [r3]
	bl	Cy_SD_Host_ChangeIoVoltage
	.loc 3 506 9
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_EnableCardVoltage
	.loc 3 507 15
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r1, .L39+4
	ldr	r0, [r3]
	bl	Cy_SD_Host_SdCardChangeClock
	.loc 3 510 9
	movs	r0, #30
	bl	Cy_SysLib_Delay
	.loc 3 512 15
	mov	r3, #1000
	str	r3, [r7, #576]
	.loc 3 513 15
	b	.L30
.L32:
	.loc 3 516 19
	add	r1, r7, #564
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, .L39
	ldr	r0, [r3]
	bl	Cy_SD_Host_MmcOpsSendOpCond
	str	r0, [r7, #580]
	.loc 3 518 13
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_ErrorReset
	.loc 3 520 16
	ldr	r3, [r7, #580]
	cmp	r3, #0
	beq	.L38
	.loc 3 525 13
	mov	r0, #1000
	bl	Cy_SysLib_DelayUs
	.loc 3 526 18
	ldr	r3, [r7, #576]
	subs	r3, r3, #1
	str	r3, [r7, #576]
.L30:
	.loc 3 513 15
	ldr	r3, [r7, #576]
	cmp	r3, #0
	bne	.L32
	b	.L29
.L38:
	.loc 3 522 17
	nop
.L29:
	.loc 3 530 8
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L33
	.loc 3 533 15
	add	r2, r7, #548
	add	r3, r7, #584
	sub	r3, r3, #572
	mov	r1, r2
	ldr	r0, [r3]
	bl	Cy_SD_Host_GetCid
	str	r0, [r7, #580]
	.loc 3 535 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 537 12
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L33
	.loc 3 540 28
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r0, [r3]
	bl	Cy_SD_Host_GetRca
	mov	r2, r0
	.loc 3 540 26
	add	r3, r7, #584
	sub	r3, r3, #580
	ldr	r3, [r3]
	str	r2, [r3, #8]
	.loc 3 545 19
	add	r3, r7, #584
	sub	r2, r3, #580
	add	r1, r7, #20
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	Cy_SD_Host_GetCsd
	str	r0, [r7, #580]
	.loc 3 547 16
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L33
	.loc 3 550 23
	add	r3, r7, #584
	sub	r2, r3, #580
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	Cy_SD_Host_OpsSelectCard
	str	r0, [r7, #580]
	.loc 3 552 20
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L33
	.loc 3 557 27
	add	r3, r7, #584
	sub	r2, r3, #580
	add	r1, r7, #36
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	Cy_SD_Host_GetExtCsd
	str	r0, [r7, #580]
	.loc 3 561 46
	add	r3, r7, #584
	sub	r3, r3, #548
	ldr	r3, [r3, #248]
	.loc 3 561 54
	uxtb	r2, r3
	.loc 3 560 37
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #568]
	.loc 3 564 24
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L34
	.loc 3 565 62 discriminator 1
	add	r3, r7, #584
	sub	r3, r3, #576
	ldr	r3, [r3]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 564 53 discriminator 1
	cmp	r3, #0
	beq	.L34
	.loc 3 568 35
	add	r3, r7, #584
	sub	r3, r3, #576
	ldr	r3, [r3]
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	add	r3, r7, #584
	sub	r2, r3, #580
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	Cy_SD_Host_SetBusWidth
	str	r0, [r7, #580]
	.loc 3 572 29
	ldr	r0, [r7, #568]
	bl	Cy_SysLib_Delay
.L34:
	.loc 3 575 24
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L33
	.loc 3 578 31
	add	r3, r7, #584
	sub	r2, r3, #580
	ldrb	r1, [r7, #575]	@ zero_extendqisi2
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	Cy_SD_Host_SetBusSpeedMode
	str	r0, [r7, #580]
	.loc 3 581 28
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L35
	.loc 3 583 35
	add	r3, r7, #584
	sub	r3, r3, #572
	ldr	r1, .L39+8
	ldr	r0, [r3]
	bl	Cy_SD_Host_SdCardChangeClock
.L35:
	.loc 3 585 25
	movs	r0, #100
	bl	Cy_SysLib_Delay
.L33:
	.loc 3 592 12
	ldr	r3, [r7, #580]
	.loc 3 593 1
	mov	r0, r3
	add	r7, r7, #584
.LCFI66:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI67:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	1090486400
	.word	400000
	.word	25000000
	.cfi_endproc
.LFE162:
	.size	Cy_SD_Host_eMMC_InitCard, .-Cy_SD_Host_eMMC_InitCard
	.section	.text.Cy_SD_Host_InitCard,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_InitCard
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_InitCard, %function
Cy_SD_Host_InitCard:
.LFB163:
	.loc 3 647 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI68:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #88
.LCFI69:
	.cfi_def_cfa_offset 96
	add	r7, sp, #16
.LCFI70:
	.cfi_def_cfa 7, 80
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 648 28
	ldr	r3, .L73
	str	r3, [r7, #68]
	.loc 3 649 36
	movs	r3, #0
	strb	r3, [r7, #67]
	.loc 3 653 14
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 3 654 14
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 655 9
	movs	r3, #0
	strb	r3, [r7, #66]
	.loc 3 656 9
	movs	r3, #0
	strb	r3, [r7, #19]
	.loc 3 658 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L42
	.loc 3 658 23 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L42
	.loc 3 658 44 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L42
	.loc 3 660 48
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 660 17
	cmp	r3, #2
	bne	.L43
	.loc 3 660 102 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 660 169 discriminator 1
	cmp	r3, #0
	beq	.L44
	.loc 3 660 156 discriminator 3
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 660 115 discriminator 3
	cmp	r3, #1
	beq	.L44
	.loc 3 660 210 discriminator 5
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 660 169 discriminator 5
	cmp	r3, #2
	beq	.L44
	.loc 3 660 169 is_stmt 0 discriminator 7
	movs	r3, #1
	b	.L45
.L44:
	.loc 3 660 169 discriminator 8
	movs	r3, #0
.L45:
	.loc 3 660 17 is_stmt 1 discriminator 10
	and	r3, r3, #1
	uxtb	r3, r3
	b	.L46
.L43:
	.loc 3 660 265 discriminator 2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 660 278 discriminator 2
	cmp	r3, #0
	beq	.L47
	.loc 3 660 319 discriminator 12
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 660 278 discriminator 12
	cmp	r3, #1
	beq	.L47
	.loc 3 660 278 is_stmt 0 discriminator 14
	movs	r3, #1
	b	.L48
.L47:
	.loc 3 660 278 discriminator 15
	movs	r3, #0
.L48:
	.loc 3 660 17 is_stmt 1 discriminator 17
	and	r3, r3, #1
	uxtb	r3, r3
.L46:
	.loc 3 660 16 discriminator 18
	cmp	r3, #0
	beq	.L49
	.loc 3 660 338 discriminator 19
	bl	CY_HALT
.L49:
	.loc 3 663 21
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_IsCardConnected
	mov	r3, r0
	.loc 3 663 12
	cmp	r3, #0
	bne	.L50
	.loc 3 664 40 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 663 55 discriminator 1
	cmp	r3, #2
	bne	.L51
.L50:
	.loc 3 666 13
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_EnableCardVoltage
	.loc 3 668 13
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_ChangeIoVoltage
	.loc 3 671 19
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetHostBusWidth
	.loc 3 674 19
	ldr	r1, .L73+4
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdCardChangeClock
	.loc 3 677 13
	mov	r0, #1000
	bl	Cy_SysLib_Delay
	.loc 3 679 26
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 3 681 43
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 681 16
	cmp	r3, #2
	beq	.L52
	.loc 3 684 26
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_VoltageCheck
	mov	r3, r0
	strb	r3, [r7, #66]
	.loc 3 687 20
	ldrb	r3, [r7, #66]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L53
	.loc 3 689 43
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #1]
.L53:
	.loc 3 693 17
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_NormalReset
	.loc 3 694 17
	movs	r0, #1
	bl	Cy_SysLib_Delay
	.loc 3 697 23
	ldr	r3, [r7, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r0, r7, #24
	add	r2, r7, #20
	add	r3, r7, #60
	str	r3, [sp, #4]
	add	r3, r7, #19
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_IoOcr
	str	r0, [r7, #68]
	.loc 3 707 21
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	.loc 3 707 20
	cmp	r3, #0
	bne	.L54
	.loc 3 707 36 discriminator 1
	ldr	r3, [r7, #24]
	.loc 3 707 28 discriminator 1
	cmp	r3, #0
	bne	.L55
.L54:
	.loc 3 710 27
	ldr	r3, [r7, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r0, r7, #19
	add	r2, r7, #20
	ldr	r3, [r7, #4]
	str	r3, [sp, #8]
	add	r3, r7, #60
	str	r3, [sp, #4]
	ldrb	r3, [r7, #66]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdOcr
	str	r0, [r7, #68]
.L55:
	.loc 3 720 20
	ldr	r3, [r7, #68]
	ldr	r2, .L73+8
	cmp	r3, r2
	beq	.L56
	.loc 3 722 29
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	.loc 3 722 24
	cmp	r3, #0
	beq	.L57
	.loc 3 724 33
	ldr	r3, [r7, #24]
	.loc 3 724 28
	cmp	r3, #0
	beq	.L58
	.loc 3 726 47
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #12]
	b	.L59
.L58:
	.loc 3 730 47
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #12]
	b	.L59
.L57:
	.loc 3 733 34
	ldr	r3, [r7, #24]
	.loc 3 733 29
	cmp	r3, #0
	beq	.L60
	.loc 3 735 43
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #12]
	b	.L59
.L74:
	.align	2
.L73:
	.word	15335426
	.word	400000
	.word	15335431
.L60:
	.loc 3 740 29
	ldr	r3, .L75
	str	r3, [r7, #68]
	.loc 3 742 43
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #12]
.L59:
	.loc 3 745 24
	ldr	r3, [r7, #68]
	ldr	r2, .L75
	cmp	r3, r2
	beq	.L56
	.loc 3 747 34
	ldr	r3, [r7, #20]
	.loc 3 747 28
	cmp	r3, #1
	bne	.L61
	.loc 3 747 57 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 747 47 discriminator 1
	cmp	r3, #0
	beq	.L61
	.loc 3 750 35
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsVoltageSwitch
	str	r0, [r7, #68]
	.loc 3 752 32
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L61
	.loc 3 754 33
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_ChangeIoVoltage
	.loc 3 757 33
	mov	r0, #1000
	bl	Cy_SysLib_Delay
	.loc 3 760 42
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_VoltageCheck
	mov	r3, r0
	strb	r3, [r7, #66]
	.loc 3 762 41
	ldr	r3, [r7, #24]
	.loc 3 762 36
	cmp	r3, #0
	beq	.L62
	.loc 3 765 43
	ldr	r3, [r7, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r0, r7, #24
	add	r2, r7, #20
	add	r3, r7, #60
	str	r3, [sp, #4]
	add	r3, r7, #19
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_IoOcr
	str	r0, [r7, #68]
.L62:
	.loc 3 773 37
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	.loc 3 773 36
	cmp	r3, #0
	beq	.L63
	.loc 3 776 43
	ldr	r3, [r7, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	add	r0, r7, #19
	add	r2, r7, #20
	ldr	r3, [r7, #4]
	str	r3, [sp, #8]
	add	r3, r7, #60
	str	r3, [sp, #4]
	ldrb	r3, [r7, #66]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdOcr
	str	r0, [r7, #68]
.L63:
	.loc 3 785 42
	movs	r3, #0
	str	r3, [r7, #20]
.L61:
	.loc 3 789 55
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 789 28
	cmp	r3, #1
	beq	.L64
	.loc 3 792 35
	add	r3, r7, #44
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetCid
	str	r0, [r7, #68]
	.loc 3 794 29
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
.L64:
	.loc 3 798 40
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetRca
	mov	r2, r0
	.loc 3 798 38
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 3 800 25
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 802 55
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 802 28
	cmp	r3, #1
	beq	.L65
	.loc 3 807 35
	add	r3, r7, #28
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetCsd
	str	r0, [r7, #68]
	.loc 3 809 56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 3 809 32
	cmp	r3, #67108864
	bcc	.L66
	.loc 3 811 54
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #1]
.L66:
	.loc 3 814 29
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
.L65:
	.loc 3 817 28
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L67
	.loc 3 820 35
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSelectCard
	str	r0, [r7, #68]
.L67:
	.loc 3 823 28
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L56
	.loc 3 824 56 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 823 57 discriminator 1
	cmp	r3, #1
	beq	.L56
	.loc 3 827 69
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 827 32
	cmp	r3, #0
	beq	.L68
	.loc 3 829 39
	ldr	r2, [r7, #4]
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetBusWidth
	str	r0, [r7, #68]
	.loc 3 832 33
	movs	r0, #100
	bl	Cy_SysLib_Delay
.L68:
	.loc 3 835 32
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L56
	.loc 3 838 80
	ldr	r3, [r7, #20]
	.loc 3 838 94
	cmp	r3, #0
	beq	.L69
	.loc 3 838 103 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 838 94 discriminator 1
	cmp	r3, #0
	beq	.L69
	.loc 3 838 94 is_stmt 0 discriminator 3
	movs	r3, #1
	b	.L70
.L69:
	.loc 3 838 94 discriminator 4
	movs	r3, #0
.L70:
	.loc 3 838 45 is_stmt 1 discriminator 6
	and	r3, r3, #1
	uxtb	r1, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_FindBusSpeedMode
	mov	r3, r0
	strb	r3, [r7, #67]
	.loc 3 839 33 discriminator 6
	movs	r0, #100
	bl	Cy_SysLib_Delay
	.loc 3 843 39 discriminator 6
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetBusSpeedMode
	str	r0, [r7, #68]
	.loc 3 846 33 discriminator 6
	movs	r0, #100
	bl	Cy_SysLib_Delay
	.loc 3 848 36 discriminator 6
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L71
	.loc 3 850 43
	ldr	r1, .L75+4
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdCardChangeClock
.L71:
	.loc 3 853 33
	movs	r0, #100
	bl	Cy_SysLib_Delay
	b	.L56
.L52:
	.loc 3 861 23
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_eMMC_InitCard
	str	r0, [r7, #68]
.L56:
	.loc 3 864 20
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 864 35
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	.loc 3 864 26
	str	r2, [r3]
	.loc 3 865 20
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	.loc 3 865 40
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	.loc 3 865 31
	strb	r2, [r3]
	.loc 3 866 20
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	.loc 3 866 44
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	.loc 3 866 35
	strb	r2, [r3]
	b	.L42
.L51:
	.loc 3 871 17
	ldr	r3, .L75+8
	str	r3, [r7, #68]
.L42:
	.loc 3 875 12
	ldr	r3, [r7, #68]
	.loc 3 876 1
	mov	r0, r3
	adds	r7, r7, #72
.LCFI71:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI72:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L76:
	.align	2
.L75:
	.word	15335431
	.word	25000000
	.word	15335432
	.cfi_endproc
.LFE163:
	.size	Cy_SD_Host_InitCard, .-Cy_SD_Host_InitCard
	.section	.text.Cy_SD_Host_Read,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Read
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Read, %function
Cy_SD_Host_Read:
.LFB164:
	.loc 3 910 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI73:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
.LCFI74:
	.cfi_def_cfa_offset 88
	add	r7, sp, #0
.LCFI75:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 911 28
	ldr	r3, .L90
	str	r3, [r7, #76]
	.loc 3 918 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L78
	.loc 3 918 26 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L78
	.loc 3 918 64 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 918 46 discriminator 2
	cmp	r3, #0
	beq	.L78
	.loc 3 920 56
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 920 16
	cmp	r3, #0
	beq	.L79
	.loc 3 920 109 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 920 72 discriminator 1
	cmp	r3, #1
	beq	.L79
	.loc 3 920 162 discriminator 2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 920 125 discriminator 2
	cmp	r3, #2
	beq	.L79
	.loc 3 920 217 discriminator 3
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 920 17 discriminator 3
	cmp	r3, #3
	beq	.L79
	.loc 3 920 238 discriminator 4
	bl	CY_HALT
.L79:
	.loc 3 921 38
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	.loc 3 921 16
	cmp	r3, #14
	bls	.L80
	.loc 3 921 58 discriminator 1
	bl	CY_HALT
.L80:
	.loc 3 922 52
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 922 16
	cmp	r3, #0
	beq	.L81
	.loc 3 922 100 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 922 17 discriminator 1
	cmp	r3, #2
	beq	.L81
	.loc 3 922 117 discriminator 2
	bl	CY_HALT
.L81:
	.loc 3 924 21
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #72]
	.loc 3 926 29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 3 926 12
	cmp	r3, #0
	beq	.L82
	.loc 3 927 23 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	.loc 3 927 38 discriminator 1
	ldr	r3, [r7, #72]
	subs	r2, r2, r3
	.loc 3 927 61 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 926 13 discriminator 1
	cmp	r2, r3
	bcc	.L78
.L82:
	.loc 3 929 43
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 929 16
	cmp	r3, #0
	bne	.L83
	.loc 3 931 29
	ldr	r3, [r7, #72]
	lsls	r3, r3, #9
	str	r3, [r7, #72]
.L83:
	.loc 3 934 29
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 934 16
	cmp	r3, #1
	bls	.L84
	.loc 3 936 34
	movs	r3, #18
	str	r3, [r7, #52]
	.loc 3 937 48
	movs	r3, #1
	strb	r3, [r7, #48]
	b	.L85
.L84:
	.loc 3 941 34
	movs	r3, #17
	str	r3, [r7, #52]
	.loc 3 942 48
	movs	r3, #0
	strb	r3, [r7, #48]
.L85:
	.loc 3 945 34
	mov	r3, #512
	str	r3, [r7, #28]
	.loc 3 946 46
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 946 38
	str	r3, [r7, #32]
	.loc 3 947 42
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	.loc 3 947 34
	strb	r3, [r7, #36]
	.loc 3 948 44
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 948 36
	strb	r3, [r7, #37]
	.loc 3 949 29
	movs	r3, #1
	strb	r3, [r7, #38]
	.loc 3 950 44
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	.loc 3 950 36
	str	r3, [r7, #44]
	.loc 3 951 48
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 3 951 40
	strb	r3, [r7, #49]
	.loc 3 953 35
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	.loc 3 953 16
	cmp	r3, #0
	beq	.L86
	.loc 3 954 49 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 953 47 discriminator 1
	cmp	r3, #2
	bne	.L86
	.loc 3 956 42
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 956 24
	lsls	r3, r3, #9
	str	r3, [r7, #68]
	.loc 3 962 46
	ldr	r3, [r7, #68]
	lsls	r3, r3, #16
	.loc 3 961 56
	orr	r3, r3, #35
	.loc 3 958 36
	str	r3, [r7, #20]
	.loc 3 964 54
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 964 36
	str	r3, [r7, #24]
	.loc 3 967 33
	add	r3, r7, #20
	str	r3, [r7, #40]
	b	.L87
.L86:
	.loc 3 972 35
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 972 33
	str	r3, [r7, #40]
.L87:
	.loc 3 975 19
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	str	r0, [r7, #76]
	.loc 3 977 16
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L78
	.loc 3 979 37
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	.loc 3 980 33
	movs	r3, #1
	strb	r3, [r7, #64]
	.loc 3 981 50
	movs	r3, #0
	strb	r3, [r7, #61]
	.loc 3 982 30
	movs	r3, #2
	strb	r3, [r7, #62]
	.loc 3 983 36
	movs	r3, #1
	strb	r3, [r7, #60]
	.loc 3 984 36
	movs	r3, #1
	strb	r3, [r7, #63]
	.loc 3 985 29
	movs	r3, #0
	strb	r3, [r7, #65]
	.loc 3 987 23
	add	r3, r7, #52
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #76]
	.loc 3 989 20
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L88
	.loc 3 992 27
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #76]
.L88:
	.loc 3 995 20
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L78
	.loc 3 996 40 discriminator 1
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	.loc 3 996 27 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 995 49 discriminator 1
	cmp	r3, #0
	beq	.L78
	.loc 3 999 27
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #76]
.L78:
	.loc 3 1005 12
	ldr	r3, [r7, #76]
	.loc 3 1006 1
	mov	r0, r3
	adds	r7, r7, #80
.LCFI76:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI77:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	15335426
	.cfi_endproc
.LFE164:
	.size	Cy_SD_Host_Read, .-Cy_SD_Host_Read
	.section	.text.Cy_SD_Host_Write,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Write
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Write, %function
Cy_SD_Host_Write:
.LFB165:
	.loc 3 1040 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI78:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
.LCFI79:
	.cfi_def_cfa_offset 88
	add	r7, sp, #0
.LCFI80:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 1041 28
	ldr	r3, .L105
	str	r3, [r7, #76]
	.loc 3 1048 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L93
	.loc 3 1048 26 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L93
	.loc 3 1048 64 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 1048 46 discriminator 2
	cmp	r3, #0
	beq	.L93
	.loc 3 1050 56
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1050 16
	cmp	r3, #0
	beq	.L94
	.loc 3 1050 109 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1050 72 discriminator 1
	cmp	r3, #1
	beq	.L94
	.loc 3 1050 162 discriminator 2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1050 125 discriminator 2
	cmp	r3, #2
	beq	.L94
	.loc 3 1050 217 discriminator 3
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1050 17 discriminator 3
	cmp	r3, #3
	beq	.L94
	.loc 3 1050 238 discriminator 4
	bl	CY_HALT
.L94:
	.loc 3 1051 38
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	.loc 3 1051 16
	cmp	r3, #14
	bls	.L95
	.loc 3 1051 58 discriminator 1
	bl	CY_HALT
.L95:
	.loc 3 1052 52
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 1052 16
	cmp	r3, #0
	beq	.L96
	.loc 3 1052 100 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 1052 17 discriminator 1
	cmp	r3, #2
	beq	.L96
	.loc 3 1052 117 discriminator 2
	bl	CY_HALT
.L96:
	.loc 3 1054 21
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #72]
	.loc 3 1057 29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 3 1057 12
	cmp	r3, #0
	beq	.L97
	.loc 3 1058 23 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	.loc 3 1058 38 discriminator 1
	ldr	r3, [r7, #72]
	subs	r2, r2, r3
	.loc 3 1058 61 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 1057 13 discriminator 1
	cmp	r2, r3
	bcc	.L93
.L97:
	.loc 3 1060 43
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 1060 16
	cmp	r3, #0
	bne	.L98
	.loc 3 1063 29
	ldr	r3, [r7, #72]
	lsls	r3, r3, #9
	str	r3, [r7, #72]
.L98:
	.loc 3 1066 29
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 1066 16
	cmp	r3, #1
	bls	.L99
	.loc 3 1068 34
	movs	r3, #25
	str	r3, [r7, #52]
	.loc 3 1069 48
	movs	r3, #1
	strb	r3, [r7, #48]
	b	.L100
.L99:
	.loc 3 1073 34
	movs	r3, #24
	str	r3, [r7, #52]
	.loc 3 1074 48
	movs	r3, #0
	strb	r3, [r7, #48]
.L100:
	.loc 3 1077 34
	mov	r3, #512
	str	r3, [r7, #28]
	.loc 3 1078 46
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 1078 38
	str	r3, [r7, #32]
	.loc 3 1079 42
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	.loc 3 1079 34
	strb	r3, [r7, #36]
	.loc 3 1080 44
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1080 36
	strb	r3, [r7, #37]
	.loc 3 1081 29
	movs	r3, #0
	strb	r3, [r7, #38]
	.loc 3 1082 31
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 1082 29
	str	r3, [r7, #40]
	.loc 3 1083 44
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	.loc 3 1083 36
	str	r3, [r7, #44]
	.loc 3 1084 48
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 3 1084 40
	strb	r3, [r7, #49]
	.loc 3 1086 35
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	.loc 3 1086 16
	cmp	r3, #0
	beq	.L101
	.loc 3 1087 49 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 1086 47 discriminator 1
	cmp	r3, #2
	bne	.L101
	.loc 3 1089 42
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	.loc 3 1089 24
	lsls	r3, r3, #9
	str	r3, [r7, #68]
	.loc 3 1095 46
	ldr	r3, [r7, #68]
	lsls	r3, r3, #16
	.loc 3 1094 56
	orr	r3, r3, #35
	.loc 3 1091 36
	str	r3, [r7, #20]
	.loc 3 1097 54
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 1097 36
	str	r3, [r7, #24]
	.loc 3 1100 33
	add	r3, r7, #20
	str	r3, [r7, #40]
	b	.L102
.L101:
	.loc 3 1104 35
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	.loc 3 1104 33
	str	r3, [r7, #40]
.L102:
	.loc 3 1107 19
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	str	r0, [r7, #76]
	.loc 3 1109 16
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L93
	.loc 3 1111 37
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	.loc 3 1112 33
	movs	r3, #1
	strb	r3, [r7, #64]
	.loc 3 1113 50
	movs	r3, #0
	strb	r3, [r7, #61]
	.loc 3 1114 30
	movs	r3, #2
	strb	r3, [r7, #62]
	.loc 3 1115 36
	movs	r3, #1
	strb	r3, [r7, #60]
	.loc 3 1116 36
	movs	r3, #1
	strb	r3, [r7, #63]
	.loc 3 1117 29
	movs	r3, #0
	strb	r3, [r7, #65]
	.loc 3 1119 23
	add	r3, r7, #52
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #76]
	.loc 3 1121 20
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L103
	.loc 3 1124 27
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #76]
.L103:
	.loc 3 1127 20
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L93
	.loc 3 1128 40 discriminator 1
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	.loc 3 1128 27 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 1127 49 discriminator 1
	cmp	r3, #0
	beq	.L93
	.loc 3 1131 27
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdTxData
	str	r0, [r7, #76]
.L93:
	.loc 3 1137 12
	ldr	r3, [r7, #76]
	.loc 3 1138 1
	mov	r0, r3
	adds	r7, r7, #80
.LCFI81:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI82:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L106:
	.align	2
.L105:
	.word	15335426
	.cfi_endproc
.LFE165:
	.size	Cy_SD_Host_Write, .-Cy_SD_Host_Write
	.section	.text.Cy_SD_Host_Erase,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Erase
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Erase, %function
Cy_SD_Host_Erase:
.LFB166:
	.loc 3 1183 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI83:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI84:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI85:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	.loc 3 1184 28
	ldr	r3, .L133
	str	r3, [r7, #36]
	.loc 3 1187 8
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L108
	.loc 3 1187 26 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L108
	.loc 3 1190 29
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	.loc 3 1190 12
	cmp	r3, #0
	beq	.L109
	.loc 3 1191 24 discriminator 1
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	.loc 3 1190 13 discriminator 1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bhi	.L108
	.loc 3 1192 24
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	.loc 3 1191 54
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bhi	.L108
.L109:
	.loc 3 1195 29
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 1196 46
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 1197 26
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 1198 32
	movs	r3, #1
	strb	r3, [r7, #28]
	.loc 3 1199 32
	movs	r3, #1
	strb	r3, [r7, #31]
	.loc 3 1200 25
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 1203 43
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 1203 16
	cmp	r3, #0
	bne	.L110
	.loc 3 1206 27
	ldr	r3, [r7, #8]
	lsls	r3, r3, #9
	str	r3, [r7, #8]
.L110:
	.loc 3 1209 43
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1209 16
	cmp	r3, #2
	bne	.L111
	.loc 3 1211 34
	movs	r3, #35
	str	r3, [r7, #20]
	b	.L112
.L111:
	.loc 3 1215 34
	movs	r3, #32
	str	r3, [r7, #20]
.L112:
	.loc 3 1217 33
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	.loc 3 1219 19
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 1221 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L113
	.loc 3 1224 23
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L113:
	.loc 3 1227 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L114
	.loc 3 1229 24
	ldr	r3, [r7, #36]
	b	.L132
.L114:
	.loc 3 1233 43
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 1233 16
	cmp	r3, #0
	bne	.L116
	.loc 3 1236 25
	ldr	r3, [r7, #4]
	lsls	r3, r3, #9
	str	r3, [r7, #4]
.L116:
	.loc 3 1239 43
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1239 16
	cmp	r3, #2
	bne	.L117
	.loc 3 1241 34
	movs	r3, #36
	str	r3, [r7, #20]
	b	.L118
.L117:
	.loc 3 1245 34
	movs	r3, #33
	str	r3, [r7, #20]
.L118:
	.loc 3 1247 33
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 3 1249 19
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 1251 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L119
	.loc 3 1254 23
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L119:
	.loc 3 1258 30
	movs	r3, #38
	str	r3, [r7, #20]
	.loc 3 1260 13
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L120
	adr	r2, .L122
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L122:
	.word	.L128+1
	.word	.L127+1
	.word	.L126+1
	.word	.L125+1
	.word	.L124+1
	.word	.L123+1
	.word	.L121+1
	.p2align 1
.L128:
	.loc 3 1263 41
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 3 1264 21
	b	.L129
.L127:
	.loc 3 1266 51
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1266 24
	cmp	r3, #2
	bne	.L130
	.loc 3 1268 45
	movs	r3, #3
	str	r3, [r7, #24]
	.loc 3 1274 21
	b	.L129
.L130:
	.loc 3 1272 45
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 3 1274 21
	b	.L129
.L126:
	.loc 3 1276 41
	movs	r3, #2
	str	r3, [r7, #24]
	.loc 3 1277 21
	b	.L129
.L125:
	.loc 3 1279 41
	mov	r3, #-2147483648
	str	r3, [r7, #24]
	.loc 3 1280 21
	b	.L129
.L124:
	.loc 3 1282 41
	mov	r3, #-2147450880
	str	r3, [r7, #24]
	.loc 3 1283 21
	b	.L129
.L123:
	.loc 3 1285 41
	ldr	r3, .L133+4
	str	r3, [r7, #24]
	.loc 3 1286 21
	b	.L129
.L121:
	.loc 3 1288 41
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 3 1289 21
	b	.L129
.L120:
	.loc 3 1291 25
	ldr	r3, .L133
	str	r3, [r7, #36]
	.loc 3 1292 21
	nop
.L129:
	.loc 3 1295 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L108
	.loc 3 1297 22
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
.L108:
	.loc 3 1302 12
	ldr	r3, [r7, #36]
.L132:
	.loc 3 1303 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI86:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI87:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L134:
	.align	2
.L133:
	.word	15335426
	.word	-2147483647
	.cfi_endproc
.LFE166:
	.size	Cy_SD_Host_Erase, .-Cy_SD_Host_Erase
	.section	.text.Cy_SD_Host_PollCmdLineFree,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollCmdLineFree, %function
Cy_SD_Host_PollCmdLineFree:
.LFB167:
	.loc 3 1320 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI88:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI89:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI90:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1321 28
	ldr	r3, .L141
	str	r3, [r7, #20]
	.loc 3 1322 14
	mov	r3, #1000
	str	r3, [r7, #16]
	.loc 3 1325 11
	b	.L136
.L139:
	.loc 3 1327 60
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1327 74
	and	r3, r3, #1
	.loc 3 1327 24
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #15]
	.loc 3 1330 18
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 1330 12
	cmp	r3, #0
	beq	.L137
	.loc 3 1332 17
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 1333 13
	b	.L138
.L137:
	.loc 3 1336 9
	movs	r0, #3
	bl	Cy_SysLib_DelayUs
	.loc 3 1337 14
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L136:
	.loc 3 1325 11
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L139
.L138:
	.loc 3 1340 12
	ldr	r3, [r7, #20]
	.loc 3 1341 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI91:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI92:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L142:
	.align	2
.L141:
	.word	15335429
	.cfi_endproc
.LFE167:
	.size	Cy_SD_Host_PollCmdLineFree, .-Cy_SD_Host_PollCmdLineFree
	.section	.text.Cy_SD_Host_PollDataLineNotInhibit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollDataLineNotInhibit, %function
Cy_SD_Host_PollDataLineNotInhibit:
.LFB168:
	.loc 3 1357 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI93:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI94:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI95:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1358 28
	ldr	r3, .L149
	str	r3, [r7, #20]
	.loc 3 1359 14
	mov	r3, #1000
	str	r3, [r7, #16]
	.loc 3 1362 11
	b	.L144
.L147:
	.loc 3 1364 57
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1364 71
	and	r3, r3, #2
	.loc 3 1364 21
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #15]
	.loc 3 1367 18
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 1367 12
	cmp	r3, #0
	beq	.L145
	.loc 3 1369 17
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 1370 13
	b	.L146
.L145:
	.loc 3 1373 9
	movs	r0, #3
	bl	Cy_SysLib_DelayUs
	.loc 3 1374 14
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L144:
	.loc 3 1362 11
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L147
.L146:
	.loc 3 1377 12
	ldr	r3, [r7, #20]
	.loc 3 1378 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI96:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI97:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L150:
	.align	2
.L149:
	.word	15335429
	.cfi_endproc
.LFE168:
	.size	Cy_SD_Host_PollDataLineNotInhibit, .-Cy_SD_Host_PollDataLineNotInhibit
	.section	.text.Cy_SD_Host_PollDataLineFree,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollDataLineFree, %function
Cy_SD_Host_PollDataLineFree:
.LFB169:
	.loc 3 1394 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI98:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI99:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI100:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1395 28
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1396 14
	mov	r3, #1000
	str	r3, [r7, #8]
	.loc 3 1398 11
	b	.L152
.L154:
	.loc 3 1401 9
	movs	r0, #250
	bl	Cy_SysLib_DelayUs
	.loc 3 1402 14
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L152:
	.loc 3 1398 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1398 68
	and	r3, r3, #4
	.loc 3 1398 11
	cmp	r3, #0
	beq	.L153
	.loc 3 1398 88 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L154
.L153:
	.loc 3 1405 50
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1405 64
	and	r3, r3, #4
	.loc 3 1405 8
	cmp	r3, #0
	beq	.L155
	.loc 3 1407 13
	ldr	r3, .L157
	str	r3, [r7, #12]
.L155:
	.loc 3 1410 12
	ldr	r3, [r7, #12]
	.loc 3 1411 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI101:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI102:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L158:
	.align	2
.L157:
	.word	15335429
	.cfi_endproc
.LFE169:
	.size	Cy_SD_Host_PollDataLineFree, .-Cy_SD_Host_PollDataLineFree
	.section	.text.Cy_SD_Host_PollBufferReadReady,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollBufferReadReady, %function
Cy_SD_Host_PollBufferReadReady:
.LFB170:
	.loc 3 1427 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI103:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI104:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI105:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1428 28
	ldr	r3, .L165
	str	r3, [r7, #12]
	.loc 3 1429 14
	mov	r3, #1000
	str	r3, [r7, #8]
	.loc 3 1431 11
	b	.L160
.L163:
	.loc 3 1434 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #48]	@ movhi
	uxth	r3, r3
	.loc 3 1434 75
	and	r3, r3, #32
	.loc 3 1434 12
	cmp	r3, #0
	beq	.L161
	.loc 3 1438 65
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #32
	strh	r2, [r3, #48]	@ movhi
	.loc 3 1440 17
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1441 13
	b	.L162
.L161:
	.loc 3 1444 9
	movs	r0, #150
	bl	Cy_SysLib_DelayUs
	.loc 3 1445 14
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L160:
	.loc 3 1431 11
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L163
.L162:
	.loc 3 1448 12
	ldr	r3, [r7, #12]
	.loc 3 1449 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI106:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI107:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L166:
	.align	2
.L165:
	.word	15335429
	.cfi_endproc
.LFE170:
	.size	Cy_SD_Host_PollBufferReadReady, .-Cy_SD_Host_PollBufferReadReady
	.section	.text.Cy_SD_Host_PollBufferWriteReady,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollBufferWriteReady, %function
Cy_SD_Host_PollBufferWriteReady:
.LFB171:
	.loc 3 1465 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI108:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI109:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI110:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1466 28
	ldr	r3, .L173
	str	r3, [r7, #12]
	.loc 3 1467 14
	mov	r3, #1000
	str	r3, [r7, #8]
	.loc 3 1469 11
	b	.L168
.L171:
	.loc 3 1472 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #48]	@ movhi
	uxth	r3, r3
	.loc 3 1472 75
	and	r3, r3, #16
	.loc 3 1472 12
	cmp	r3, #0
	beq	.L169
	.loc 3 1476 65
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #16
	strh	r2, [r3, #48]	@ movhi
	.loc 3 1478 17
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1479 13
	b	.L170
.L169:
	.loc 3 1482 9
	movs	r0, #150
	bl	Cy_SysLib_DelayUs
	.loc 3 1483 14
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L168:
	.loc 3 1469 11
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L171
.L170:
	.loc 3 1486 12
	ldr	r3, [r7, #12]
	.loc 3 1487 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI111:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI112:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L174:
	.align	2
.L173:
	.word	15335429
	.cfi_endproc
.LFE171:
	.size	Cy_SD_Host_PollBufferWriteReady, .-Cy_SD_Host_PollBufferWriteReady
	.section	.text.Cy_SD_Host_PollCmdComplete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollCmdComplete, %function
Cy_SD_Host_PollCmdComplete:
.LFB172:
	.loc 3 1503 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI113:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI114:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI115:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1504 28
	ldr	r3, .L181
	str	r3, [r7, #12]
	.loc 3 1505 14
	mov	r3, #1000
	str	r3, [r7, #8]
	.loc 3 1507 11
	b	.L176
.L179:
	.loc 3 1510 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #48]	@ movhi
	uxth	r3, r3
	.loc 3 1510 75
	and	r3, r3, #1
	.loc 3 1510 12
	cmp	r3, #0
	beq	.L177
	.loc 3 1514 65
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #1
	strh	r2, [r3, #48]	@ movhi
	.loc 3 1516 17
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1517 13
	b	.L178
.L177:
	.loc 3 1520 9
	movs	r0, #3
	bl	Cy_SysLib_DelayUs
	.loc 3 1521 14
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L176:
	.loc 3 1507 11
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L179
.L178:
	.loc 3 1524 12
	ldr	r3, [r7, #12]
	.loc 3 1525 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI116:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI117:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L182:
	.align	2
.L181:
	.word	15335429
	.cfi_endproc
.LFE172:
	.size	Cy_SD_Host_PollCmdComplete, .-Cy_SD_Host_PollCmdComplete
	.section	.text.Cy_SD_Host_PollTransferComplete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_PollTransferComplete, %function
Cy_SD_Host_PollTransferComplete:
.LFB173:
	.loc 3 1541 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI118:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI119:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI120:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1542 28
	ldr	r3, .L189
	str	r3, [r7, #12]
	.loc 3 1543 14
	mov	r3, #1000
	str	r3, [r7, #8]
	.loc 3 1545 11
	b	.L184
.L187:
	.loc 3 1548 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #48]	@ movhi
	uxth	r3, r3
	.loc 3 1548 75
	and	r3, r3, #2
	.loc 3 1548 12
	cmp	r3, #0
	beq	.L185
	.loc 3 1552 64
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #2
	strh	r2, [r3, #48]	@ movhi
	.loc 3 1554 17
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1555 13
	b	.L186
.L185:
	.loc 3 1558 9
	movs	r0, #250
	bl	Cy_SysLib_DelayUs
	.loc 3 1559 14
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L184:
	.loc 3 1545 11
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L187
.L186:
	.loc 3 1562 12
	ldr	r3, [r7, #12]
	.loc 3 1563 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI121:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI122:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L190:
	.align	2
.L189:
	.word	15335429
	.cfi_endproc
.LFE173:
	.size	Cy_SD_Host_PollTransferComplete, .-Cy_SD_Host_PollTransferComplete
	.section	.text.Cy_SD_Host_CmdRxData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_CmdRxData, %function
Cy_SD_Host_CmdRxData:
.LFB174:
	.loc 3 1584 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
.LCFI123:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
.LCFI124:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI125:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 1591 12
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	.loc 3 1592 13
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 3 1594 11
	b	.L192
.L202:
	.loc 3 1597 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollBufferReadReady
	str	r0, [r7, #12]
	.loc 3 1599 12
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L204
	.loc 3 1604 17
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #2
	str	r3, [r7, #24]
	.loc 3 1604 9
	b	.L195
.L201:
	.loc 3 1607 19
	mov	r3, #1000
	str	r3, [r7, #20]
	.loc 3 1608 19
	b	.L196
.L198:
	.loc 3 1612 17
	movs	r0, #1
	bl	Cy_SysLib_DelayUs
	.loc 3 1613 22
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L196:
	.loc 3 1608 63
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1608 77
	and	r3, r3, #2048
	.loc 3 1608 19
	cmp	r3, #0
	bne	.L197
	.loc 3 1609 68
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L198
.L197:
	.loc 3 1616 59
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1616 73
	and	r3, r3, #2048
	.loc 3 1616 16
	cmp	r3, #0
	beq	.L205
	.loc 3 1623 18 discriminator 2
	ldr	r3, [r7]
	ldr	r4, [r3, #12]
	.loc 3 1623 27 discriminator 2
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_BufferRead
	mov	r3, r0
	.loc 3 1623 25 discriminator 2
	str	r3, [r4]
	.loc 3 1624 17 discriminator 2
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 1624 23 discriminator 2
	adds	r2, r3, #4
	ldr	r3, [r7]
	str	r2, [r3, #12]
	.loc 3 1604 46 discriminator 2
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L195:
	.loc 3 1604 9 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L201
	b	.L200
.L205:
	.loc 3 1619 17
	nop
.L200:
	.loc 3 1626 15
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L192:
	.loc 3 1594 11
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L202
	b	.L194
.L204:
	.loc 3 1601 13
	nop
.L194:
	.loc 3 1630 11
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollTransferComplete
	str	r0, [r7, #12]
	.loc 3 1632 11
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdLineFree
	.loc 3 1633 11
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollDataLineNotInhibit
	.loc 3 1635 12
	ldr	r3, [r7, #12]
	.loc 3 1636 1
	mov	r0, r3
	adds	r7, r7, #36
.LCFI126:
	.cfi_def_cfa_offset 12
	mov	sp, r7
.LCFI127:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE174:
	.size	Cy_SD_Host_CmdRxData, .-Cy_SD_Host_CmdRxData
	.section	.text.Cy_SD_Host_CmdTxData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_CmdTxData, %function
Cy_SD_Host_CmdTxData:
.LFB175:
	.loc 3 1657 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI128:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI129:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI130:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 1664 12
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	.loc 3 1665 13
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 3 1667 11
	b	.L207
.L217:
	.loc 3 1670 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollBufferWriteReady
	str	r0, [r7, #28]
	.loc 3 1672 12
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L220
	.loc 3 1677 17
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #2
	str	r3, [r7, #20]
	.loc 3 1677 9
	b	.L210
.L216:
	.loc 3 1680 19
	mov	r3, #1000
	str	r3, [r7, #16]
	.loc 3 1681 19
	b	.L211
.L213:
	.loc 3 1685 17
	movs	r0, #1
	bl	Cy_SysLib_DelayUs
	.loc 3 1686 22
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L211:
	.loc 3 1681 63
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1681 77
	and	r3, r3, #1024
	.loc 3 1681 19
	cmp	r3, #0
	bne	.L212
	.loc 3 1682 68
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L213
.L212:
	.loc 3 1689 59
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 1689 73
	and	r3, r3, #1024
	.loc 3 1689 16
	cmp	r3, #0
	beq	.L221
	.loc 3 1696 53 discriminator 2
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 1696 19 discriminator 2
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_BufferWrite
	.loc 3 1697 17 discriminator 2
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 1697 23 discriminator 2
	adds	r2, r3, #4
	ldr	r3, [r7]
	str	r2, [r3, #12]
	.loc 3 1677 46 discriminator 2
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L210:
	.loc 3 1677 9 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L216
	b	.L215
.L221:
	.loc 3 1692 17
	nop
.L215:
	.loc 3 1699 15
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L207:
	.loc 3 1667 11
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L217
	b	.L209
.L220:
	.loc 3 1674 13
	nop
.L209:
	.loc 3 1702 11
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollTransferComplete
	str	r0, [r7, #28]
	.loc 3 1704 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L218
	.loc 3 1707 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollDataLineFree
	str	r0, [r7, #28]
.L218:
	.loc 3 1710 12
	ldr	r3, [r7, #28]
	.loc 3 1711 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI131:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI132:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE175:
	.size	Cy_SD_Host_CmdTxData, .-Cy_SD_Host_CmdTxData
	.section	.text.Cy_SD_Host_SendCommand,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SendCommand
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SendCommand, %function
Cy_SD_Host_SendCommand:
.LFB176:
	.loc 3 1739 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI133:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI134:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI135:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 1740 28
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1742 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L223
	.loc 3 1742 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L223
	.loc 3 1744 35
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 1744 51
	bic	r3, r3, #255
	.loc 3 1744 16
	cmp	r3, #0
	beq	.L224
	.loc 3 1744 103 discriminator 1
	bl	CY_HALT
.L224:
	.loc 3 1745 53
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	.loc 3 1745 16
	cmp	r3, #0
	beq	.L225
	.loc 3 1745 102 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	.loc 3 1745 65 discriminator 1
	cmp	r3, #1
	beq	.L225
	.loc 3 1745 150 discriminator 2
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	.loc 3 1745 114 discriminator 2
	cmp	r3, #2
	beq	.L225
	.loc 3 1745 197 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	.loc 3 1745 17 discriminator 3
	cmp	r3, #3
	beq	.L225
	.loc 3 1745 214 discriminator 4
	bl	CY_HALT
.L225:
	.loc 3 1747 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdLineFree
	str	r0, [r7, #12]
	.loc 3 1748 12
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L236
	.loc 3 1750 31
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1750 16
	cmp	r3, #0
	beq	.L227
	.loc 3 1750 80 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	.loc 3 1750 46 discriminator 1
	cmp	r3, #3
	beq	.L227
	.loc 3 1755 23
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollDataLineNotInhibit
	str	r0, [r7, #12]
.L227:
	.loc 3 1758 16
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L236
	.loc 3 1761 69
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	.loc 3 1761 61
	ldr	r2, [r7, #4]
	add	r2, r2, #4096
	str	r3, [r2, #8]
	.loc 3 1767 65
	ldr	r3, [r7]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 3 1767 85
	and	r3, r3, #3
	uxth	r2, r3
	.loc 3 1768 65
	ldr	r3, [r7]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 3 1768 76
	lsls	r3, r3, #6
	uxth	r3, r3
	.loc 3 1768 84
	uxtb	r3, r3
	uxth	r3, r3
	.loc 3 1767 94
	orrs	r3, r3, r2
	uxth	r3, r3
	.loc 3 1769 44
	ldr	r2, [r7]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	.loc 3 1769 79
	cmp	r2, #0
	beq	.L228
	.loc 3 1769 79 is_stmt 0 discriminator 1
	movs	r2, #32
	b	.L229
.L228:
	.loc 3 1769 79 discriminator 2
	movs	r2, #0
.L229:
	.loc 3 1768 94 is_stmt 1
	orrs	r3, r3, r2
	uxth	r3, r3
	.loc 3 1770 44
	ldr	r2, [r7]
	ldrb	r2, [r2, #11]	@ zero_extendqisi2
	.loc 3 1770 82
	cmp	r2, #0
	beq	.L230
	.loc 3 1770 82 is_stmt 0 discriminator 1
	movs	r2, #16
	b	.L231
.L230:
	.loc 3 1770 82 discriminator 2
	movs	r2, #0
.L231:
	.loc 3 1769 89 is_stmt 1
	orrs	r3, r3, r2
	uxth	r3, r3
	.loc 3 1771 44
	ldr	r2, [r7]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	.loc 3 1771 82
	cmp	r2, #0
	beq	.L232
	.loc 3 1771 82 is_stmt 0 discriminator 1
	movs	r2, #8
	b	.L233
.L232:
	.loc 3 1771 82 discriminator 2
	movs	r2, #0
.L233:
	.loc 3 1770 92 is_stmt 1
	orrs	r3, r3, r2
	uxth	r2, r3
	.loc 3 1772 55
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 1772 82
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	and	r3, r3, #16128
	uxth	r3, r3
	.loc 3 1766 58
	orrs	r3, r3, r2
	uxth	r2, r3
	.loc 3 1766 56
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #14]	@ movhi
	.loc 3 1748 12
	b	.L236
.L223:
	.loc 3 1778 13
	ldr	r3, .L237
	str	r3, [r7, #12]
	b	.L234
.L236:
	.loc 3 1748 12
	nop
.L234:
	.loc 3 1781 12
	ldr	r3, [r7, #12]
	.loc 3 1782 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI136:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI137:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L238:
	.align	2
.L237:
	.word	15335426
	.cfi_endproc
.LFE176:
	.size	Cy_SD_Host_SendCommand, .-Cy_SD_Host_SendCommand
	.section	.text.Cy_SD_Host_SetBusWidth,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SetBusWidth
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetBusWidth, %function
Cy_SD_Host_SetBusWidth:
.LFB177:
	.loc 3 1811 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI138:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI139:
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
.LCFI140:
	.cfi_def_cfa 7, 32
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 3 1812 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 1813 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 1815 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L240
	.loc 3 1815 23 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L240
	.loc 3 1817 37
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1817 12
	cmp	r3, #0
	bne	.L241
	.loc 3 1819 13
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L242
	cmp	r3, #1
	beq	.L243
	b	.L262
.L242:
	.loc 3 1822 33
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 1823 21
	b	.L245
.L243:
	.loc 3 1825 33
	movs	r3, #2
	str	r3, [r7, #16]
	.loc 3 1826 21
	b	.L245
.L262:
	.loc 3 1828 25
	ldr	r3, .L263
	str	r3, [r7, #20]
	.loc 3 1829 21
	nop
.L245:
	.loc 3 1832 16
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L246
	.loc 3 1834 23
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSetSdBusWidth
	str	r0, [r7, #20]
	b	.L246
.L241:
	.loc 3 1837 44
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1837 17
	cmp	r3, #2
	bne	.L247
	.loc 3 1839 13
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L248
	cmp	r3, #2
	bgt	.L249
	cmp	r3, #0
	beq	.L250
	cmp	r3, #1
	beq	.L251
	b	.L249
.L250:
	.loc 3 1846 33
	ldr	r3, .L263+4
	str	r3, [r7, #16]
	.loc 3 1850 21
	b	.L252
.L251:
	.loc 3 1852 33
	ldr	r3, .L263+8
	str	r3, [r7, #16]
	.loc 3 1856 21
	b	.L252
.L248:
	.loc 3 1858 33
	ldr	r3, .L263+12
	str	r3, [r7, #16]
	.loc 3 1862 21
	b	.L252
.L249:
	.loc 3 1864 25
	ldr	r3, .L263
	str	r3, [r7, #20]
	.loc 3 1865 21
	nop
.L252:
	.loc 3 1868 16
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L246
	.loc 3 1871 23
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSwitchFunc
	str	r0, [r7, #20]
	b	.L246
.L247:
	.loc 3 1874 44
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 1874 17
	cmp	r3, #1
	bne	.L253
	.loc 3 1876 13
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L254
	cmp	r3, #2
	bgt	.L255
	cmp	r3, #0
	beq	.L256
	cmp	r3, #1
	beq	.L257
	b	.L255
.L256:
	.loc 3 1879 33
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 1880 21
	b	.L258
.L257:
	.loc 3 1882 33
	movs	r3, #2
	str	r3, [r7, #16]
	.loc 3 1883 21
	b	.L258
.L254:
	.loc 3 1885 33
	movs	r3, #7
	str	r3, [r7, #16]
	.loc 3 1888 21
	b	.L258
.L255:
	.loc 3 1890 25
	ldr	r3, .L263
	str	r3, [r7, #20]
	.loc 3 1891 21
	nop
.L258:
	.loc 3 1894 16
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L246
	.loc 3 1896 23
	ldr	r3, [r7, #16]
	str	r3, [sp, #4]
	movs	r3, #7
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendIoRwDirectCmd
	str	r0, [r7, #20]
	b	.L246
.L253:
	.loc 3 1906 16
	ldr	r3, .L263
	str	r3, [r7, #20]
.L246:
	.loc 3 1909 12
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L260
	.loc 3 1912 19
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetHostBusWidth
	str	r0, [r7, #20]
	.loc 3 1909 12
	b	.L260
.L240:
	.loc 3 1917 12
	ldr	r3, .L263
	str	r3, [r7, #20]
.L260:
	.loc 3 1920 12
	ldr	r3, [r7, #20]
	.loc 3 1921 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI141:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI142:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L264:
	.align	2
.L263:
	.word	15335426
	.word	62324736
	.word	62324992
	.word	62325248
	.cfi_endproc
.LFE177:
	.size	Cy_SD_Host_SetBusWidth, .-Cy_SD_Host_SetBusWidth
	.section	.text.Cy_SD_Host_OpsGoIdle,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsGoIdle, %function
Cy_SD_Host_OpsGoIdle:
.LFB178:
	.loc 3 1937 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI143:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI144:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI145:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 1941 22
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1942 25
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 1943 24
	movs	r3, #0
	strb	r3, [r7, #20]
	.loc 3 1944 38
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 3 1945 18
	movs	r3, #0
	strb	r3, [r7, #22]
	.loc 3 1946 24
	movs	r3, #0
	strb	r3, [r7, #23]
	.loc 3 1947 21
	movs	r3, #0
	strb	r3, [r7, #24]
	.loc 3 1948 17
	movs	r3, #3
	strb	r3, [r7, #25]
	.loc 3 1950 11
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #28]
	.loc 3 1952 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L266
	.loc 3 1955 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #28]
.L266:
	.loc 3 1958 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 1960 12
	ldr	r3, [r7, #28]
	.loc 3 1961 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI146:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI147:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE178:
	.size	Cy_SD_Host_OpsGoIdle, .-Cy_SD_Host_OpsGoIdle
	.section	.text.Cy_SD_Host_OpsVoltageSwitch,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsVoltageSwitch, %function
Cy_SD_Host_OpsVoltageSwitch:
.LFB179:
	.loc 3 1986 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI148:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI149:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI150:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 1993 22
	movs	r3, #11
	str	r3, [r7, #8]
	.loc 3 1994 25
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 1995 24
	movs	r3, #1
	strb	r3, [r7, #16]
	.loc 3 1996 38
	movs	r3, #0
	strb	r3, [r7, #17]
	.loc 3 1997 18
	movs	r3, #2
	strb	r3, [r7, #18]
	.loc 3 1998 24
	movs	r3, #1
	strb	r3, [r7, #19]
	.loc 3 1999 21
	movs	r3, #0
	strb	r3, [r7, #20]
	.loc 3 2000 17
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 3 2002 11
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #28]
	.loc 3 2004 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L269
	.loc 3 2007 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #28]
.L269:
	.loc 3 2010 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2012 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L270
	.loc 3 2015 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_DisableSdClk
	.loc 3 2017 18
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetPresentState
	mov	r3, r0
	.loc 3 2017 16
	and	r3, r3, #15728640
	str	r3, [r7, #24]
	.loc 3 2020 12
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L271
	.loc 3 2023 13
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ChangeIoVoltage
	.loc 3 2026 13
	movs	r0, #30
	bl	Cy_SysLib_Delay
	.loc 3 2029 58
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	.loc 3 2029 74
	and	r3, r3, #8
	.loc 3 2029 16
	cmp	r3, #0
	beq	.L272
	.loc 3 2033 17
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_EnableSdClk
	.loc 3 2036 17
	movs	r0, #100
	bl	Cy_SysLib_Delay
	.loc 3 2038 26
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetPresentState
	mov	r3, r0
	.loc 3 2038 24
	and	r3, r3, #15728640
	str	r3, [r7, #24]
	.loc 3 2041 20
	ldr	r3, [r7, #24]
	cmp	r3, #15728640
	beq	.L270
	.loc 3 2043 25
	ldr	r3, .L274
	str	r3, [r7, #28]
	b	.L270
.L272:
	.loc 3 2048 21
	ldr	r3, .L274
	str	r3, [r7, #28]
	b	.L270
.L271:
	.loc 3 2053 17
	ldr	r3, .L274
	str	r3, [r7, #28]
.L270:
	.loc 3 2057 12
	ldr	r3, [r7, #28]
	.loc 3 2058 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI151:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI152:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L275:
	.align	2
.L274:
	.word	15335431
	.cfi_endproc
.LFE179:
	.size	Cy_SD_Host_OpsVoltageSwitch, .-Cy_SD_Host_OpsVoltageSwitch
	.section	.text.Cy_SD_Host_OpsSendIoRwDirectCmd,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSendIoRwDirectCmd, %function
Cy_SD_Host_OpsSendIoRwDirectCmd:
.LFB180:
	.loc 3 2084 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI153:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI154:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI155:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 3 2088 22
	movs	r3, #52
	str	r3, [r7, #20]
	.loc 3 2089 46
	ldr	r3, [r7, #8]
	lsls	r2, r3, #31
	.loc 3 2090 56
	ldr	r3, [r7, #4]
	lsls	r3, r3, #28
	and	r3, r3, #1879048192
	.loc 3 2089 56
	orrs	r2, r2, r3
	.loc 3 2091 47
	ldr	r3, [r7]
	lsls	r3, r3, #27
	and	r3, r3, #134217728
	.loc 3 2090 66
	orrs	r2, r2, r3
	.loc 3 2092 60
	ldr	r3, [r7, #48]
	lsls	r1, r3, #9
	ldr	r3, .L279
	ands	r3, r3, r1
	.loc 3 2091 57
	orrs	r2, r2, r3
	.loc 3 2093 33
	ldr	r3, [r7, #52]
	uxtb	r3, r3
	.loc 3 2092 69
	orrs	r3, r3, r2
	.loc 3 2089 25
	str	r3, [r7, #24]
	.loc 3 2095 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2096 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2097 18
	movs	r3, #3
	strb	r3, [r7, #30]
	.loc 3 2098 24
	movs	r3, #1
	strb	r3, [r7, #28]
	.loc 3 2099 24
	movs	r3, #1
	strb	r3, [r7, #31]
	.loc 3 2100 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2102 11
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2104 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L277
	.loc 3 2107 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L277:
	.loc 3 2110 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2112 12
	ldr	r3, [r7, #36]
	.loc 3 2113 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI156:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI157:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L280:
	.align	2
.L279:
	.word	67108352
	.cfi_endproc
.LFE180:
	.size	Cy_SD_Host_OpsSendIoRwDirectCmd, .-Cy_SD_Host_OpsSendIoRwDirectCmd
	.section	.text.Cy_SD_Host_OpsSendAppCmd,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSendAppCmd, %function
Cy_SD_Host_OpsSendAppCmd:
.LFB181:
	.loc 3 2141 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI158:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI159:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI160:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 2145 22
	movs	r3, #55
	str	r3, [r7, #12]
	.loc 3 2146 34
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	.loc 3 2146 40
	lsls	r3, r3, #16
	.loc 3 2146 25
	str	r3, [r7, #16]
	.loc 3 2147 21
	movs	r3, #0
	strb	r3, [r7, #24]
	.loc 3 2148 38
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 3 2149 18
	movs	r3, #2
	strb	r3, [r7, #22]
	.loc 3 2150 24
	movs	r3, #1
	strb	r3, [r7, #20]
	.loc 3 2151 24
	movs	r3, #1
	strb	r3, [r7, #23]
	.loc 3 2152 17
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 2154 11
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #28]
	.loc 3 2156 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L282
	.loc 3 2159 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #28]
.L282:
	.loc 3 2162 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2164 12
	ldr	r3, [r7, #28]
	.loc 3 2165 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI161:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI162:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE181:
	.size	Cy_SD_Host_OpsSendAppCmd, .-Cy_SD_Host_OpsSendAppCmd
	.section	.text.Cy_SD_Host_OpsSendIfCond,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSendIfCond, %function
Cy_SD_Host_OpsSendIfCond:
.LFB182:
	.loc 3 2189 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI163:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI164:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI165:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 3 2193 22
	movs	r3, #8
	str	r3, [r7, #20]
	.loc 3 2194 25
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	.loc 3 2195 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2196 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2197 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2198 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L285
	.loc 3 2200 22
	movs	r3, #0
	strb	r3, [r7, #30]
	.loc 3 2201 28
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2202 28
	movs	r3, #0
	strb	r3, [r7, #31]
	b	.L286
.L285:
	.loc 3 2206 22
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 2207 28
	movs	r3, #1
	strb	r3, [r7, #28]
	.loc 3 2208 28
	movs	r3, #1
	strb	r3, [r7, #31]
.L286:
	.loc 3 2211 11
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2213 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L287
	.loc 3 2216 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L287:
	.loc 3 2219 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2221 12
	ldr	r3, [r7, #36]
	.loc 3 2222 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI166:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI167:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE182:
	.size	Cy_SD_Host_OpsSendIfCond, .-Cy_SD_Host_OpsSendIfCond
	.section	.text.Cy_SD_Host_OpsSelectCard,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSelectCard, %function
Cy_SD_Host_OpsSelectCard:
.LFB183:
	.loc 3 2247 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI168:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI169:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI170:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 2251 22
	movs	r3, #7
	str	r3, [r7, #12]
	.loc 3 2252 34
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	.loc 3 2252 40
	lsls	r3, r3, #16
	.loc 3 2252 25
	str	r3, [r7, #16]
	.loc 3 2253 21
	movs	r3, #0
	strb	r3, [r7, #24]
	.loc 3 2254 38
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 3 2255 18
	movs	r3, #3
	strb	r3, [r7, #22]
	.loc 3 2256 24
	movs	r3, #0
	strb	r3, [r7, #20]
	.loc 3 2257 24
	movs	r3, #0
	strb	r3, [r7, #23]
	.loc 3 2258 17
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 2260 11
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #28]
	.loc 3 2262 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L290
	.loc 3 2265 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #28]
.L290:
	.loc 3 2267 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L291
	.loc 3 2269 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2275 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollTransferComplete
	str	r0, [r7, #28]
.L291:
	.loc 3 2278 12
	ldr	r3, [r7, #28]
	.loc 3 2279 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI171:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI172:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE183:
	.size	Cy_SD_Host_OpsSelectCard, .-Cy_SD_Host_OpsSelectCard
	.section	.text.Cy_SD_Host_OpsSetSdBusWidth,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSetSdBusWidth, %function
Cy_SD_Host_OpsSetSdBusWidth:
.LFB184:
	.loc 3 2308 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI173:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI174:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI175:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 2312 22
	movs	r3, #70
	str	r3, [r7, #20]
	.loc 3 2313 25
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	.loc 3 2314 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2315 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2316 18
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 2317 24
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2318 24
	movs	r3, #0
	strb	r3, [r7, #31]
	.loc 3 2319 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2321 11
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendAppCmd
	str	r0, [r7, #36]
	.loc 3 2323 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L294
	.loc 3 2325 15
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2327 12
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L295
	.loc 3 2330 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L295:
	.loc 3 2333 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
.L294:
	.loc 3 2336 12
	ldr	r3, [r7, #36]
	.loc 3 2337 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI176:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI177:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE184:
	.size	Cy_SD_Host_OpsSetSdBusWidth, .-Cy_SD_Host_OpsSetSdBusWidth
	.section	.text.Cy_SD_Host_OpsSwitchFunc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSwitchFunc, %function
Cy_SD_Host_OpsSwitchFunc:
.LFB185:
	.loc 3 2356 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI178:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI179:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI180:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 2360 22
	movs	r3, #6
	str	r3, [r7, #12]
	.loc 3 2361 25
	ldr	r3, [r7]
	str	r3, [r7, #16]
	.loc 3 2362 21
	movs	r3, #0
	strb	r3, [r7, #24]
	.loc 3 2363 38
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 3 2364 18
	movs	r3, #2
	strb	r3, [r7, #22]
	.loc 3 2365 24
	movs	r3, #1
	strb	r3, [r7, #20]
	.loc 3 2366 24
	movs	r3, #1
	strb	r3, [r7, #23]
	.loc 3 2367 17
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 2369 11
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #28]
	.loc 3 2371 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L298
	.loc 3 2374 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #28]
.L298:
	.loc 3 2377 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2379 12
	ldr	r3, [r7, #28]
	.loc 3 2380 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI181:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI182:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE185:
	.size	Cy_SD_Host_OpsSwitchFunc, .-Cy_SD_Host_OpsSwitchFunc
	.section	.text.Cy_SD_Host_SdCardSwitchFunc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SdCardSwitchFunc, %function
Cy_SD_Host_SdCardSwitchFunc:
.LFB186:
	.loc 3 2409 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI183:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #128
.LCFI184:
	.cfi_def_cfa_offset 136
	add	r7, sp, #0
.LCFI185:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 3 2415 22
	movs	r3, #6
	str	r3, [r7, #108]
	.loc 3 2416 25
	ldr	r3, [r7, #8]
	str	r3, [r7, #112]
	.loc 3 2417 21
	movs	r3, #1
	strb	r3, [r7, #120]
	.loc 3 2418 38
	movs	r3, #0
	strb	r3, [r7, #117]
	.loc 3 2419 18
	movs	r3, #2
	strb	r3, [r7, #118]
	.loc 3 2420 24
	movs	r3, #1
	strb	r3, [r7, #116]
	.loc 3 2421 24
	movs	r3, #1
	strb	r3, [r7, #119]
	.loc 3 2422 17
	movs	r3, #0
	strb	r3, [r7, #121]
	.loc 3 2424 26
	movs	r3, #64
	str	r3, [r7, #84]
	.loc 3 2425 30
	movs	r3, #1
	str	r3, [r7, #88]
	.loc 3 2426 26
	movs	r3, #0
	strb	r3, [r7, #92]
	.loc 3 2427 28
	movs	r3, #0
	strb	r3, [r7, #93]
	.loc 3 2428 21
	movs	r3, #1
	strb	r3, [r7, #94]
	.loc 3 2429 21
	add	r3, r7, #20
	str	r3, [r7, #96]
	.loc 3 2430 28
	movs	r3, #14
	str	r3, [r7, #100]
	.loc 3 2431 36
	movs	r3, #0
	strb	r3, [r7, #104]
	.loc 3 2432 32
	movs	r3, #0
	strb	r3, [r7, #105]
	.loc 3 2434 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L301
	.loc 3 2434 37 discriminator 1
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L302
.L301:
	.loc 3 2436 15
	add	r3, r7, #84
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 2438 15
	add	r3, r7, #108
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #124]
	.loc 3 2440 12
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L303
	.loc 3 2443 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #124]
.L303:
	.loc 3 2446 12
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L304
	.loc 3 2449 19
	add	r3, r7, #84
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #124]
.L304:
	.loc 3 2452 12
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L305
	.loc 3 2455 26
	ldr	r3, [r7, #36]
	.loc 3 2455 30
	lsrs	r3, r3, #4
	.loc 3 2455 38
	and	r3, r3, #15
	.loc 3 2455 16
	cmp	r3, #15
	beq	.L306
	.loc 3 2456 25 discriminator 1
	ldr	r3, [r7, #36]
	.loc 3 2456 29 discriminator 1
	and	r3, r3, #15
	.loc 3 2455 57 discriminator 1
	cmp	r3, #15
	beq	.L306
	.loc 3 2457 26
	ldr	r3, [r7, #32]
	.loc 3 2457 30
	lsrs	r3, r3, #28
	.loc 3 2456 48
	cmp	r3, #15
	beq	.L306
	.loc 3 2458 26
	ldr	r3, [r7, #32]
	.loc 3 2458 30
	lsrs	r3, r3, #24
	.loc 3 2458 39
	and	r3, r3, #15
	.loc 3 2457 58
	cmp	r3, #15
	beq	.L306
	.loc 3 2459 26
	ldr	r3, [r7, #32]
	.loc 3 2459 30
	lsrs	r3, r3, #20
	.loc 3 2459 39
	and	r3, r3, #15
	.loc 3 2458 58
	cmp	r3, #15
	beq	.L306
	.loc 3 2460 26
	ldr	r3, [r7, #32]
	.loc 3 2460 30
	lsrs	r3, r3, #16
	.loc 3 2460 39
	and	r3, r3, #15
	.loc 3 2459 58
	cmp	r3, #15
	bne	.L305
.L306:
	.loc 3 2462 21
	ldr	r3, .L309
	str	r3, [r7, #124]
.L305:
	.loc 3 2466 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	b	.L307
.L302:
	.loc 3 2470 13
	ldr	r3, .L309
	str	r3, [r7, #124]
.L307:
	.loc 3 2473 12
	ldr	r3, [r7, #124]
	.loc 3 2474 1
	mov	r0, r3
	adds	r7, r7, #128
.LCFI186:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI187:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L310:
	.align	2
.L309:
	.word	15335426
	.cfi_endproc
.LFE186:
	.size	Cy_SD_Host_SdCardSwitchFunc, .-Cy_SD_Host_SdCardSwitchFunc
	.section	.text.Cy_SD_Host_OpsSetBlockCount,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSetBlockCount, %function
Cy_SD_Host_OpsSetBlockCount:
.LFB187:
	.loc 3 2498 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI188:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI189:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI190:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 3 2503 29
	ldr	r3, [r7, #4]
	uxth	r3, r3
	.loc 3 2504 51
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L312
	.loc 3 2504 51 is_stmt 0 discriminator 1
	mov	r2, #-2147483648
	b	.L313
.L312:
	.loc 3 2504 51 discriminator 2
	movs	r2, #0
.L313:
	.loc 3 2503 17 is_stmt 1
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	.loc 3 2506 22
	movs	r3, #23
	str	r3, [r7, #16]
	.loc 3 2507 25
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	.loc 3 2508 21
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2509 38
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 2510 18
	movs	r3, #2
	strb	r3, [r7, #26]
	.loc 3 2511 24
	movs	r3, #1
	strb	r3, [r7, #24]
	.loc 3 2512 24
	movs	r3, #1
	strb	r3, [r7, #27]
	.loc 3 2513 17
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2515 11
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2517 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L314
	.loc 3 2520 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L314:
	.loc 3 2523 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2525 12
	ldr	r3, [r7, #36]
	.loc 3 2526 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI191:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI192:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE187:
	.size	Cy_SD_Host_OpsSetBlockCount, .-Cy_SD_Host_OpsSetBlockCount
	.section	.text.Cy_SD_Host_OpsProgramCsd,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsProgramCsd, %function
Cy_SD_Host_OpsProgramCsd:
.LFB188:
	.loc 3 2555 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI193:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #72
.LCFI194:
	.cfi_def_cfa_offset 80
	add	r7, sp, #0
.LCFI195:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 2560 14
	movs	r3, #16
	str	r3, [r7, #56]
	.loc 3 2563 22
	movs	r3, #27
	str	r3, [r7, #40]
	.loc 3 2564 34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 3 2564 40
	lsls	r3, r3, #16
	.loc 3 2564 25
	str	r3, [r7, #44]
	.loc 3 2565 21
	movs	r3, #1
	strb	r3, [r7, #52]
	.loc 3 2566 38
	movs	r3, #0
	strb	r3, [r7, #49]
	.loc 3 2567 18
	movs	r3, #2
	strb	r3, [r7, #50]
	.loc 3 2568 24
	movs	r3, #1
	strb	r3, [r7, #48]
	.loc 3 2569 24
	movs	r3, #1
	strb	r3, [r7, #51]
	.loc 3 2570 17
	movs	r3, #0
	strb	r3, [r7, #53]
	.loc 3 2572 26
	movs	r3, #16
	str	r3, [r7, #16]
	.loc 3 2573 30
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 3 2574 26
	movs	r3, #0
	strb	r3, [r7, #24]
	.loc 3 2575 28
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 2576 21
	movs	r3, #0
	strb	r3, [r7, #26]
	.loc 3 2577 23
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	.loc 3 2577 21
	str	r3, [r7, #28]
	.loc 3 2578 28
	movs	r3, #14
	str	r3, [r7, #32]
	.loc 3 2579 36
	movs	r3, #0
	strb	r3, [r7, #36]
	.loc 3 2580 32
	movs	r3, #0
	strb	r3, [r7, #37]
	.loc 3 2583 11
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 2586 11
	add	r3, r7, #40
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #68]
	.loc 3 2588 8
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L317
	.loc 3 2591 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #68]
.L317:
	.loc 3 2594 8
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L318
	.loc 3 2597 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollBufferWriteReady
	str	r0, [r7, #68]
	.loc 3 2599 16
	ldr	r3, [r7, #56]
	lsrs	r3, r3, #2
	str	r3, [r7, #64]
	.loc 3 2599 9
	b	.L319
.L322:
	.loc 3 2606 39
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	.loc 3 2606 37
	ldr	r3, [r7, #4]
	adds	r2, r2, #4
	ldr	r3, [r3, r2, lsl #2]
	.loc 3 2606 63
	lsrs	r3, r3, #16
	uxtb	r2, r3
	.loc 3 2607 38
	ldr	r3, [r7, #64]
	subs	r1, r3, #1
	.loc 3 2607 36
	ldr	r3, [r7, #4]
	adds	r1, r1, #4
	ldr	r3, [r3, r1, lsl #2]
	.loc 3 2607 44
	and	r3, r3, #65280
	.loc 3 2606 73
	orrs	r2, r2, r3
	.loc 3 2608 39
	ldr	r3, [r7, #64]
	subs	r1, r3, #1
	.loc 3 2608 37
	ldr	r3, [r7, #4]
	adds	r1, r1, #4
	ldr	r3, [r3, r1, lsl #2]
	.loc 3 2608 63
	lsls	r3, r3, #16
	and	r3, r3, #16711680
	.loc 3 2606 21
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	.loc 3 2610 16
	ldr	r3, [r7, #64]
	cmp	r3, #1
	bls	.L320
	.loc 3 2612 43
	ldr	r3, [r7, #64]
	subs	r2, r3, #2
	.loc 3 2612 41
	ldr	r3, [r7, #4]
	adds	r2, r2, #4
	ldr	r3, [r3, r2, lsl #2]
	.loc 3 2612 49
	and	r3, r3, #-16777216
	.loc 3 2612 25
	ldr	r2, [r7, #60]
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	b	.L321
.L320:
	.loc 3 2616 25
	ldr	r3, [r7, #60]
	bic	r3, r3, #-16777216
	bic	r3, r3, #1048576
	str	r3, [r7, #60]
	.loc 3 2618 25
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #60]
.L321:
	.loc 3 2621 19 discriminator 2
	ldr	r1, [r7, #60]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_BufferWrite
	.loc 3 2599 47 discriminator 2
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #64]
.L319:
	.loc 3 2599 9 discriminator 1
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L322
	.loc 3 2625 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollTransferComplete
	str	r0, [r7, #68]
	.loc 3 2627 12
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L318
	.loc 3 2630 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollDataLineFree
	str	r0, [r7, #68]
.L318:
	.loc 3 2634 12
	ldr	r3, [r7, #68]
	.loc 3 2635 1
	mov	r0, r3
	adds	r7, r7, #72
.LCFI196:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI197:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE188:
	.size	Cy_SD_Host_OpsProgramCsd, .-Cy_SD_Host_OpsProgramCsd
	.section	.text.Cy_SD_Host_OpsSdioSendOpCond,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSdioSendOpCond, %function
Cy_SD_Host_OpsSdioSendOpCond:
.LFB189:
	.loc 3 2659 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI198:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI199:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI200:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 2662 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 2664 22
	movs	r3, #5
	str	r3, [r7, #20]
	.loc 3 2665 25
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 3 2666 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2667 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2668 18
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 2669 24
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2670 24
	movs	r3, #0
	strb	r3, [r7, #31]
	.loc 3 2671 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2674 11
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2676 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L325
	.loc 3 2679 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L325:
	.loc 3 2682 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2684 11
	add	r3, r7, #16
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 2686 13
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 3 2688 12
	ldr	r3, [r7, #36]
	.loc 3 2689 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI201:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI202:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE189:
	.size	Cy_SD_Host_OpsSdioSendOpCond, .-Cy_SD_Host_OpsSdioSendOpCond
	.section	.text.Cy_SD_Host_OpsSdSendOpCond,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_OpsSdSendOpCond, %function
Cy_SD_Host_OpsSdSendOpCond:
.LFB190:
	.loc 3 2722 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI203:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI204:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI205:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 3 2725 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 2727 22
	movs	r3, #105
	str	r3, [r7, #20]
	.loc 3 2728 25
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 3 2729 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2730 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2731 18
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 2732 24
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2733 24
	movs	r3, #0
	strb	r3, [r7, #31]
	.loc 3 2734 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2737 11
	ldr	r1, [r7]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendAppCmd
	str	r0, [r7, #36]
	.loc 3 2739 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L328
	.loc 3 2741 15
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2743 12
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L329
	.loc 3 2746 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L329:
	.loc 3 2749 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2751 15
	add	r3, r7, #16
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 2753 17
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 3 2755 12
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L328
	.loc 3 2759 22
	ldr	r3, [r7, #16]
	.loc 3 2759 17
	cmp	r3, #0
	blt	.L328
	.loc 3 2762 17
	ldr	r3, .L331
	str	r3, [r7, #36]
.L328:
	.loc 3 2770 12
	ldr	r3, [r7, #36]
	.loc 3 2771 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI206:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI207:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L332:
	.align	2
.L331:
	.word	15335430
	.cfi_endproc
.LFE190:
	.size	Cy_SD_Host_OpsSdSendOpCond, .-Cy_SD_Host_OpsSdSendOpCond
	.section	.text.Cy_SD_Host_MmcOpsSendOpCond,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_MmcOpsSendOpCond, %function
Cy_SD_Host_MmcOpsSendOpCond:
.LFB191:
	.loc 3 2795 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI208:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI209:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI210:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 2798 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 2800 22
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 3 2801 25
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	.loc 3 2802 21
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 3 2803 38
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 2804 18
	movs	r3, #2
	strb	r3, [r7, #30]
	.loc 3 2805 24
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 2806 24
	movs	r3, #0
	strb	r3, [r7, #31]
	.loc 3 2807 17
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 2809 11
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 2811 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L334
	.loc 3 2814 15
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L334:
	.loc 3 2817 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 2820 11
	add	r3, r7, #16
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 2822 13
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 3 2824 24
	ldr	r3, [r7, #16]
	.loc 3 2824 8
	cmp	r3, #0
	blt	.L335
	.loc 3 2826 13
	ldr	r3, .L337
	str	r3, [r7, #36]
.L335:
	.loc 3 2829 12
	ldr	r3, [r7, #36]
	.loc 3 2830 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI211:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI212:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L338:
	.align	2
.L337:
	.word	15335430
	.cfi_endproc
.LFE191:
	.size	Cy_SD_Host_MmcOpsSendOpCond, .-Cy_SD_Host_MmcOpsSendOpCond
	.section	.text.Cy_SD_Host_SdCardChangeClock,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SdCardChangeClock, %function
Cy_SD_Host_SdCardChangeClock:
.LFB192:
	.loc 3 2850 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI213:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI214:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI215:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 2851 28
	ldr	r3, .L344
	str	r3, [r7, #20]
	.loc 3 2853 14
	ldr	r3, .L344+4
	str	r3, [r7, #16]
	.loc 3 2855 12
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L340
	.loc 3 2855 13 discriminator 2
	ldr	r3, [r7]
	ldr	r2, .L344+8
	cmp	r3, r2
	bls	.L341
.L340:
	.loc 3 2855 74 discriminator 3
	bl	CY_HALT
.L341:
	.loc 3 2857 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L342
	.loc 3 2859 30
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	udiv	r3, r2, r3
	.loc 3 2859 16
	lsrs	r3, r3, #1
	str	r3, [r7, #12]
	.loc 3 2860 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_DisableSdClk
	.loc 3 2861 15
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SetSdClkDiv
	str	r0, [r7, #20]
	.loc 3 2862 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_EnableSdClk
.L342:
	.loc 3 2865 12
	ldr	r3, [r7, #20]
	.loc 3 2866 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI216:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI217:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L345:
	.align	2
.L344:
	.word	15335426
	.word	100000000
	.word	50000000
	.cfi_endproc
.LFE192:
	.size	Cy_SD_Host_SdCardChangeClock, .-Cy_SD_Host_SdCardChangeClock
	.section	.text.Cy_SD_Host_Init,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Init, %function
Cy_SD_Host_Init:
.LFB193:
	.loc 3 2895 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI218:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI219:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI220:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 2896 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 2899 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L347
	.loc 3 2899 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L347
	.loc 3 2899 43 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L347
	.loc 3 2901 51
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 2901 16
	cmp	r3, #0
	beq	.L348
	.loc 3 2901 98 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 2901 63 discriminator 1
	cmp	r3, #2
	beq	.L348
	.loc 3 2901 151 discriminator 2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 2901 17 discriminator 2
	cmp	r3, #3
	beq	.L348
	.loc 3 2901 168 discriminator 3
	bl	CY_HALT
.L348:
	.loc 3 2905 50
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 3 2907 66
	cmp	r3, #0
	beq	.L349
	.loc 3 2907 66 is_stmt 0 discriminator 1
	movs	r3, #63
	b	.L350
.L349:
	.loc 3 2907 66 discriminator 2
	movs	r3, #59
.L350:
	.loc 3 2903 51 is_stmt 1
	ldr	r2, [r7, #12]
	add	r2, r2, #4096
	str	r3, [r2, #1332]
	.loc 3 2910 54
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	.loc 3 2912 34
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	.loc 3 2912 26
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	.loc 3 2914 19
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 2914 12
	cmp	r3, #0
	beq	.L351
	.loc 3 2917 31
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #12]
	.loc 3 2920 115
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldrh	r3, [r3, #1324]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 2920 156
	orr	r3, r3, #1
	sxth	r3, r3
	.loc 3 2920 60
	uxth	r2, r3
	.loc 3 2920 58
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	strh	r2, [r3, #1324]	@ movhi
	b	.L352
.L351:
	.loc 3 2928 31
	ldr	r3, [r7, #4]
	movs	r2, #5
	strb	r2, [r3, #12]
.L352:
	.loc 3 2931 19
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 3 2931 12
	cmp	r3, #0
	beq	.L353
	.loc 3 2934 114
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldrb	r3, [r3, #40]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 2934 155
	orr	r3, r3, #1
	sxtb	r3, r3
	.loc 3 2934 61
	uxtb	r2, r3
	.loc 3 2934 59
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	strb	r2, [r3, #40]
.L353:
	.loc 3 2940 110
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldrb	r3, [r3, #40]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 2940 126
	bic	r3, r3, #24
	sxtb	r2, r3
	.loc 3 2940 183
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 2940 194
	lsls	r3, r3, #3
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 2940 155
	and	r3, r3, #24
	sxtb	r3, r3
	.loc 3 2940 152
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 3 2940 57
	uxtb	r2, r3
	.loc 3 2940 55
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	strb	r2, [r3, #40]
	.loc 3 2945 100
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldrb	r3, [r3, #46]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 2945 115
	bic	r3, r3, #15
	sxtb	r3, r3
	.loc 3 2945 140
	orr	r3, r3, #14
	sxtb	r3, r3
	.loc 3 2945 57
	uxtb	r2, r3
	.loc 3 2945 54
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	strb	r2, [r3, #46]
	.loc 3 2950 9
	movw	r1, #8191
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetNormalInterruptEnable
	.loc 3 2951 9
	movw	r1, #2047
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetErrorInterruptEnable
	.loc 3 2954 112
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 2954 157
	orr	r3, r3, #4096
	sxth	r3, r3
	.loc 3 2954 57
	uxth	r2, r3
	.loc 3 2954 55
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	strh	r2, [r3, #62]	@ movhi
	.loc 3 2959 9
	movs	r0, #35
	bl	Cy_SysLib_Delay
	.loc 3 2962 9
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_NormalReset
	b	.L354
.L347:
	.loc 3 2966 13
	ldr	r3, .L356
	str	r3, [r7, #20]
.L354:
	.loc 3 2969 12
	ldr	r3, [r7, #20]
	.loc 3 2970 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI221:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI222:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L357:
	.align	2
.L356:
	.word	15335426
	.cfi_endproc
.LFE193:
	.size	Cy_SD_Host_Init, .-Cy_SD_Host_Init
	.section	.text.Cy_SD_Host_DeInit,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_DeInit, %function
Cy_SD_Host_DeInit:
.LFB194:
	.loc 3 2984 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI223:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI224:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI225:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 2986 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L360
	.loc 3 2988 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdLineFree
	.loc 3 2989 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollDataLineNotInhibit
	.loc 3 2991 9
	movs	r1, #2
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SoftwareReset
	.loc 3 2994 82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 3 2994 122
	bic	r2, r3, #-2147483648
	.loc 3 2994 46
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L360:
	.loc 3 2998 1
	nop
	adds	r7, r7, #8
.LCFI226:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI227:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE194:
	.size	Cy_SD_Host_DeInit, .-Cy_SD_Host_DeInit
	.section	.text.Cy_SD_Host_AbortTransfer,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_AbortTransfer
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_AbortTransfer, %function
Cy_SD_Host_AbortTransfer:
.LFB195:
	.loc 3 3024 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI228:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
.LCFI229:
	.cfi_def_cfa_offset 56
	add	r7, sp, #8
.LCFI230:
	.cfi_def_cfa 7, 48
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 3026 28
	ldr	r3, .L381
	str	r3, [r7, #36]
	.loc 3 3027 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 3031 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L362
	.loc 3 3031 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L362
	.loc 3 3034 39
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 3034 12
	cmp	r3, #1
	bne	.L363
	.loc 3 3036 19
	movs	r3, #1
	str	r3, [sp, #4]
	movs	r3, #6
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsSendIoRwDirectCmd
	str	r0, [r7, #36]
	b	.L362
.L363:
	.loc 3 3045 42
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	.loc 3 3045 48
	lsls	r3, r3, #16
	.loc 3 3045 33
	str	r3, [r7, #20]
	.loc 3 3046 29
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3047 46
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 3048 32
	movs	r3, #1
	strb	r3, [r7, #24]
	.loc 3 3049 32
	movs	r3, #1
	strb	r3, [r7, #27]
	.loc 3 3052 26
	movs	r3, #3
	strb	r3, [r7, #26]
	.loc 3 3053 30
	movs	r3, #12
	str	r3, [r7, #16]
	.loc 3 3054 25
	movs	r3, #3
	strb	r3, [r7, #29]
	.loc 3 3055 19
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 3057 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L364
	.loc 3 3060 23
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L364:
	.loc 3 3063 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L365
	.loc 3 3065 17
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3067 21
	ldr	r3, .L381+4
	str	r3, [r7, #36]
	.loc 3 3068 23
	mov	r3, #1000
	str	r3, [r7, #32]
	.loc 3 3071 23
	b	.L366
.L368:
	.loc 3 3074 26
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetPresentState
	mov	r3, r0
	.loc 3 3074 59
	and	r3, r3, #1048576
	.loc 3 3074 24
	cmp	r3, #1048576
	bne	.L367
	.loc 3 3076 29
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 3 3077 25
	b	.L365
.L367:
	.loc 3 3080 21
	movs	r0, #3
	bl	Cy_SysLib_DelayUs
	.loc 3 3081 26
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L366:
	.loc 3 3071 23
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L368
.L365:
	.loc 3 3085 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L369
	.loc 3 3087 24
	ldr	r3, [r7, #36]
	b	.L380
.L369:
	.loc 3 3090 13
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3092 13
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ErrorReset
	.loc 3 3095 26
	movs	r3, #2
	strb	r3, [r7, #26]
	.loc 3 3096 30
	movs	r3, #13
	str	r3, [r7, #16]
	.loc 3 3097 25
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3098 19
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 3100 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L371
	.loc 3 3103 23
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L371:
	.loc 3 3106 16
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L372
	.loc 3 3108 24
	ldr	r3, [r7, #36]
	b	.L380
.L372:
	.loc 3 3111 13
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3114 19
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3118 27
	ldr	r3, [r7, #12]
	and	r3, r3, #7680
	.loc 3 3117 16
	cmp	r3, #2048
	beq	.L362
	.loc 3 3121 30
	movs	r3, #3
	strb	r3, [r7, #26]
	.loc 3 3122 34
	movs	r3, #12
	str	r3, [r7, #16]
	.loc 3 3123 29
	movs	r3, #3
	strb	r3, [r7, #29]
	.loc 3 3124 23
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 3126 20
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L373
	.loc 3 3129 27
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L373:
	.loc 3 3132 20
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L374
	.loc 3 3134 21
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3136 25
	ldr	r3, .L381+4
	str	r3, [r7, #36]
	.loc 3 3137 27
	mov	r3, #1000
	str	r3, [r7, #32]
	.loc 3 3140 27
	b	.L375
.L377:
	.loc 3 3143 30
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetPresentState
	mov	r3, r0
	.loc 3 3143 63
	and	r3, r3, #1048576
	.loc 3 3143 28
	cmp	r3, #1048576
	bne	.L376
	.loc 3 3145 33
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 3 3146 29
	b	.L374
.L376:
	.loc 3 3149 25
	movs	r0, #3
	bl	Cy_SysLib_DelayUs
	.loc 3 3150 30
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L375:
	.loc 3 3140 27
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L377
.L374:
	.loc 3 3154 20
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L378
	.loc 3 3156 28
	ldr	r3, [r7, #36]
	b	.L380
.L378:
	.loc 3 3159 17
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3161 17
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ErrorReset
	.loc 3 3164 30
	movs	r3, #2
	strb	r3, [r7, #26]
	.loc 3 3165 34
	movs	r3, #13
	str	r3, [r7, #16]
	.loc 3 3166 29
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3167 23
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 3169 20
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L379
	.loc 3 3172 27
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L379:
	.loc 3 3174 20
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L362
	.loc 3 3176 21
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3179 27
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3183 35
	ldr	r3, [r7, #12]
	and	r3, r3, #7680
	.loc 3 3182 24
	cmp	r3, #2048
	beq	.L362
	.loc 3 3185 28
	ldr	r3, .L381+8
	str	r3, [r7, #36]
.L362:
	.loc 3 3192 12
	ldr	r3, [r7, #36]
.L380:
	.loc 3 3193 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI231:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI232:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L382:
	.align	2
.L381:
	.word	15335426
	.word	15335429
	.word	15335425
	.cfi_endproc
.LFE195:
	.size	Cy_SD_Host_AbortTransfer, .-Cy_SD_Host_AbortTransfer
	.section	.text.Cy_SD_Host_WriteProtect,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_WriteProtect
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_WriteProtect, %function
Cy_SD_Host_WriteProtect:
.LFB196:
	.loc 3 3223 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI233:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI234:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI235:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 3 3224 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 3228 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L384
	.loc 3 3228 23 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L384
	.loc 3 3230 9
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L385
	cmp	r3, #2
	bgt	.L386
	cmp	r3, #0
	beq	.L387
	cmp	r3, #1
	beq	.L388
	b	.L386
.L387:
	.loc 3 3233 24
	mov	r3, #2097152
	str	r3, [r7, #16]
	.loc 3 3234 17
	b	.L389
.L388:
	.loc 3 3236 24
	mov	r3, #1048576
	str	r3, [r7, #16]
	.loc 3 3237 17
	b	.L389
.L385:
	.loc 3 3239 24
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 3240 17
	b	.L389
.L386:
	.loc 3 3242 21
	ldr	r3, .L393
	str	r3, [r7, #20]
	.loc 3 3243 17
	nop
.L389:
	.loc 3 3246 12
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L391
	.loc 3 3248 19
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsProgramCsd
	str	r0, [r7, #20]
	.loc 3 3246 12
	b	.L391
.L384:
	.loc 3 3253 13
	ldr	r3, .L393
	str	r3, [r7, #20]
.L391:
	.loc 3 3256 12
	ldr	r3, [r7, #20]
	.loc 3 3257 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI236:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI237:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L394:
	.align	2
.L393:
	.word	15335426
	.cfi_endproc
.LFE196:
	.size	Cy_SD_Host_WriteProtect, .-Cy_SD_Host_WriteProtect
	.section	.text.Cy_SD_Host_GetCardStatus,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetCardStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetCardStatus, %function
Cy_SD_Host_GetCardStatus:
.LFB197:
	.loc 3 3284 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI238:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI239:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI240:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 3286 28
	ldr	r3, .L400
	str	r3, [r7, #36]
	.loc 3 3287 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 3288 14
	mov	r3, #524288
	str	r3, [r7, #32]
	.loc 3 3291 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L396
	.loc 3 3291 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L396
	.loc 3 3293 26
	movs	r3, #13
	str	r3, [r7, #16]
	.loc 3 3294 38
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	.loc 3 3294 44
	lsls	r3, r3, #16
	.loc 3 3294 29
	str	r3, [r7, #20]
	.loc 3 3295 25
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3296 42
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 3297 22
	movs	r3, #2
	strb	r3, [r7, #26]
	.loc 3 3298 28
	movs	r3, #1
	strb	r3, [r7, #24]
	.loc 3 3299 28
	movs	r3, #1
	strb	r3, [r7, #27]
	.loc 3 3300 21
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3302 15
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #36]
	.loc 3 3304 12
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L397
	.loc 3 3307 19
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #36]
.L397:
	.loc 3 3310 12
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L398
	.loc 3 3312 19
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3313 20
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	b	.L396
.L398:
	.loc 3 3317 20
	mov	r3, #524288
	str	r3, [r7, #32]
.L396:
	.loc 3 3321 12
	ldr	r3, [r7, #32]
	.loc 3 3322 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI241:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI242:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L401:
	.align	2
.L400:
	.word	15335426
	.cfi_endproc
.LFE197:
	.size	Cy_SD_Host_GetCardStatus, .-Cy_SD_Host_GetCardStatus
	.section	.text.Cy_SD_Host_GetSdStatus,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetSdStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetSdStatus, %function
Cy_SD_Host_GetSdStatus:
.LFB198:
	.loc 3 3351 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI243:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #64
.LCFI244:
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
.LCFI245:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 3352 28
	ldr	r3, .L406
	str	r3, [r7, #60]
	.loc 3 3357 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L403
	.loc 3 3357 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L403
	.loc 3 3357 45 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L403
	.loc 3 3359 15
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendAppCmd
	str	r0, [r7, #60]
	.loc 3 3360 12
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L403
	.loc 3 3362 30
	movs	r3, #13
	str	r3, [r7, #44]
	.loc 3 3363 42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 3 3363 48
	lsls	r3, r3, #16
	.loc 3 3363 33
	str	r3, [r7, #48]
	.loc 3 3364 29
	movs	r3, #1
	strb	r3, [r7, #56]
	.loc 3 3365 46
	movs	r3, #0
	strb	r3, [r7, #53]
	.loc 3 3366 26
	movs	r3, #2
	strb	r3, [r7, #54]
	.loc 3 3367 32
	movs	r3, #1
	strb	r3, [r7, #52]
	.loc 3 3368 32
	movs	r3, #1
	strb	r3, [r7, #55]
	.loc 3 3369 25
	movs	r3, #0
	strb	r3, [r7, #57]
	.loc 3 3371 34
	movs	r3, #64
	str	r3, [r7, #20]
	.loc 3 3372 38
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 3 3373 34
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3374 36
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3375 29
	movs	r3, #1
	strb	r3, [r7, #30]
	.loc 3 3376 29
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	.loc 3 3377 36
	movs	r3, #14
	str	r3, [r7, #36]
	.loc 3 3378 44
	movs	r3, #0
	strb	r3, [r7, #40]
	.loc 3 3379 40
	movs	r3, #0
	strb	r3, [r7, #41]
	.loc 3 3381 19
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 3383 19
	add	r3, r7, #44
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #60]
	.loc 3 3385 16
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L404
	.loc 3 3388 23
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #60]
.L404:
	.loc 3 3391 16
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L403
	.loc 3 3393 23
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #60]
.L403:
	.loc 3 3398 12
	ldr	r3, [r7, #60]
	.loc 3 3399 1
	mov	r0, r3
	adds	r7, r7, #64
.LCFI246:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI247:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L407:
	.align	2
.L406:
	.word	15335426
	.cfi_endproc
.LFE198:
	.size	Cy_SD_Host_GetSdStatus, .-Cy_SD_Host_GetSdStatus
	.section	.text.Cy_SD_Host_GetOcr,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetOcr
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetOcr, %function
Cy_SD_Host_GetOcr:
.LFB199:
	.loc 3 3428 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI248:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI249:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI250:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 3429 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 3431 33
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 3431 8
	cmp	r3, #0
	bne	.L409
	.loc 3 3433 15
	add	r1, r7, #12
	ldr	r3, [r7]
	movs	r2, #0
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsSdSendOpCond
	b	.L410
.L409:
	.loc 3 3435 40
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 3435 13
	cmp	r3, #2
	bne	.L411
	.loc 3 3437 15
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_MmcOpsSendOpCond
	b	.L410
.L411:
	.loc 3 3439 41
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 3439 13
	cmp	r3, #1
	beq	.L412
	.loc 3 3440 42 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 3439 53 discriminator 1
	cmp	r3, #3
	bne	.L410
.L412:
	.loc 3 3442 15
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsSdioSendOpCond
.L410:
	.loc 3 3449 12
	ldr	r3, [r7, #12]
	.loc 3 3450 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI251:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI252:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE199:
	.size	Cy_SD_Host_GetOcr, .-Cy_SD_Host_GetOcr
	.section	.text.Cy_SD_Host_GetCid,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetCid
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetCid, %function
Cy_SD_Host_GetCid:
.LFB200:
	.loc 3 3472 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI253:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
.LCFI254:
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
.LCFI255:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 3474 28
	ldr	r3, .L420
	str	r3, [r7, #44]
	.loc 3 3476 14
	add	r3, r7, #8
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	.loc 3 3479 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L415
	.loc 3 3479 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L415
	.loc 3 3481 26
	movs	r3, #2
	str	r3, [r7, #24]
	.loc 3 3482 29
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 3 3483 25
	movs	r3, #0
	strb	r3, [r7, #36]
	.loc 3 3484 42
	movs	r3, #0
	strb	r3, [r7, #33]
	.loc 3 3485 22
	movs	r3, #1
	strb	r3, [r7, #34]
	.loc 3 3486 28
	movs	r3, #1
	strb	r3, [r7, #32]
	.loc 3 3487 28
	movs	r3, #0
	strb	r3, [r7, #35]
	.loc 3 3488 21
	movs	r3, #0
	strb	r3, [r7, #37]
	.loc 3 3490 15
	add	r3, r7, #24
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #44]
	.loc 3 3492 12
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L416
	.loc 3 3495 19
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #44]
.L416:
	.loc 3 3498 12
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L415
	.loc 3 3500 19
	add	r3, r7, #8
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3503 21
	movs	r3, #0
	str	r3, [r7, #40]
	.loc 3 3503 13
	b	.L417
.L418:
	.loc 3 3505 50 discriminator 3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	.loc 3 3505 28 discriminator 3
	add	r2, r7, #8
	add	r2, r2, r3
	.loc 3 3505 20 discriminator 3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	.loc 3 3505 26 discriminator 3
	ldr	r2, [r2]
	.loc 3 3505 24 discriminator 3
	str	r2, [r3]
	.loc 3 3503 39 discriminator 3
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L417:
	.loc 3 3503 13 discriminator 1
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bls	.L418
.L415:
	.loc 3 3510 12
	ldr	r3, [r7, #44]
	.loc 3 3511 1
	mov	r0, r3
	adds	r7, r7, #48
.LCFI256:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI257:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L421:
	.align	2
.L420:
	.word	15335426
	.cfi_endproc
.LFE200:
	.size	Cy_SD_Host_GetCid, .-Cy_SD_Host_GetCid
	.section	.text.Cy_SD_Host_GetCsd,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetCsd
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetCsd, %function
Cy_SD_Host_GetCsd:
.LFB201:
	.loc 3 3542 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI258:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #72
.LCFI259:
	.cfi_def_cfa_offset 80
	add	r7, sp, #0
.LCFI260:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 3544 28
	ldr	r3, .L430
	str	r3, [r7, #68]
	.loc 3 3545 14
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	.loc 3 3552 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L423
	.loc 3 3552 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L423
	.loc 3 3552 40 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L423
	.loc 3 3554 26
	movs	r3, #9
	str	r3, [r7, #36]
	.loc 3 3555 38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 3 3555 44
	lsls	r3, r3, #16
	.loc 3 3555 29
	str	r3, [r7, #40]
	.loc 3 3556 25
	movs	r3, #0
	strb	r3, [r7, #48]
	.loc 3 3557 42
	movs	r3, #0
	strb	r3, [r7, #45]
	.loc 3 3558 22
	movs	r3, #1
	strb	r3, [r7, #46]
	.loc 3 3559 28
	movs	r3, #1
	strb	r3, [r7, #44]
	.loc 3 3560 28
	movs	r3, #0
	strb	r3, [r7, #47]
	.loc 3 3561 21
	movs	r3, #0
	strb	r3, [r7, #49]
	.loc 3 3563 15
	add	r3, r7, #36
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #68]
	.loc 3 3565 12
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L424
	.loc 3 3568 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #68]
.L424:
	.loc 3 3571 12
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L423
	.loc 3 3573 19
	add	r3, r7, #20
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3575 19
	add	r3, r7, #20
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	memcpy
	.loc 3 3576 33
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	.loc 3 3576 19
	add	r1, r7, #20
	movs	r2, #16
	mov	r0, r3
	bl	memcpy
	.loc 3 3578 44
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 3578 16
	cmp	r3, #1
	beq	.L425
	.loc 3 3579 44 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 3 3578 60 discriminator 1
	cmp	r3, #2
	bne	.L426
.L425:
	.loc 3 3581 34
	ldr	r3, [r7, #24]
	.loc 3 3581 56
	lsrs	r3, r3, #8
	.loc 3 3581 23
	ubfx	r3, r3, #0, #22
	str	r3, [r7, #60]
	.loc 3 3584 36
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	.loc 3 3584 27
	lsls	r3, r3, #10
	str	r3, [r7, #64]
	b	.L427
.L426:
	.loc 3 3588 34
	ldr	r3, [r7, #28]
	.loc 3 3588 56
	lsls	r3, r3, #10
	.loc 3 3588 23
	and	r3, r3, #3072
	str	r3, [r7, #60]
	.loc 3 3590 35
	ldr	r3, [r7, #24]
	.loc 3 3590 57
	lsrs	r3, r3, #24
	.loc 3 3591 33
	lsls	r3, r3, #2
	.loc 3 3590 23
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	.loc 3 3593 35
	ldr	r3, [r7, #24]
	.loc 3 3593 57
	lsrs	r3, r3, #22
	and	r3, r3, #3
	.loc 3 3593 23
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	.loc 3 3596 39
	ldr	r3, [r7, #24]
	.loc 3 3596 61
	lsrs	r3, r3, #7
	.loc 3 3596 27
	and	r3, r3, #7
	str	r3, [r7, #56]
	.loc 3 3599 38
	ldr	r3, [r7, #28]
	.loc 3 3599 60
	lsrs	r3, r3, #8
	.loc 3 3599 27
	and	r3, r3, #15
	str	r3, [r7, #52]
	.loc 3 3602 36
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	.loc 3 3602 57
	ldr	r3, [r7, #56]
	adds	r3, r3, #2
	.loc 3 3602 27
	lsl	r3, r2, r3
	str	r3, [r7, #64]
	.loc 3 3604 20
	ldr	r3, [r7, #52]
	cmp	r3, #10
	bne	.L428
	.loc 3 3606 31
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	str	r3, [r7, #64]
	b	.L427
.L428:
	.loc 3 3608 25
	ldr	r3, [r7, #52]
	cmp	r3, #11
	bne	.L427
	.loc 3 3610 31
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	str	r3, [r7, #64]
.L427:
	.loc 3 3618 35
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #64]
	str	r2, [r3, #4]
.L423:
	.loc 3 3622 12
	ldr	r3, [r7, #68]
	.loc 3 3623 1
	mov	r0, r3
	adds	r7, r7, #72
.LCFI261:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI262:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L431:
	.align	2
.L430:
	.word	15335426
	.cfi_endproc
.LFE201:
	.size	Cy_SD_Host_GetCsd, .-Cy_SD_Host_GetCsd
	.section	.text.Cy_SD_Host_GetExtCsd,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetExtCsd
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetExtCsd, %function
Cy_SD_Host_GetExtCsd:
.LFB202:
	.loc 3 3652 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI263:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #64
.LCFI264:
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
.LCFI265:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 3654 28
	ldr	r3, .L437
	str	r3, [r7, #60]
	.loc 3 3658 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L433
	.loc 3 3658 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L433
	.loc 3 3658 43 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L433
	.loc 3 3660 26
	movs	r3, #136
	str	r3, [r7, #44]
	.loc 3 3661 38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 3 3661 44
	lsls	r3, r3, #16
	.loc 3 3661 29
	str	r3, [r7, #48]
	.loc 3 3662 25
	movs	r3, #1
	strb	r3, [r7, #56]
	.loc 3 3663 42
	movs	r3, #0
	strb	r3, [r7, #53]
	.loc 3 3664 22
	movs	r3, #2
	strb	r3, [r7, #54]
	.loc 3 3665 28
	movs	r3, #1
	strb	r3, [r7, #52]
	.loc 3 3666 28
	movs	r3, #1
	strb	r3, [r7, #55]
	.loc 3 3667 21
	movs	r3, #0
	strb	r3, [r7, #57]
	.loc 3 3669 30
	mov	r3, #512
	str	r3, [r7, #20]
	.loc 3 3670 34
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 3 3671 30
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3672 32
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3673 25
	movs	r3, #1
	strb	r3, [r7, #30]
	.loc 3 3674 25
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	.loc 3 3675 32
	movs	r3, #14
	str	r3, [r7, #36]
	.loc 3 3676 40
	movs	r3, #0
	strb	r3, [r7, #40]
	.loc 3 3677 36
	movs	r3, #0
	strb	r3, [r7, #41]
	.loc 3 3679 15
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 3681 15
	add	r3, r7, #44
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #60]
	.loc 3 3683 12
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L434
	.loc 3 3686 19
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #60]
.L434:
	.loc 3 3689 12
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L435
	.loc 3 3691 19
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #60]
.L435:
	.loc 3 3694 12
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L433
	.loc 3 3696 35
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #212]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 3 3698 35
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #1]
	.loc 3 3702 25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 3 3701 16
	cmp	r3, #4096
	bls	.L433
	.loc 3 3704 39
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #1]
.L433:
	.loc 3 3709 12
	ldr	r3, [r7, #60]
	.loc 3 3710 1
	mov	r0, r3
	adds	r7, r7, #64
.LCFI266:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI267:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L438:
	.align	2
.L437:
	.word	15335426
	.cfi_endproc
.LFE202:
	.size	Cy_SD_Host_GetExtCsd, .-Cy_SD_Host_GetExtCsd
	.section	.text.Cy_SD_Host_GetRca,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetRca
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetRca, %function
Cy_SD_Host_GetRca:
.LFB203:
	.loc 3 3730 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI268:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI269:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI270:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 3732 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 3734 22
	movs	r3, #3
	str	r3, [r7, #16]
	.loc 3 3735 25
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 3736 21
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3737 38
	movs	r3, #0
	strb	r3, [r7, #25]
	.loc 3 3738 18
	movs	r3, #2
	strb	r3, [r7, #26]
	.loc 3 3739 24
	movs	r3, #1
	strb	r3, [r7, #24]
	.loc 3 3740 24
	movs	r3, #1
	strb	r3, [r7, #27]
	.loc 3 3741 17
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3743 11
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	.loc 3 3746 11
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	.loc 3 3748 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 3750 11
	add	r3, r7, #12
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3752 22
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	.loc 3 3753 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI271:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI272:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE203:
	.size	Cy_SD_Host_GetRca, .-Cy_SD_Host_GetRca
	.section	.text.Cy_SD_Host_GetScr,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetScr
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetScr, %function
Cy_SD_Host_GetScr:
.LFB204:
	.loc 3 3784 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI273:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #64
.LCFI274:
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
.LCFI275:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 3786 28
	ldr	r3, .L445
	str	r3, [r7, #60]
	.loc 3 3790 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L442
	.loc 3 3790 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L442
	.loc 3 3790 40 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L442
	.loc 3 3792 15
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendAppCmd
	str	r0, [r7, #60]
	.loc 3 3793 12
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L442
	.loc 3 3795 30
	movs	r3, #115
	str	r3, [r7, #44]
	.loc 3 3796 42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 3 3796 48
	lsls	r3, r3, #16
	.loc 3 3796 33
	str	r3, [r7, #48]
	.loc 3 3797 29
	movs	r3, #1
	strb	r3, [r7, #56]
	.loc 3 3798 46
	movs	r3, #0
	strb	r3, [r7, #53]
	.loc 3 3799 26
	movs	r3, #3
	strb	r3, [r7, #54]
	.loc 3 3800 32
	movs	r3, #1
	strb	r3, [r7, #52]
	.loc 3 3801 32
	movs	r3, #1
	strb	r3, [r7, #55]
	.loc 3 3802 25
	movs	r3, #0
	strb	r3, [r7, #57]
	.loc 3 3804 34
	movs	r3, #8
	str	r3, [r7, #20]
	.loc 3 3805 38
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 3 3806 34
	movs	r3, #0
	strb	r3, [r7, #28]
	.loc 3 3807 36
	movs	r3, #0
	strb	r3, [r7, #29]
	.loc 3 3808 29
	movs	r3, #1
	strb	r3, [r7, #30]
	.loc 3 3809 29
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	.loc 3 3810 36
	movs	r3, #14
	str	r3, [r7, #36]
	.loc 3 3811 44
	movs	r3, #0
	strb	r3, [r7, #40]
	.loc 3 3812 40
	movs	r3, #0
	strb	r3, [r7, #41]
	.loc 3 3814 19
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 3816 19
	add	r3, r7, #44
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #60]
	.loc 3 3818 16
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L443
	.loc 3 3821 23
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #60]
.L443:
	.loc 3 3824 16
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L442
	.loc 3 3826 23
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #60]
.L442:
	.loc 3 3831 12
	ldr	r3, [r7, #60]
	.loc 3 3832 1
	mov	r0, r3
	adds	r7, r7, #64
.LCFI276:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI277:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L446:
	.align	2
.L445:
	.word	15335426
	.cfi_endproc
.LFE204:
	.size	Cy_SD_Host_GetScr, .-Cy_SD_Host_GetScr
	.section	.text.Cy_SD_Host_ErrorReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_ErrorReset, %function
Cy_SD_Host_ErrorReset:
.LFB205:
	.loc 3 3846 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI278:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI279:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI280:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 3849 16
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetErrorInterruptStatus
	str	r0, [r7, #12]
	.loc 3 3852 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L449
	.loc 3 3855 9
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ClearErrorInterruptStatus
	.loc 3 3857 9
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SoftwareReset
.L449:
	.loc 3 3859 1
	nop
	adds	r7, r7, #16
.LCFI281:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI282:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE205:
	.size	Cy_SD_Host_ErrorReset, .-Cy_SD_Host_ErrorReset
	.section	.text.Cy_SD_Host_NormalReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_NormalReset, %function
Cy_SD_Host_NormalReset:
.LFB206:
	.loc 3 3873 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI283:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI284:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI285:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 3876 17
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetNormalInterruptStatus
	str	r0, [r7, #12]
	.loc 3 3879 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L452
	.loc 3 3882 9
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ClearNormalInterruptStatus
.L452:
	.loc 3 3884 1
	nop
	adds	r7, r7, #16
.LCFI286:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI287:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE206:
	.size	Cy_SD_Host_NormalReset, .-Cy_SD_Host_NormalReset
	.section	.text.Cy_SD_Host_VoltageCheck,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_VoltageCheck, %function
Cy_SD_Host_VoltageCheck:
.LFB207:
	.loc 3 3900 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI288:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI289:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI290:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 3902 27
	movs	r3, #0
	strb	r3, [r7, #19]
	.loc 3 3903 14
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 3 3904 14
	movs	r3, #2
	str	r3, [r7, #12]
	.loc 3 3906 11
	b	.L454
.L458:
	.loc 3 3909 15
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsGoIdle
	str	r0, [r7, #20]
	.loc 3 3912 9
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SoftwareReset
	.loc 3 3915 15
	movs	r2, #0
	mov	r1, #426
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsSendIfCond
	str	r0, [r7, #20]
	.loc 3 3921 15
	add	r3, r7, #8
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_GetResponse
	.loc 3 3926 35
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	.loc 3 3926 12
	cmp	r3, #170
	bne	.L455
	.loc 3 3930 20
	movs	r3, #1
	strb	r3, [r7, #19]
	b	.L456
.L455:
	.loc 3 3932 17
	ldr	r3, [r7, #12]
	cmp	r3, #2
	beq	.L456
	.loc 3 3939 17
	ldr	r3, .L461
	str	r3, [r7, #20]
.L456:
	.loc 3 3942 12
	ldr	r3, [r7, #20]
	ldr	r2, .L461+4
	cmp	r3, r2
	beq	.L457
	.loc 3 3942 47 discriminator 1
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L457
	.loc 3 3948 14
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L454:
	.loc 3 3906 11
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L458
.L457:
	.loc 3 3951 8
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L459
	.loc 3 3954 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_ErrorReset
	.loc 3 3955 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_NormalReset
.L459:
	.loc 3 3958 12
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	.loc 3 3959 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI291:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI292:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L462:
	.align	2
.L461:
	.word	15335431
	.word	15335429
	.cfi_endproc
.LFE207:
	.size	Cy_SD_Host_VoltageCheck, .-Cy_SD_Host_VoltageCheck
	.section	.text.Cy_SD_Host_IoOcr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_IoOcr, %function
Cy_SD_Host_IoOcr:
.LFB208:
	.loc 3 3996 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI293:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI294:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI295:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	.loc 3 4001 11
	movs	r2, #0
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSdioSendOpCond
	str	r0, [r7, #20]
	.loc 3 4004 17
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	.loc 3 4004 25
	and	r2, r3, #1879048192
	.loc 3 4004 15
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 3 4006 15
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 4006 8
	cmp	r3, #0
	beq	.L464
	.loc 3 4008 12
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L465
	.loc 3 4013 24
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	.loc 3 4013 32
	bic	r3, r3, #-16777216
	.loc 3 4013 50
	orr	r2, r3, #16777216
	.loc 3 4013 21
	ldr	r3, [r7, #36]
	str	r2, [r3]
.L465:
	.loc 3 4017 15
	mov	r3, #1000
	str	r3, [r7, #16]
	.loc 3 4018 15
	b	.L466
.L471:
	.loc 3 4021 19
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSdioSendOpCond
	str	r0, [r7, #20]
	.loc 3 4026 16
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L467
	.loc 3 4028 40
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	.loc 3 4028 20
	cmp	r3, #0
	bge	.L468
	.loc 3 4031 31
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3]
.L468:
	.loc 3 4034 39
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	.loc 3 4034 47
	and	r3, r3, #134217728
	.loc 3 4034 19
	cmp	r3, #0
	beq	.L474
	.loc 3 4037 29
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3]
	.loc 3 4041 17
	b	.L474
.L467:
	.loc 3 4044 13
	mov	r0, #1000
	bl	Cy_SysLib_DelayUs
	.loc 3 4045 18
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L466:
	.loc 3 4018 15
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L471
	b	.L470
.L474:
	.loc 3 4041 17
	nop
.L470:
	.loc 3 4048 12
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L472
	.loc 3 4051 23
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L472
.L464:
	.loc 3 4057 9
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SoftwareReset
	.loc 3 4060 9
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_ErrorReset
.L472:
	.loc 3 4064 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 4066 12
	ldr	r3, [r7, #20]
	.loc 3 4067 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI296:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI297:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE208:
	.size	Cy_SD_Host_IoOcr, .-Cy_SD_Host_IoOcr
	.section	.text.Cy_SD_Host_SdOcr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SdOcr, %function
Cy_SD_Host_SdOcr:
.LFB209:
	.loc 3 4112 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI298:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI299:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI300:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	.loc 3 4114 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 4119 11
	ldr	r3, [r7, #48]
	movs	r2, #0
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSdSendOpCond
	str	r0, [r7, #28]
	.loc 3 4124 8
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L476
	.loc 3 4127 21
	ldr	r3, .L488
	str	r3, [r7, #20]
	.loc 3 4129 12
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L477
	.loc 3 4132 25
	ldr	r3, [r7, #20]
	orr	r3, r3, #1073741824
	str	r3, [r7, #20]
	.loc 3 4134 16
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L477
	.loc 3 4137 29
	ldr	r3, [r7, #20]
	orr	r3, r3, #16777216
	str	r3, [r7, #20]
.L477:
	.loc 3 4142 15
	mov	r3, #1000
	str	r3, [r7, #24]
	.loc 3 4143 15
	b	.L478
.L481:
	.loc 3 4145 19
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSdSendOpCond
	str	r0, [r7, #28]
	.loc 3 4149 16
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L487
	.loc 3 4153 13
	mov	r0, #1000
	bl	Cy_SysLib_DelayUs
	.loc 3 4154 18
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L478:
	.loc 3 4143 15
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L481
	b	.L480
.L487:
	.loc 3 4151 17
	nop
.L480:
	.loc 3 4158 15
	add	r3, r7, #16
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 4162 30
	ldr	r3, [r7, #16]
	and	r3, r3, #1073741824
	.loc 3 4162 12
	cmp	r3, #0
	bne	.L482
	.loc 3 4165 35
	ldr	r3, [r7, #48]
	movs	r2, #0
	strb	r2, [r3, #1]
.L482:
	.loc 3 4169 39
	ldr	r3, [r7, #16]
	and	r3, r3, #16777216
	.loc 3 4169 12
	cmp	r3, #0
	beq	.L483
	.loc 3 4173 23
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L483:
	.loc 3 4176 12
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L484
	.loc 3 4179 21
	ldr	r3, [r7]
	movs	r2, #1
	strb	r2, [r3]
	b	.L485
.L484:
	.loc 3 4184 21
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3]
	b	.L485
.L476:
	.loc 3 4187 19
	ldrb	r3, [r7, #40]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 4187 13
	cmp	r3, #0
	beq	.L485
	.loc 3 4190 13
	ldr	r3, .L488+4
	str	r3, [r7, #28]
	.loc 3 4191 27
	ldr	r3, [r7, #48]
	movs	r2, #4
	strb	r2, [r3, #12]
.L485:
	.loc 3 4198 5
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
	.loc 3 4200 12
	ldr	r3, [r7, #28]
	.loc 3 4201 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI301:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI302:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L489:
	.align	2
.L488:
	.word	16744448
	.word	15335431
	.cfi_endproc
.LFE209:
	.size	Cy_SD_Host_SdOcr, .-Cy_SD_Host_SdOcr
	.section	.text.Cy_SD_Host_Enable,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Enable
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Enable, %function
Cy_SD_Host_Enable:
.LFB210:
	.loc 3 4215 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI303:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI304:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI305:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 4219 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L494
	.loc 3 4222 82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 3 4222 122
	orr	r2, r3, #-2147483648
	.loc 3 4222 46
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 3 4226 15
	mov	r3, #1000
	str	r3, [r7, #12]
	.loc 3 4229 110
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 4229 150
	orr	r3, r3, #1
	sxth	r3, r3
	.loc 3 4229 55
	uxth	r2, r3
	.loc 3 4229 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
	.loc 3 4233 14
	b	.L492
.L493:
	.loc 3 4237 13
	movs	r0, #150
	bl	Cy_SysLib_DelayUs
	.loc 3 4238 18
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L492:
	.loc 3 4233 57
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 3 4233 71
	and	r3, r3, #2
	.loc 3 4233 14
	cmp	r3, #0
	bne	.L494
	.loc 3 4234 15
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L493
.L494:
	.loc 3 4241 1
	nop
	adds	r7, r7, #16
.LCFI306:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI307:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE210:
	.size	Cy_SD_Host_Enable, .-Cy_SD_Host_Enable
	.section	.text.Cy_SD_Host_Disable,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_Disable
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_Disable, %function
Cy_SD_Host_Disable:
.LFB211:
	.loc 3 4255 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI308:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI309:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI310:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 4257 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L497
	.loc 3 4259 9
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_DisableSdClk
	.loc 3 4262 110
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 3 4262 55
	bic	r3, r3, #1
	uxth	r2, r3
	.loc 3 4262 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
	.loc 3 4267 82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 3 4267 122
	bic	r2, r3, #-2147483648
	.loc 3 4267 46
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L497:
	.loc 3 4271 1
	nop
	adds	r7, r7, #8
.LCFI311:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI312:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE211:
	.size	Cy_SD_Host_Disable, .-Cy_SD_Host_Disable
	.section	.text.Cy_SD_Host_SetSdClkDiv,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SetSdClkDiv
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetSdClkDiv, %function
Cy_SD_Host_SetSdClkDiv:
.LFB212:
	.loc 3 4296 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI313:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI314:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI315:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	.loc 3 4297 28
	ldr	r3, .L501
	str	r3, [r7, #12]
	.loc 3 4300 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L499
	.loc 3 4302 108
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 3 4302 121
	and	r3, r3, #63
	uxth	r2, r3
	.loc 3 4305 53
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r3, r3
	.loc 3 4304 60
	orrs	r3, r3, r2
	uxth	r2, r3
	.loc 3 4306 50
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	lsls	r3, r3, #6
	uxth	r3, r3
	.loc 3 4306 58
	uxtb	r3, r3
	uxth	r3, r3
	.loc 3 4302 55
	orrs	r3, r3, r2
	uxth	r2, r3
	.loc 3 4302 53
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
	.loc 3 4309 9
	movs	r0, #8
	bl	Cy_SysLib_DelayUs
	.loc 3 4311 13
	movs	r3, #0
	str	r3, [r7, #12]
.L499:
	.loc 3 4314 12
	ldr	r3, [r7, #12]
	.loc 3 4315 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI316:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI317:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L502:
	.align	2
.L501:
	.word	15335426
	.cfi_endproc
.LFE212:
	.size	Cy_SD_Host_SetSdClkDiv, .-Cy_SD_Host_SetSdClkDiv
	.section	.text.Cy_SD_Host_IsWpSet,"ax",%progbits
	.align	1
	.weak	Cy_SD_Host_IsWpSet
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_IsWpSet, %function
Cy_SD_Host_IsWpSet:
.LFB213:
	.loc 3 4332 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI318:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI319:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI320:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 4333 46
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 4333 60
	and	r3, r3, #524288
	.loc 3 4333 75
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 3 4334 1
	mov	r0, r3
	adds	r7, r7, #12
.LCFI321:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI322:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI323:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE213:
	.size	Cy_SD_Host_IsWpSet, .-Cy_SD_Host_IsWpSet
	.section	.text.Cy_SD_Host_SetHostBusWidth,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SetHostBusWidth
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetHostBusWidth, %function
Cy_SD_Host_SetHostBusWidth:
.LFB214:
	.loc 3 4356 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI324:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI325:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI326:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 4357 28
	ldr	r3, .L512
	str	r3, [r7, #12]
	.loc 3 4360 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L506
	.loc 3 4362 109
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #40]
	uxtb	r3, r3
	.loc 3 4362 124
	bic	r3, r3, #34
	uxtb	r2, r3
	.loc 3 4365 61
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L507
	.loc 3 4365 61 is_stmt 0 discriminator 1
	movs	r1, #32
	b	.L508
.L507:
	.loc 3 4365 61 discriminator 2
	movs	r1, #0
.L508:
	.loc 3 4365 61 discriminator 4
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L509
	.loc 3 4365 61 discriminator 5
	movs	r3, #2
	b	.L510
.L509:
	.loc 3 4365 61 discriminator 6
	movs	r3, #0
.L510:
	.loc 3 4365 61 discriminator 8
	orrs	r3, r3, r1
	uxtb	r3, r3
	.loc 3 4362 57 is_stmt 1 discriminator 8
	orrs	r3, r3, r2
	uxtb	r2, r3
	.loc 3 4362 55 discriminator 8
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #40]
	.loc 3 4368 13 discriminator 8
	movs	r3, #0
	str	r3, [r7, #12]
.L506:
	.loc 3 4371 12
	ldr	r3, [r7, #12]
	.loc 3 4372 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI327:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI328:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI329:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L513:
	.align	2
.L512:
	.word	15335426
	.cfi_endproc
.LFE214:
	.size	Cy_SD_Host_SetHostBusWidth, .-Cy_SD_Host_SetHostBusWidth
	.section	.text.Cy_SD_Host_SetHostSpeedMode,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SetHostSpeedMode
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetHostSpeedMode, %function
Cy_SD_Host_SetHostSpeedMode:
.LFB215:
	.loc 3 4395 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI330:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
.LCFI331:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI332:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 4396 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 4397 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 4398 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 4399 14
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 3 4402 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L515
	.loc 3 4405 9
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L516
	adr	r2, .L518
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L518:
	.word	.L520+1
	.word	.L519+1
	.word	.L520+1
	.word	.L519+1
	.word	.L521+1
	.word	.L520+1
	.word	.L519+1
	.word	.L517+1
	.p2align 1
.L520:
	.loc 3 4410 32
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 3 4411 17
	b	.L522
.L519:
	.loc 3 4415 32
	movs	r3, #1
	str	r3, [r7, #8]
	.loc 3 4416 17
	b	.L522
.L521:
	.loc 3 4418 32
	movs	r3, #2
	str	r3, [r7, #8]
	.loc 3 4419 17
	b	.L522
.L517:
	.loc 3 4421 32
	movs	r3, #4
	str	r3, [r7, #8]
	.loc 3 4422 17
	b	.L522
.L516:
	.loc 3 4424 21
	ldr	r3, .L540
	str	r3, [r7, #20]
	.loc 3 4425 17
	nop
.L522:
	.loc 3 4429 10
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L523
	adr	r2, .L525
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L525:
	.word	.L527+1
	.word	.L527+1
	.word	.L527+1
	.word	.L526+1
	.word	.L526+1
	.word	.L527+1
	.word	.L526+1
	.word	.L524+1
	.p2align 1
.L527:
	.loc 3 4435 27
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 3 4436 18
	b	.L528
.L526:
	.loc 3 4440 27
	movs	r3, #1
	str	r3, [r7, #12]
	.loc 3 4441 18
	b	.L528
.L524:
	.loc 3 4443 27
	movs	r3, #3
	str	r3, [r7, #12]
	.loc 3 4444 18
	b	.L528
.L523:
	.loc 3 4446 22
	ldr	r3, .L540
	str	r3, [r7, #20]
	.loc 3 4447 18
	nop
.L528:
	.loc 3 4451 10
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L529
	adr	r2, .L531
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L531:
	.word	.L533+1
	.word	.L532+1
	.word	.L533+1
	.word	.L534+1
	.word	.L534+1
	.word	.L533+1
	.word	.L532+1
	.word	.L530+1
	.p2align 1
.L533:
	.loc 3 4456 25
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 3 4457 18
	b	.L535
.L534:
	.loc 3 4460 26
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 3 4461 18
	b	.L535
.L532:
	.loc 3 4464 26
	movs	r3, #2
	str	r3, [r7, #16]
	.loc 3 4465 18
	b	.L535
.L530:
	.loc 3 4467 26
	movs	r3, #3
	str	r3, [r7, #16]
	.loc 3 4468 18
	b	.L535
.L529:
	.loc 3 4470 22
	ldr	r3, .L540
	str	r3, [r7, #20]
	.loc 3 4471 18
	nop
.L535:
	.loc 3 4474 12
	ldr	r3, [r7, #20]
	ldr	r2, .L540
	cmp	r3, r2
	beq	.L536
	.loc 3 4476 114
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #40]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 4476 130
	bic	r3, r3, #4
	sxtb	r3, r3
	.loc 3 4476 155
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	cmp	r2, #1
	bne	.L537
	.loc 3 4476 155 is_stmt 0 discriminator 1
	movs	r2, #4
	b	.L538
.L537:
	.loc 3 4476 155 discriminator 2
	movs	r2, #0
.L538:
	.loc 3 4476 155 discriminator 4
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 3 4476 61 is_stmt 1 discriminator 4
	uxtb	r2, r3
	.loc 3 4476 59 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #40]
	.loc 3 4480 116 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 4480 132 discriminator 4
	bic	r3, r3, #7
	sxth	r2, r3
	.loc 3 4480 161 discriminator 4
	ldr	r3, [r7, #8]
	sxth	r3, r3
	and	r3, r3, #7
	sxth	r3, r3
	.loc 3 4480 158 discriminator 4
	orrs	r3, r3, r2
	sxth	r3, r3
	.loc 3 4480 61 discriminator 4
	uxth	r2, r3
	.loc 3 4480 59 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #62]	@ movhi
	.loc 3 4484 112 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #1332]
	.loc 3 4484 124 discriminator 4
	uxth	r3, r3
	bic	r3, r3, #768
	uxth	r2, r3
	.loc 3 4484 187 discriminator 4
	ldr	r3, [r7, #16]
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	.loc 3 4484 155 discriminator 4
	and	r3, r3, #768
	uxth	r3, r3
	.loc 3 4484 57 discriminator 4
	orrs	r3, r3, r2
	uxth	r3, r3
	mov	r2, r3
	.loc 3 4484 55 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3, #1332]
	.loc 3 4488 112 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #1332]
	.loc 3 4488 124 discriminator 4
	uxth	r3, r3
	bic	r3, r3, #192
	uxth	r2, r3
	.loc 3 4488 187 discriminator 4
	ldr	r3, [r7, #12]
	uxth	r3, r3
	lsls	r3, r3, #6
	uxth	r3, r3
	.loc 3 4488 154 discriminator 4
	uxtb	r3, r3
	uxth	r3, r3
	.loc 3 4488 57 discriminator 4
	orrs	r3, r3, r2
	uxth	r3, r3
	mov	r2, r3
	.loc 3 4488 55 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3, #1332]
	b	.L536
.L515:
	.loc 3 4495 13
	ldr	r3, .L540
	str	r3, [r7, #20]
.L536:
	.loc 3 4498 12
	ldr	r3, [r7, #20]
	.loc 3 4499 1
	mov	r0, r3
	adds	r7, r7, #28
.LCFI333:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI334:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI335:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L541:
	.align	2
.L540:
	.word	15335426
	.cfi_endproc
.LFE215:
	.size	Cy_SD_Host_SetHostSpeedMode, .-Cy_SD_Host_SetHostSpeedMode
	.section	.text.Cy_SD_Host_SetBusSpeedMode,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SetBusSpeedMode
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SetBusSpeedMode, %function
Cy_SD_Host_SetBusSpeedMode:
.LFB216:
	.loc 3 4530 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI336:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #56
.LCFI337:
	.cfi_def_cfa_offset 64
	add	r7, sp, #8
.LCFI338:
	.cfi_def_cfa 7, 56
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 3 4531 28
	movs	r3, #0
	str	r3, [r7, #44]
	.loc 3 4532 14
	movs	r3, #0
	str	r3, [r7, #40]
	.loc 3 4533 14
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 3 4534 14
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	.loc 3 4537 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L543
	.loc 3 4539 16
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L544
	.loc 3 4539 66 discriminator 1
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L544
	.loc 3 4539 117 discriminator 2
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L544
	.loc 3 4539 166 discriminator 3
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L544
	.loc 3 4539 213 discriminator 4
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L544
	.loc 3 4539 260 discriminator 5
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L544
	.loc 3 4539 307 discriminator 6
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L544
	.loc 3 4539 17 discriminator 7
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L544
	.loc 3 4539 425 discriminator 8
	bl	CY_HALT
.L544:
	.loc 3 4542 38
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4542 12
	cmp	r3, #0
	beq	.L545
	.loc 3 4543 40 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4542 50 discriminator 1
	cmp	r3, #2
	beq	.L545
	.loc 3 4544 41
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4543 52
	cmp	r3, #3
	bne	.L546
.L545:
	.loc 3 4547 13
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L547
	adr	r2, .L549
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L549:
	.word	.L551+1
	.word	.L550+1
	.word	.L551+1
	.word	.L550+1
	.word	.L552+1
	.word	.L551+1
	.word	.L550+1
	.word	.L548+1
	.p2align 1
.L551:
	.loc 3 4552 36
	movs	r3, #0
	str	r3, [r7, #40]
	.loc 3 4553 21
	b	.L553
.L550:
	.loc 3 4557 36
	movs	r3, #1
	str	r3, [r7, #40]
	.loc 3 4558 21
	b	.L553
.L552:
	.loc 3 4560 36
	movs	r3, #2
	str	r3, [r7, #40]
	.loc 3 4561 21
	b	.L553
.L548:
	.loc 3 4563 36
	movs	r3, #4
	str	r3, [r7, #40]
	.loc 3 4564 21
	b	.L553
.L547:
	.loc 3 4566 25
	ldr	r3, .L568
	str	r3, [r7, #44]
	.loc 3 4567 21
	nop
.L553:
	.loc 3 4570 16
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L546
	.loc 3 4572 46
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4572 20
	cmp	r3, #0
	beq	.L554
	.loc 3 4573 49 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4572 58 discriminator 1
	cmp	r3, #3
	bne	.L555
.L554:
	.loc 3 4576 33
	mov	r3, #-2147483648
	str	r3, [r7, #36]
	.loc 3 4579 51
	ldr	r3, [r7, #40]
	and	r3, r3, #15
	.loc 3 4579 33
	ldr	r2, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	.loc 3 4582 27
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdCardSwitchFunc
	str	r0, [r7, #44]
	.loc 3 4582 25
	b	.L546
.L555:
	.loc 3 4588 55
	ldr	r3, [r7, #40]
	lsls	r3, r3, #8
	.loc 3 4586 33
	orr	r3, r3, #62390272
	orr	r3, r3, #65536
	str	r3, [r7, #36]
	.loc 3 4592 27
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSwitchFunc
	str	r0, [r7, #44]
.L546:
	.loc 3 4598 40
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4598 12
	cmp	r3, #1
	beq	.L556
	.loc 3 4599 41 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 4598 52 discriminator 1
	cmp	r3, #3
	bne	.L557
.L556:
	.loc 3 4602 19
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #19
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendIoRwDirectCmd
	str	r0, [r7, #44]
	.loc 3 4609 19
	add	r3, r7, #20
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 4612 33
	ldr	r3, [r7, #20]
	.loc 3 4612 37
	and	r3, r3, #1
	.loc 3 4612 16
	cmp	r3, #0
	beq	.L557
	.loc 3 4614 17
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L558
	adr	r2, .L560
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L560:
	.word	.L567+1
	.word	.L562+1
	.word	.L567+1
	.word	.L562+1
	.word	.L561+1
	.word	.L558+1
	.word	.L558+1
	.word	.L559+1
	.p2align 1
.L562:
	.loc 3 4622 37
	ldr	r3, [r7, #20]
	orr	r3, r3, #2
	str	r3, [r7, #20]
	.loc 3 4623 25
	b	.L564
.L561:
	.loc 3 4625 37
	ldr	r3, [r7, #20]
	orr	r3, r3, #4
	str	r3, [r7, #20]
	.loc 3 4626 25
	b	.L564
.L559:
	.loc 3 4628 37
	ldr	r3, [r7, #20]
	orr	r3, r3, #8
	str	r3, [r7, #20]
	.loc 3 4629 25
	b	.L564
.L558:
	.loc 3 4631 29
	ldr	r3, .L568
	str	r3, [r7, #44]
	.loc 3 4632 25
	b	.L564
.L567:
	.loc 3 4619 25
	nop
.L564:
	.loc 3 4636 20
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L557
	.loc 3 4638 46
	ldr	r3, [r7, #20]
	.loc 3 4638 36
	and	r3, r3, #7
	str	r3, [r7, #40]
	.loc 3 4642 27
	ldr	r3, [r7, #20]
	str	r3, [sp, #4]
	movs	r3, #19
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsSendIoRwDirectCmd
	str	r0, [r7, #44]
	.loc 3 4649 27
	add	r3, r7, #20
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_GetResponse
	.loc 3 4651 43
	ldr	r3, [r7, #20]
	.loc 3 4651 47
	and	r3, r3, #7
	.loc 3 4651 33
	str	r3, [r7, #20]
	.loc 3 4655 50
	ldr	r3, [r7, #20]
	.loc 3 4655 23
	ldr	r2, [r7, #40]
	cmp	r2, r3
	beq	.L557
	.loc 3 4657 29
	ldr	r3, .L568+4
	str	r3, [r7, #44]
.L557:
	.loc 3 4668 12
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L565
	.loc 3 4671 19
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SetHostSpeedMode
	str	r0, [r7, #44]
	b	.L565
.L543:
	.loc 3 4676 13
	ldr	r3, .L568
	str	r3, [r7, #44]
.L565:
	.loc 3 4679 12
	ldr	r3, [r7, #44]
	.loc 3 4680 1
	mov	r0, r3
	adds	r7, r7, #48
.LCFI339:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI340:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L569:
	.align	2
.L568:
	.word	15335426
	.word	15335428
	.cfi_endproc
.LFE216:
	.size	Cy_SD_Host_SetBusSpeedMode, .-Cy_SD_Host_SetBusSpeedMode
	.section	.text.Cy_SD_Host_FindBusSpeedMode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_FindBusSpeedMode, %function
Cy_SD_Host_FindBusSpeedMode:
.LFB217:
	.loc 3 4709 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI341:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #120
.LCFI342:
	.cfi_def_cfa_offset 128
	add	r7, sp, #0
.LCFI343:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	.loc 3 4713 28
	movs	r3, #0
	str	r3, [r7, #116]
	.loc 3 4714 36
	movs	r3, #0
	strb	r3, [r7, #115]
	.loc 3 4716 22
	movs	r3, #6
	str	r3, [r7, #96]
	.loc 3 4717 25
	movs	r3, #0
	str	r3, [r7, #100]
	.loc 3 4718 21
	movs	r3, #1
	strb	r3, [r7, #108]
	.loc 3 4719 38
	movs	r3, #0
	strb	r3, [r7, #105]
	.loc 3 4720 18
	movs	r3, #2
	strb	r3, [r7, #106]
	.loc 3 4721 24
	movs	r3, #1
	strb	r3, [r7, #104]
	.loc 3 4722 24
	movs	r3, #1
	strb	r3, [r7, #107]
	.loc 3 4723 17
	movs	r3, #0
	strb	r3, [r7, #109]
	.loc 3 4725 26
	movs	r3, #64
	str	r3, [r7, #72]
	.loc 3 4726 30
	movs	r3, #1
	str	r3, [r7, #76]
	.loc 3 4727 26
	movs	r3, #0
	strb	r3, [r7, #80]
	.loc 3 4728 28
	movs	r3, #0
	strb	r3, [r7, #81]
	.loc 3 4729 21
	movs	r3, #1
	strb	r3, [r7, #82]
	.loc 3 4730 21
	add	r3, r7, #8
	str	r3, [r7, #84]
	.loc 3 4731 28
	movs	r3, #14
	str	r3, [r7, #88]
	.loc 3 4732 36
	movs	r3, #0
	strb	r3, [r7, #92]
	.loc 3 4733 32
	movs	r3, #0
	strb	r3, [r7, #93]
	.loc 3 4736 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L571
	.loc 3 4738 12
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L572
	.loc 3 4738 41 discriminator 1
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L571
.L572:
	.loc 3 4740 19
	add	r3, r7, #72
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_InitDataTransfer
	.loc 3 4742 19
	add	r3, r7, #96
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_SendCommand
	str	r0, [r7, #116]
	.loc 3 4744 16
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L573
	.loc 3 4747 23
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_PollCmdComplete
	str	r0, [r7, #116]
.L573:
	.loc 3 4750 16
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L574
	.loc 3 4753 23
	add	r3, r7, #72
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_CmdRxData
	str	r0, [r7, #116]
.L574:
	.loc 3 4756 16
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L575
	.loc 3 4759 33
	ldr	r3, [r7, #20]
	.loc 3 4759 37
	and	r3, r3, #2048
	.loc 3 4759 20
	cmp	r3, #0
	beq	.L576
	.loc 3 4761 31
	movs	r3, #7
	strb	r3, [r7, #115]
	b	.L575
.L576:
	.loc 3 4763 38
	ldr	r3, [r7, #20]
	.loc 3 4763 42
	and	r3, r3, #8192
	.loc 3 4763 25
	cmp	r3, #0
	beq	.L577
	.loc 3 4765 31
	movs	r3, #4
	strb	r3, [r7, #115]
	b	.L575
.L577:
	.loc 3 4767 38
	ldr	r3, [r7, #20]
	.loc 3 4767 42
	and	r3, r3, #16384
	.loc 3 4767 25
	cmp	r3, #0
	beq	.L578
	.loc 3 4769 24
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L579
	.loc 3 4771 35
	movs	r3, #3
	strb	r3, [r7, #115]
	b	.L575
.L579:
	.loc 3 4775 35
	movs	r3, #1
	strb	r3, [r7, #115]
	b	.L575
.L578:
	.loc 3 4778 38
	ldr	r3, [r7, #20]
	.loc 3 4778 42
	and	r3, r3, #32768
	.loc 3 4778 25
	cmp	r3, #0
	beq	.L580
	.loc 3 4780 24
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L581
	.loc 3 4782 35
	movs	r3, #2
	strb	r3, [r7, #115]
	b	.L575
.L581:
	.loc 3 4786 35
	movs	r3, #0
	strb	r3, [r7, #115]
	b	.L575
.L580:
	.loc 3 4791 31
	movs	r3, #0
	strb	r3, [r7, #115]
.L575:
	.loc 3 4795 9
	movs	r0, #20
	bl	Cy_SysLib_DelayUs
.L571:
	.loc 3 4799 12
	ldrb	r3, [r7, #115]	@ zero_extendqisi2
	.loc 3 4800 1
	mov	r0, r3
	adds	r7, r7, #120
.LCFI344:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI345:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE217:
	.size	Cy_SD_Host_FindBusSpeedMode, .-Cy_SD_Host_FindBusSpeedMode
	.section	.text.Cy_SD_Host_SelBusVoltage,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SelBusVoltage
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SelBusVoltage, %function
Cy_SD_Host_SelBusVoltage:
.LFB218:
	.loc 3 4846 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI346:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #56
.LCFI347:
	.cfi_def_cfa_offset 64
	add	r7, sp, #16
.LCFI348:
	.cfi_def_cfa 7, 48
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 3 4849 14
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 3 4850 27
	movs	r3, #0
	strb	r3, [r7, #35]
	.loc 3 4851 27
	movs	r3, #0
	strb	r3, [r7, #23]
	.loc 3 4853 18
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 3 4856 14
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_VoltageCheck
	mov	r3, r0
	strb	r3, [r7, #35]
	.loc 3 4859 5
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_NormalReset
	.loc 3 4862 11
	add	r0, r7, #23
	add	r2, r7, #24
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	str	r3, [sp, #8]
	add	r3, r7, #28
	str	r3, [sp, #4]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_SdOcr
	str	r0, [r7, #36]
	.loc 3 4870 8
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L584
	.loc 3 4870 37 discriminator 1
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L584
	.loc 3 4870 66 discriminator 2
	ldr	r3, [r7, #24]
	.loc 3 4870 58 discriminator 2
	cmp	r3, #1
	bne	.L584
	.loc 3 4873 15
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	Cy_SD_Host_OpsVoltageSwitch
	str	r0, [r7, #36]
.L584:
	.loc 3 4876 12
	ldr	r3, [r7, #36]
	.loc 3 4877 1
	mov	r0, r3
	adds	r7, r7, #40
.LCFI349:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI350:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE218:
	.size	Cy_SD_Host_SelBusVoltage, .-Cy_SD_Host_SelBusVoltage
	.section	.text.Cy_SD_Host_EnableCardVoltage,"ax",%progbits
	.align	1
	.weak	Cy_SD_Host_EnableCardVoltage
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_EnableCardVoltage, %function
Cy_SD_Host_EnableCardVoltage:
.LFB219:
	.loc 3 4892 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI351:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI352:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI353:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 4893 95
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #41]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 4893 134
	orr	r3, r3, #1
	sxtb	r3, r3
	.loc 3 4893 52
	uxtb	r2, r3
	.loc 3 4893 49
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #41]
	.loc 3 4894 1
	nop
	adds	r7, r7, #12
.LCFI354:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI355:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI356:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE219:
	.size	Cy_SD_Host_EnableCardVoltage, .-Cy_SD_Host_EnableCardVoltage
	.section	.text.Cy_SD_Host_DisableCardVoltage,"ax",%progbits
	.align	1
	.weak	Cy_SD_Host_DisableCardVoltage
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_DisableCardVoltage, %function
Cy_SD_Host_DisableCardVoltage:
.LFB220:
	.loc 3 4909 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI357:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI358:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI359:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 4911 95
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #41]
	uxtb	r3, r3
	.loc 3 4911 52
	bic	r3, r3, #1
	uxtb	r2, r3
	.loc 3 4911 49
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #41]
	.loc 3 4912 1
	nop
	adds	r7, r7, #12
.LCFI360:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI361:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI362:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE220:
	.size	Cy_SD_Host_DisableCardVoltage, .-Cy_SD_Host_DisableCardVoltage
	.section	.text.Cy_SD_Host_GetResponse,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetResponse
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetResponse, %function
Cy_SD_Host_GetResponse:
.LFB221:
	.loc 3 4936 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI363:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #36
.LCFI364:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI365:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 3 4937 28
	ldr	r3, .L595
	str	r3, [r7, #28]
	.loc 3 4940 13
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L589
	.loc 3 4940 13 is_stmt 0 discriminator 1
	movs	r3, #4
	b	.L590
.L589:
	.loc 3 4940 13 discriminator 2
	movs	r3, #1
.L590:
	.loc 3 4940 13 discriminator 4
	strb	r3, [r7, #22]
	.loc 3 4942 8 is_stmt 1 discriminator 4
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L591
	.loc 3 4942 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L591
	.loc 3 4946 26
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	adds	r3, r3, #16
	str	r3, [r7, #24]
	.loc 3 4949 16
	movs	r3, #0
	strb	r3, [r7, #23]
	.loc 3 4949 9
	b	.L592
.L593:
	.loc 3 4951 28 discriminator 3
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	.loc 3 4951 26 discriminator 3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 3 4952 24 discriminator 3
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	.loc 3 4953 29 discriminator 3
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	.loc 3 4949 43 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L592:
	.loc 3 4949 9 discriminator 1
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L593
	.loc 3 4956 13
	movs	r3, #0
	str	r3, [r7, #28]
.L591:
	.loc 3 4959 12
	ldr	r3, [r7, #28]
	.loc 3 4960 1
	mov	r0, r3
	adds	r7, r7, #36
.LCFI366:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI367:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI368:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L596:
	.align	2
.L595:
	.word	15335426
	.cfi_endproc
.LFE221:
	.size	Cy_SD_Host_GetResponse, .-Cy_SD_Host_GetResponse
	.section	.text.Cy_SD_Host_InitDataTransfer,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_InitDataTransfer
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_InitDataTransfer, %function
Cy_SD_Host_InitDataTransfer:
.LFB222:
	.loc 3 4983 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI369:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI370:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI371:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 4984 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 4988 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L598
	.loc 3 4988 23 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L598
	.loc 3 4988 69 discriminator 2
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 4988 47 discriminator 2
	cmp	r3, #0
	beq	.L598
	.loc 3 4990 60
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 4990 16
	cmp	r3, #0
	beq	.L599
	.loc 3 4990 117 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 4990 76 discriminator 1
	cmp	r3, #1
	beq	.L599
	.loc 3 4990 174 discriminator 2
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 4990 133 discriminator 2
	cmp	r3, #2
	beq	.L599
	.loc 3 4990 233 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 4990 17 discriminator 3
	cmp	r3, #3
	beq	.L599
	.loc 3 4990 254 discriminator 4
	bl	CY_HALT
.L599:
	.loc 3 4991 42
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	.loc 3 4991 16
	cmp	r3, #14
	bls	.L600
	.loc 3 4991 62 discriminator 1
	bl	CY_HALT
.L600:
	.loc 3 4992 44
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 4992 16
	cmp	r3, #2048
	bhi	.L601
	.loc 3 4992 107 discriminator 2
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	.loc 3 4992 132 discriminator 2
	and	r3, r3, #7
	.loc 3 4992 17 discriminator 2
	cmp	r3, #4
	bne	.L602
	.loc 3 4992 166 discriminator 3
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 4992 179 discriminator 3
	and	r3, r3, #1
	.loc 3 4992 17 discriminator 3
	cmp	r3, #0
	beq	.L602
.L601:
	.loc 3 4992 14 discriminator 4
	bl	CY_HALT
.L602:
	.loc 3 4994 63
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #40]
	uxtb	r3, r3
	.loc 3 4994 89
	lsrs	r3, r3, #3
	.loc 3 4994 17
	and	r3, r3, #3
	str	r3, [r7, #12]
	.loc 3 4996 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	.loc 3 4997 54
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	.loc 3 4999 12
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bne	.L603
	.loc 3 4999 77 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 3 4999 63 discriminator 1
	cmp	r3, #0
	beq	.L603
	.loc 3 5002 82
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 5002 62
	mov	r2, r3
	.loc 3 5002 60
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3, #120]
	b	.L598
.L603:
	.loc 3 5006 27
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 3 5006 16
	cmp	r3, #0
	beq	.L604
	.loc 3 5009 20
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L605
	.loc 3 5012 113
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 5012 157
	orr	r3, r3, #28672
	sxth	r3, r3
	.loc 3 5012 69
	uxth	r2, r3
	.loc 3 5012 66
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #4]	@ movhi
	.loc 3 5016 66
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	.loc 3 5016 82
	and	r3, r3, #4096
	.loc 3 5016 24
	cmp	r3, #0
	beq	.L606
	.loc 3 5019 94
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 5019 74
	mov	r2, r3
	.loc 3 5019 72
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3, #88]
	.loc 3 5022 79
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	.loc 3 5022 67
	ldr	r2, [r7, #4]
	add	r2, r2, #4096
	str	r3, [r2]
	b	.L607
.L606:
	.loc 3 5027 89
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 5027 69
	mov	r2, r3
	.loc 3 5027 67
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3]
	b	.L607
.L605:
	.loc 3 5033 90
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	.loc 3 5033 70
	mov	r2, r3
	.loc 3 5033 68
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	str	r2, [r3, #88]
	b	.L607
.L604:
	.loc 3 5039 71
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	.loc 3 5039 59
	ldr	r2, [r7, #4]
	add	r2, r2, #4096
	str	r3, [r2]
.L607:
	.loc 3 5043 105
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 5043 120
	bic	r3, r3, #4080
	bic	r3, r3, #15
	sxth	r2, r3
	.loc 3 5043 184
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 5043 151
	sxth	r3, r3
	ubfx	r3, r3, #0, #12
	sxth	r3, r3
	.loc 3 5043 148
	orrs	r3, r3, r2
	sxth	r3, r3
	.loc 3 5043 61
	uxth	r2, r3
	.loc 3 5043 58
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #4]	@ movhi
	.loc 3 5048 81
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	.loc 3 5048 61
	uxth	r2, r3
	.loc 3 5048 59
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #6]	@ movhi
	.loc 3 5052 47
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	.loc 3 5052 40
	cmp	r3, #1
	bls	.L608
	.loc 3 5052 40 is_stmt 0 discriminator 1
	movs	r3, #32
	b	.L609
.L608:
	.loc 3 5052 40 discriminator 2
	movs	r3, #0
.L609:
	.loc 3 5052 26 is_stmt 1 discriminator 4
	str	r3, [r7, #16]
	.loc 3 5055 42 discriminator 4
	ldr	r3, [r7]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	.loc 3 5055 41 discriminator 4
	cmp	r3, #0
	beq	.L610
	.loc 3 5055 41 is_stmt 0 discriminator 1
	movs	r3, #16
	b	.L611
.L610:
	.loc 3 5055 41 discriminator 2
	movs	r3, #0
.L611:
	.loc 3 5055 26 is_stmt 1 discriminator 4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	.loc 3 5058 26 discriminator 4
	ldr	r3, [r7, #16]
	orr	r3, r3, #2
	str	r3, [r7, #16]
	.loc 3 5061 42 discriminator 4
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 3 5061 40 discriminator 4
	cmp	r3, #0
	beq	.L612
	.loc 3 5061 40 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L613
.L612:
	.loc 3 5061 40 discriminator 2
	movs	r3, #0
.L613:
	.loc 3 5061 26 is_stmt 1 discriminator 4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	.loc 3 5064 113 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #42]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 5064 128 discriminator 4
	bic	r3, r3, #8
	sxtb	r3, r3
	.loc 3 5064 190 discriminator 4
	ldr	r2, [r7]
	ldrb	r2, [r2, #20]	@ zero_extendqisi2
	.loc 3 5064 153 discriminator 4
	cmp	r2, #0
	beq	.L614
	.loc 3 5064 153 is_stmt 0 discriminator 1
	movs	r2, #8
	b	.L615
.L614:
	.loc 3 5064 153 discriminator 2
	movs	r2, #0
.L615:
	.loc 3 5064 153 discriminator 4
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 3 5064 60 is_stmt 1 discriminator 4
	uxtb	r2, r3
	.loc 3 5064 58 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #42]
	.loc 3 5069 104 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #46]
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 3 5069 119 discriminator 4
	bic	r3, r3, #15
	sxtb	r2, r3
	.loc 3 5069 179 discriminator 4
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	.loc 3 5069 147 discriminator 4
	sxtb	r3, r3
	and	r3, r3, #15
	sxtb	r3, r3
	.loc 3 5069 144 discriminator 4
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 3 5069 61 discriminator 4
	uxtb	r2, r3
	.loc 3 5069 58 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strb	r2, [r3, #46]
	.loc 3 5074 27 discriminator 4
	ldr	r3, [r7]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	.loc 3 5074 16 discriminator 4
	cmp	r3, #0
	beq	.L616
	.loc 3 5076 23
	ldr	r3, [r7]
	ldrb	r1, [r3, #21]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	Cy_SD_Host_OpsSetBlockCount
	str	r0, [r7, #20]
.L616:
	.loc 3 5082 31
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 3 5082 13
	cmp	r3, #3
	bhi	.L617
	adr	r2, .L619
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L619:
	.word	.L625+1
	.word	.L621+1
	.word	.L620+1
	.word	.L618+1
	.p2align 1
.L621:
	.loc 3 5088 34
	ldr	r3, [r7, #16]
	orr	r3, r3, #4
	str	r3, [r7, #16]
	.loc 3 5089 21
	b	.L623
.L620:
	.loc 3 5091 34
	ldr	r3, [r7, #16]
	orr	r3, r3, #8
	str	r3, [r7, #16]
	.loc 3 5092 21
	b	.L623
.L618:
	.loc 3 5094 34
	ldr	r3, [r7, #16]
	orr	r3, r3, #12
	str	r3, [r7, #16]
	.loc 3 5095 21
	b	.L623
.L617:
	.loc 3 5097 25
	ldr	r3, .L626
	str	r3, [r7, #20]
	.loc 3 5098 21
	b	.L623
.L625:
	.loc 3 5086 21
	nop
.L623:
	.loc 3 5101 60
	ldr	r3, [r7, #16]
	uxth	r2, r3
	.loc 3 5101 58
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #12]	@ movhi
.L598:
	.loc 3 5105 12
	ldr	r3, [r7, #20]
	.loc 3 5106 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI372:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI373:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L627:
	.align	2
.L626:
	.word	15335426
	.cfi_endproc
.LFE222:
	.size	Cy_SD_Host_InitDataTransfer, .-Cy_SD_Host_InitDataTransfer
	.section	.text.Cy_SD_Host_ChangeIoVoltage,"ax",%progbits
	.align	1
	.weak	Cy_SD_Host_ChangeIoVoltage
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_ChangeIoVoltage, %function
Cy_SD_Host_ChangeIoVoltage:
.LFB223:
	.loc 3 5132 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI374:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI375:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI376:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 5134 98
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 5134 114
	bic	r3, r3, #8
	sxth	r3, r3
	.loc 3 5134 140
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	cmp	r2, #1
	bne	.L629
	.loc 3 5134 140 is_stmt 0 discriminator 1
	movs	r2, #8
	b	.L630
.L629:
	.loc 3 5134 140 discriminator 2
	movs	r2, #0
.L630:
	.loc 3 5134 140 discriminator 4
	orrs	r3, r3, r2
	sxth	r3, r3
	.loc 3 5134 54 is_stmt 1 discriminator 4
	uxth	r2, r3
	.loc 3 5134 51 discriminator 4
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #62]	@ movhi
	.loc 3 5137 1 discriminator 4
	nop
	adds	r7, r7, #12
.LCFI377:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI378:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI379:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE223:
	.size	Cy_SD_Host_ChangeIoVoltage, .-Cy_SD_Host_ChangeIoVoltage
	.section	.text.Cy_SD_Host_IsCardConnected,"ax",%progbits
	.align	1
	.weak	Cy_SD_Host_IsCardConnected
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_IsCardConnected, %function
Cy_SD_Host_IsCardConnected:
.LFB224:
	.loc 3 5159 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI380:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI381:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI382:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 5160 10
	nop
.L632:
	.loc 3 5160 52 discriminator 1
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 5160 66 discriminator 1
	and	r3, r3, #131072
	.loc 3 5160 10 discriminator 1
	cmp	r3, #0
	beq	.L632
	.loc 3 5165 46
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	.loc 3 5165 60
	and	r3, r3, #65536
	.loc 3 5165 75
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 3 5166 1
	mov	r0, r3
	adds	r7, r7, #12
.LCFI383:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI384:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI385:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE224:
	.size	Cy_SD_Host_IsCardConnected, .-Cy_SD_Host_IsCardConnected
	.section	.text.Cy_SD_Host_SoftwareReset,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_SoftwareReset
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_SoftwareReset, %function
Cy_SD_Host_SoftwareReset:
.LFB225:
	.loc 3 5184 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI386:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI387:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI388:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 5185 5
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L635
	cmp	r3, #2
	bgt	.L644
	cmp	r3, #0
	beq	.L637
	cmp	r3, #1
	beq	.L638
	.loc 3 5238 13
	b	.L644
.L637:
	.loc 3 5188 55
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #4
	strb	r2, [r3, #47]
	.loc 3 5191 13
	movs	r0, #8
	bl	Cy_SysLib_DelayUs
	.loc 3 5193 18
	nop
.L639:
	.loc 3 5193 61 discriminator 1
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #47]
	uxtb	r3, r3
	.loc 3 5193 73 discriminator 1
	and	r3, r3, #4
	.loc 3 5193 18 discriminator 1
	cmp	r3, #0
	bne	.L639
	.loc 3 5198 13
	b	.L640
.L638:
	.loc 3 5200 55
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #2
	strb	r2, [r3, #47]
	.loc 3 5203 13
	movs	r0, #8
	bl	Cy_SysLib_DelayUs
	.loc 3 5205 18
	nop
.L641:
	.loc 3 5205 61 discriminator 1
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #47]
	uxtb	r3, r3
	.loc 3 5205 73 discriminator 1
	and	r3, r3, #2
	.loc 3 5205 18 discriminator 1
	cmp	r3, #0
	bne	.L641
	.loc 3 5210 13
	b	.L640
.L635:
	.loc 3 5213 57
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #0
	strh	r2, [r3, #44]	@ movhi
	.loc 3 5216 13
	movs	r0, #8
	bl	Cy_SysLib_DelayUs
	.loc 3 5218 55
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	movs	r2, #1
	strb	r2, [r3, #47]
	.loc 3 5220 18
	nop
.L642:
	.loc 3 5220 61 discriminator 1
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrb	r3, [r3, #47]
	uxtb	r3, r3
	.loc 3 5220 73 discriminator 1
	and	r3, r3, #1
	.loc 3 5220 18 discriminator 1
	cmp	r3, #0
	bne	.L642
	.loc 3 5226 114
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	.loc 3 5226 154
	orr	r3, r3, #1
	sxth	r3, r3
	.loc 3 5226 59
	uxth	r2, r3
	.loc 3 5226 57
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	strh	r2, [r3, #44]	@ movhi
	.loc 3 5230 18
	nop
.L643:
	.loc 3 5230 60 discriminator 1
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldrh	r3, [r3, #44]	@ movhi
	uxth	r3, r3
	.loc 3 5230 74 discriminator 1
	and	r3, r3, #2
	.loc 3 5230 18 discriminator 1
	cmp	r3, #0
	beq	.L643
	.loc 3 5235 13
	b	.L640
.L644:
	.loc 3 5238 13
	nop
.L640:
	.loc 3 5240 1
	nop
	adds	r7, r7, #8
.LCFI389:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI390:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE225:
	.size	Cy_SD_Host_SoftwareReset, .-Cy_SD_Host_SoftwareReset
	.section	.text.Cy_SD_Host_GetPresentState,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetPresentState
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetPresentState, %function
Cy_SD_Host_GetPresentState:
.LFB226:
	.loc 3 5256 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI391:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI392:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI393:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 5259 9
	ldr	r3, [r7, #4]
	add	r3, r3, #4096
	ldr	r3, [r3, #36]
	str	r3, [r7, #12]
	.loc 3 5261 12
	ldr	r3, [r7, #12]
	.loc 3 5262 1
	mov	r0, r3
	adds	r7, r7, #20
.LCFI394:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI395:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI396:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE226:
	.size	Cy_SD_Host_GetPresentState, .-Cy_SD_Host_GetPresentState
	.section	.text.Cy_SD_Host_DeepSleepCallback,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_DeepSleepCallback
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_DeepSleepCallback, %function
Cy_SD_Host_DeepSleepCallback:
.LFB227:
	.loc 3 5306 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI397:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI398:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI399:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 5307 26
	ldr	r3, .L659
	str	r3, [r7, #20]
	.loc 3 5308 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 3 5310 5
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L657
	adr	r2, .L650
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L650:
	.word	.L653+1
	.word	.L652+1
	.word	.L657+1
	.word	.L651+1
	.word	.L657+1
	.word	.L657+1
	.word	.L657+1
	.word	.L649+1
	.p2align 1
.L653:
.LBB2:
	.loc 3 5315 31
	ldr	r0, [r7, #16]
	bl	Cy_SD_Host_GetPresentState
	str	r0, [r7, #12]
	.loc 3 5316 44
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	.loc 3 5316 16
	cmp	r3, #0
	bne	.L658
	.loc 3 5317 44 discriminator 1
	ldr	r3, [r7, #12]
	and	r3, r3, #2
	.loc 3 5316 63 discriminator 1
	cmp	r3, #0
	bne	.L658
	.loc 3 5319 21
	movs	r3, #0
	str	r3, [r7, #20]
.LBE2:
	.loc 3 5322 9
	b	.L658
.L652:
	.loc 3 5326 17
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 5328 9
	b	.L655
.L651:
	.loc 3 5333 13
	ldr	r0, [r7, #16]
	bl	Cy_SD_Host_DisableSdClk
	.loc 3 5335 17
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 5337 9
	b	.L655
.L649:
	.loc 3 5342 13
	ldr	r0, [r7, #16]
	bl	Cy_SD_Host_EnableSdClk
	.loc 3 5345 13
	movs	r0, #1
	bl	Cy_SysLib_DelayUs
	.loc 3 5347 17
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 5349 9
	b	.L655
.L657:
	.loc 3 5353 13
	nop
	b	.L655
.L658:
	.loc 3 5322 9
	nop
.L655:
	.loc 3 5356 12
	ldr	r3, [r7, #20]
	.loc 3 5357 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI400:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI401:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L660:
	.align	2
.L659:
	.word	4325631
	.cfi_endproc
.LFE227:
	.size	Cy_SD_Host_DeepSleepCallback, .-Cy_SD_Host_DeepSleepCallback
	.section	.text.Cy_SD_Host_GetBlockCount,"ax",%progbits
	.align	1
	.global	Cy_SD_Host_GetBlockCount
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_SD_Host_GetBlockCount, %function
Cy_SD_Host_GetBlockCount:
.LFB228:
	.loc 3 5383 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI402:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
.LCFI403:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI404:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 5384 28
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 5387 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L662
	.loc 3 5387 23 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L662
	.loc 3 5387 48 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L662
	.loc 3 5389 38
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 5389 12
	cmp	r3, #0
	beq	.L663
	.loc 3 5389 80 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 3 5389 50 discriminator 1
	cmp	r3, #2
	bne	.L667
.L663:
	.loc 3 5391 35
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	.loc 3 5391 26
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 3 5389 12
	b	.L667
.L662:
	.loc 3 5396 13
	ldr	r3, .L668
	str	r3, [r7, #20]
	b	.L665
.L667:
	.loc 3 5389 12
	nop
.L665:
	.loc 3 5399 12
	ldr	r3, [r7, #20]
	.loc 3 5400 1
	mov	r0, r3
	adds	r7, r7, #28
.LCFI405:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI406:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI407:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L669:
	.align	2
.L668:
	.word	15335426
	.cfi_endproc
.LFE228:
	.size	Cy_SD_Host_GetBlockCount, .-Cy_SD_Host_GetBlockCount
	.text
.Letext0:
	.file 4 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 5 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/ip/cyip_sdhc.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.file 8 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_syspm.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2e8c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF370
	.byte	0xc
	.4byte	.LASF371
	.4byte	.LASF372
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
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x6
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x6
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xbf
	.uleb128 0x6
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0xec
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0x5
	.4byte	0xec
	.uleb128 0x5
	.4byte	0xec
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	0xfb
	.uleb128 0x5
	.4byte	0x10b
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.byte	0x2b
	.byte	0x9
	.4byte	0x13d
	.uleb128 0xa
	.ascii	"CTL\000"
	.byte	0x6
	.byte	0x2c
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2d
	.byte	0x1c
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2e
	.byte	0x3
	.4byte	0x115
	.uleb128 0xc
	.2byte	0x1000
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x5fd
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x34
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x35
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x36
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x37
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x38
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x39
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3a
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3c
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3d
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3e
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3f
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x40
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x41
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x42
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x43
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x44
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x45
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x47
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x48
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x49
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4a
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4b
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4d
	.byte	0x1c
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4f
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x50
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x51
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x52
	.byte	0x1c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x53
	.byte	0x16
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x54
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x55
	.byte	0x1b
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x56
	.byte	0x1b
	.4byte	0x612
	.byte	0x2
	.byte	0x23
	.uleb128 0x55
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x57
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x58
	.byte	0x1c
	.4byte	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x59
	.byte	0x15
	.4byte	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x5a
	.byte	0x1c
	.4byte	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0x5b
	.byte	0x1c
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xfe
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0x5c
	.byte	0x1c
	.4byte	0x110
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0x5d
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0x5e
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5f
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0x60
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0x61
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0x62
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0x63
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0x64
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0x65
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0x66
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0x67
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x6
	.byte	0x68
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ac
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.byte	0x69
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.byte	0x6a
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b4
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x6
	.byte	0x6b
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x6
	.byte	0x6c
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6d
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6e
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6f
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0x70
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0x71
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0x72
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0x73
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0x74
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0x75
	.byte	0x1c
	.4byte	0x646
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0x76
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x500
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0x77
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x504
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0x78
	.byte	0x14
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x508
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0x79
	.byte	0x1b
	.4byte	0x660
	.byte	0x3
	.byte	0x23
	.uleb128 0x509
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0x7a
	.byte	0x14
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x510
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0x7b
	.byte	0x1b
	.4byte	0x67a
	.byte	0x3
	.byte	0x23
	.uleb128 0x511
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0x7c
	.byte	0x15
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x52c
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0x7d
	.byte	0x15
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x52e
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0x7e
	.byte	0x1c
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x530
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0x7f
	.byte	0x15
	.4byte	0xcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x534
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x6
	.byte	0x80
	.byte	0x1c
	.4byte	0x695
	.byte	0x3
	.byte	0x23
	.uleb128 0x538
	.byte	0
	.uleb128 0x7
	.4byte	0xa4
	.4byte	0x60d
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x5fd
	.uleb128 0x5
	.4byte	0x60d
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x627
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0x617
	.uleb128 0x5
	.4byte	0x627
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x641
	.uleb128 0x8
	.4byte	0x8c
	.byte	0xc7
	.byte	0
	.uleb128 0x6
	.4byte	0x631
	.uleb128 0x5
	.4byte	0x641
	.uleb128 0x7
	.4byte	0xa4
	.4byte	0x65b
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	0x64b
	.uleb128 0x5
	.4byte	0x65b
	.uleb128 0x7
	.4byte	0xa4
	.4byte	0x675
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x665
	.uleb128 0x5
	.4byte	0x675
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x690
	.uleb128 0xd
	.4byte	0x8c
	.2byte	0x2b1
	.byte	0
	.uleb128 0x6
	.4byte	0x67f
	.uleb128 0x5
	.4byte	0x690
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x6
	.byte	0x81
	.byte	0x3
	.4byte	0x149
	.uleb128 0xc
	.2byte	0x2000
	.byte	0x6
	.byte	0x86
	.byte	0x9
	.4byte	0x6df
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x6
	.byte	0x87
	.byte	0x1b
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x88
	.byte	0x1c
	.4byte	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x6
	.byte	0x89
	.byte	0x1b
	.4byte	0x69a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.byte	0
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0x6f0
	.uleb128 0xd
	.4byte	0x8c
	.2byte	0x3f7
	.byte	0
	.uleb128 0x6
	.4byte	0x6df
	.uleb128 0x5
	.4byte	0x6f0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x6
	.byte	0x8a
	.byte	0x3
	.4byte	0x6a6
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x716
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x6c9
	.byte	0x16
	.4byte	0x6fa
	.uleb128 0x6
	.4byte	0x716
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF99
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF100
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF101
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x8
	.2byte	0x8c3
	.byte	0x1
	.4byte	0x789
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0
	.uleb128 0x11
	.4byte	.LASF103
	.4byte	0x420001
	.uleb128 0x11
	.4byte	.LASF104
	.4byte	0x420002
	.uleb128 0x11
	.4byte	.LASF105
	.4byte	0x420003
	.uleb128 0x11
	.4byte	.LASF106
	.4byte	0x420004
	.uleb128 0x11
	.4byte	.LASF107
	.4byte	0x420005
	.uleb128 0x11
	.4byte	.LASF108
	.4byte	0x4200ff
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x8cc
	.byte	0x3
	.4byte	0x73d
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.2byte	0xb2d
	.byte	0x1
	.4byte	0x7be
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x8
	.2byte	0xb44
	.byte	0x3
	.4byte	0x796
	.uleb128 0x12
	.byte	0x8
	.byte	0x8
	.2byte	0xb74
	.byte	0x9
	.4byte	0x7f6
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x8
	.2byte	0xb76
	.byte	0xb
	.4byte	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x8
	.2byte	0xb79
	.byte	0xb
	.4byte	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x8
	.2byte	0xb7c
	.byte	0x3
	.4byte	0x7cb
	.uleb128 0x15
	.byte	0x4
	.4byte	0x7f8
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x4be
	.byte	0x1
	.4byte	0x833
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x4c3
	.byte	0x2
	.4byte	0x80b
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x4c7
	.byte	0x1
	.4byte	0x868
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x4cc
	.byte	0x2
	.4byte	0x840
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x4d0
	.byte	0x1
	.4byte	0x897
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x4d4
	.byte	0x2
	.4byte	0x875
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x2
	.2byte	0x4f3
	.byte	0x1
	.4byte	0x902
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.4byte	0xea0001
	.uleb128 0x11
	.4byte	.LASF134
	.4byte	0xea0002
	.uleb128 0x11
	.4byte	.LASF135
	.4byte	0xea0003
	.uleb128 0x11
	.4byte	.LASF136
	.4byte	0xea0004
	.uleb128 0x11
	.4byte	.LASF137
	.4byte	0xea0005
	.uleb128 0x11
	.4byte	.LASF138
	.4byte	0xea0006
	.uleb128 0x11
	.4byte	.LASF139
	.4byte	0xea0007
	.uleb128 0x11
	.4byte	.LASF140
	.4byte	0xea0008
	.byte	0
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x4fd
	.byte	0x3
	.4byte	0x8a4
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x501
	.byte	0x1
	.4byte	0x931
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0x2
	.2byte	0x505
	.byte	0x3
	.4byte	0x90f
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x509
	.byte	0x1
	.4byte	0x97e
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x512
	.byte	0x3
	.4byte	0x93e
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x516
	.byte	0x1
	.4byte	0x9a7
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x2
	.2byte	0x519
	.byte	0x3
	.4byte	0x98b
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x51d
	.byte	0x1
	.4byte	0x9ee
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x537
	.byte	0x3
	.4byte	0x9b4
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x53b
	.byte	0x1
	.4byte	0xa2f
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x542
	.byte	0x3
	.4byte	0x9fb
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x546
	.byte	0x1
	.4byte	0xa70
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0x2
	.2byte	0x54d
	.byte	0x2
	.4byte	0xa3c
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x551
	.byte	0x1
	.4byte	0xaa5
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0x2
	.2byte	0x556
	.byte	0x2
	.4byte	0xa7d
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x55a
	.byte	0x1
	.4byte	0xad4
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x55e
	.byte	0x2
	.4byte	0xab2
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x2
	.2byte	0x562
	.byte	0x1
	.4byte	0xb03
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x566
	.byte	0x3
	.4byte	0xae1
	.uleb128 0x12
	.byte	0x3
	.byte	0x2
	.2byte	0x592
	.byte	0x9
	.4byte	0xb4b
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x2
	.2byte	0x594
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x595
	.byte	0x1e
	.4byte	0xad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x2
	.2byte	0x596
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF196
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x59a
	.byte	0x3
	.4byte	0xb10
	.uleb128 0x6
	.4byte	0xb52
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.2byte	0x59d
	.byte	0x9
	.4byte	0xbbf
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x59f
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x2
	.2byte	0x5a0
	.byte	0x1f
	.4byte	0x931
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x5a1
	.byte	0x20
	.4byte	0xbbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.ascii	"rca\000"
	.byte	0x2
	.2byte	0x5a2
	.byte	0xf
	.4byte	0xbc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x5a3
	.byte	0x24
	.4byte	0xbcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xa2f
	.uleb128 0x15
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x15
	.byte	0x4
	.4byte	0xa70
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x5a4
	.byte	0x2
	.4byte	0xb64
	.uleb128 0x6
	.4byte	0xbd1
	.uleb128 0x12
	.byte	0x10
	.byte	0x2
	.2byte	0x5a7
	.byte	0x9
	.4byte	0xc6e
	.uleb128 0x13
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x5a9
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x5aa
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x5ab
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x2
	.2byte	0x5ac
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x13
	.4byte	.LASF207
	.byte	0x2
	.2byte	0x5ad
	.byte	0x23
	.4byte	0xaa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x2
	.2byte	0x5ae
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.4byte	.LASF209
	.byte	0x2
	.2byte	0x5af
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF210
	.byte	0x2
	.2byte	0x5b3
	.byte	0x1e
	.4byte	0x833
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x5b4
	.byte	0x3
	.4byte	0xbe3
	.uleb128 0x6
	.4byte	0xc6e
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.2byte	0x5b7
	.byte	0x9
	.4byte	0xd1b
	.uleb128 0x13
	.4byte	.LASF212
	.byte	0x2
	.2byte	0x5b9
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF213
	.byte	0x2
	.2byte	0x5ba
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF214
	.byte	0x2
	.2byte	0x5bb
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF215
	.byte	0x2
	.2byte	0x5bc
	.byte	0x1e
	.4byte	0x868
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x13
	.4byte	.LASF216
	.byte	0x2
	.2byte	0x5bd
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x5be
	.byte	0xf
	.4byte	0xbc5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x5c1
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF219
	.byte	0x2
	.2byte	0x5c2
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x5c3
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x5c4
	.byte	0x2
	.4byte	0xc80
	.uleb128 0x6
	.4byte	0xd1b
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.2byte	0x5c7
	.byte	0x9
	.4byte	0xda8
	.uleb128 0x13
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x5c9
	.byte	0xf
	.4byte	0xbc5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF222
	.byte	0x2
	.2byte	0x5ca
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF223
	.byte	0x2
	.2byte	0x5cb
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF215
	.byte	0x2
	.2byte	0x5cc
	.byte	0x1e
	.4byte	0x868
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x5cd
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x5ce
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF214
	.byte	0x2
	.2byte	0x5cf
	.byte	0x22
	.4byte	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF224
	.byte	0x2
	.2byte	0x5d0
	.byte	0x3
	.4byte	0xd2d
	.uleb128 0x12
	.byte	0x20
	.byte	0x2
	.2byte	0x5d3
	.byte	0x9
	.4byte	0xe20
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x5d5
	.byte	0x1e
	.4byte	0xad4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x5d6
	.byte	0x23
	.4byte	0xa70
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x5d7
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.ascii	"RCA\000"
	.byte	0x2
	.2byte	0x5d8
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x5d9
	.byte	0x1f
	.4byte	0xa2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.ascii	"csd\000"
	.byte	0x2
	.2byte	0x5da
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xe30
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF226
	.byte	0x2
	.2byte	0x5db
	.byte	0x2
	.4byte	0xdb5
	.uleb128 0x6
	.4byte	0xe30
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF228
	.byte	0x3
	.2byte	0x1504
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB228
	.4byte	.LFE228
	.4byte	.LLST77
	.byte	0x1
	.4byte	0xea3
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1504
	.byte	0x3c
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF227
	.byte	0x3
	.2byte	0x1505
	.byte	0x34
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x1506
	.byte	0x44
	.4byte	0xea9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1508
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x716
	.uleb128 0x15
	.byte	0x4
	.4byte	0xe30
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF229
	.byte	0x3
	.2byte	0x14b8
	.byte	0x16
	.byte	0x1
	.4byte	0x789
	.4byte	.LFB227
	.4byte	.LFE227
	.4byte	.LLST76
	.byte	0x1
	.4byte	0xf2a
	.uleb128 0x18
	.4byte	.LASF230
	.byte	0x3
	.2byte	0x14b8
	.byte	0x53
	.4byte	0x805
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF231
	.byte	0x3
	.2byte	0x14b9
	.byte	0x4f
	.4byte	0x7be
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x14bb
	.byte	0x1a
	.4byte	0x789
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF232
	.byte	0x3
	.2byte	0x14bc
	.byte	0x10
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x3
	.2byte	0x14c3
	.byte	0x16
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF234
	.byte	0x3
	.2byte	0x1487
	.byte	0xa
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB226
	.4byte	.LFE226
	.4byte	.LLST75
	.byte	0x1
	.4byte	0xf6b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1487
	.byte	0x36
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1489
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x723
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF237
	.byte	0x3
	.2byte	0x143e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB225
	.4byte	.LFE225
	.4byte	.LLST74
	.byte	0x1
	.4byte	0xfae
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x143e
	.byte	0x2a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF235
	.byte	0x3
	.2byte	0x143f
	.byte	0x35
	.4byte	0x897
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF236
	.byte	0x3
	.2byte	0x1426
	.byte	0xc
	.byte	0x1
	.4byte	0xb4b
	.4byte	.LFB224
	.4byte	.LFE224
	.4byte	.LLST73
	.byte	0x1
	.4byte	0xfdf
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1426
	.byte	0x38
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x140b
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB223
	.4byte	.LFE223
	.4byte	.LLST72
	.byte	0x1
	.4byte	0x101c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x140b
	.byte	0x42
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0x3
	.2byte	0x140b
	.byte	0x63
	.4byte	0x9a7
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF240
	.byte	0x3
	.2byte	0x1375
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB222
	.4byte	.LFE222
	.4byte	.LLST71
	.byte	0x1
	.4byte	0x108d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1375
	.byte	0x3f
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x1376
	.byte	0x58
	.4byte	0x108d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1378
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF242
	.byte	0x3
	.2byte	0x1379
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF243
	.byte	0x3
	.2byte	0x137a
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xd28
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x1345
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB221
	.4byte	.LFE221
	.4byte	.LLST70
	.byte	0x1
	.4byte	0x1122
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1345
	.byte	0x40
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF245
	.byte	0x3
	.2byte	0x1346
	.byte	0x3a
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.4byte	.LASF246
	.byte	0x3
	.2byte	0x1347
	.byte	0x34
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1349
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF247
	.byte	0x3
	.2byte	0x134a
	.byte	0x1e
	.4byte	0x1122
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x134b
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.4byte	.LASF248
	.byte	0x3
	.2byte	0x134c
	.byte	0xd
	.4byte	0x93
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF249
	.byte	0x3
	.2byte	0x132c
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB220
	.4byte	.LFE220
	.4byte	.LLST69
	.byte	0x1
	.4byte	0x1155
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x132c
	.byte	0x45
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF250
	.byte	0x3
	.2byte	0x131b
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB219
	.4byte	.LFE219
	.4byte	.LLST68
	.byte	0x1
	.4byte	0x1182
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x131b
	.byte	0x44
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF251
	.byte	0x3
	.2byte	0x12eb
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB218
	.4byte	.LFE218
	.4byte	.LLST67
	.byte	0x1
	.4byte	0x1223
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x12eb
	.byte	0x3c
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF252
	.byte	0x3
	.2byte	0x12ec
	.byte	0x35
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x12ed
	.byte	0x4b
	.4byte	0xea9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x12ef
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x3
	.2byte	0x12f0
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x12f1
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x12f2
	.byte	0x1b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0x3
	.2byte	0x12f3
	.byte	0x1b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF275
	.byte	0x3
	.2byte	0x1262
	.byte	0x27
	.byte	0x1
	.4byte	0x97e
	.4byte	.LFB217
	.4byte	.LFE217
	.4byte	.LLST66
	.byte	0x1
	.4byte	0x12c7
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1262
	.byte	0x4e
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x3
	.2byte	0x1263
	.byte	0x37
	.4byte	0xb4b
	.byte	0x3
	.byte	0x91
	.sleb128 -125
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0x3
	.2byte	0x1264
	.byte	0x4d
	.4byte	0xa2f
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x1266
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x1267
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0x3
	.2byte	0x1268
	.byte	0xe
	.4byte	0x12c7
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1269
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x126a
	.byte	0x24
	.4byte	0x97e
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x12d7
	.uleb128 0x8
	.4byte	0x8c
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF259
	.byte	0x3
	.2byte	0x11af
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB216
	.4byte	.LFE216
	.4byte	.LLST65
	.byte	0x1
	.4byte	0x1368
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x11af
	.byte	0x3e
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x11b0
	.byte	0x52
	.4byte	0x97e
	.byte	0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x11b1
	.byte	0x53
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x11b3
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0x3
	.2byte	0x11b4
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x11b5
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0x11b6
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xe3d
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF263
	.byte	0x3
	.2byte	0x1129
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB215
	.4byte	.LFE215
	.4byte	.LLST64
	.byte	0x1
	.4byte	0x13ef
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1129
	.byte	0x3f
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x112a
	.byte	0x52
	.4byte	0x97e
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x112c
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF264
	.byte	0x3
	.2byte	0x112d
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF265
	.byte	0x3
	.2byte	0x112e
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF266
	.byte	0x3
	.2byte	0x112f
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF267
	.byte	0x3
	.2byte	0x1102
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB214
	.4byte	.LFE214
	.4byte	.LLST63
	.byte	0x1
	.4byte	0x1440
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1102
	.byte	0x3e
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF268
	.byte	0x3
	.2byte	0x1103
	.byte	0x4d
	.4byte	0x931
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1105
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF269
	.byte	0x3
	.2byte	0x10eb
	.byte	0xc
	.byte	0x1
	.4byte	0xb4b
	.4byte	.LFB213
	.4byte	.LFE213
	.4byte	.LLST62
	.byte	0x1
	.4byte	0x1471
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x10eb
	.byte	0x30
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF270
	.byte	0x3
	.2byte	0x10c7
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	.LLST61
	.byte	0x1
	.4byte	0x14c2
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x10c7
	.byte	0x3a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF271
	.byte	0x3
	.2byte	0x10c7
	.byte	0x49
	.4byte	0xa9
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x10c9
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF272
	.byte	0x3
	.2byte	0x109e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LLST60
	.byte	0x1
	.4byte	0x14ef
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x109e
	.byte	0x24
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF273
	.byte	0x3
	.2byte	0x1076
	.byte	0x6
	.byte	0x1
	.4byte	.LFB210
	.4byte	.LFE210
	.4byte	.LLST59
	.byte	0x1
	.4byte	0x152c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1076
	.byte	0x23
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x1078
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF276
	.byte	0x3
	.2byte	0x1009
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	.LLST58
	.byte	0x1
	.4byte	0x15fc
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1009
	.byte	0x42
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x3
	.2byte	0x100a
	.byte	0x2b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x100b
	.byte	0x31
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF256
	.byte	0x3
	.2byte	0x100c
	.byte	0x2c
	.4byte	0x15fc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x100d
	.byte	0x2b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x3
	.2byte	0x100e
	.byte	0x31
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x100f
	.byte	0x41
	.4byte	0xea9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1011
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0x1012
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x1013
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x1014
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xb4b
	.uleb128 0x1f
	.4byte	.LASF277
	.byte	0x3
	.2byte	0xf96
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB208
	.4byte	.LFE208
	.4byte	.LLST57
	.byte	0x1
	.4byte	0x16a2
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xf96
	.byte	0x42
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x3
	.2byte	0xf97
	.byte	0x2b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0x3
	.2byte	0xf98
	.byte	0x31
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF278
	.byte	0x3
	.2byte	0xf99
	.byte	0x31
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.4byte	.LASF256
	.byte	0x3
	.2byte	0xf9a
	.byte	0x2c
	.4byte	0x15fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x3
	.2byte	0xf9b
	.byte	0x31
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xf9d
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0xf9e
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF279
	.byte	0x3
	.2byte	0xf3b
	.byte	0x15
	.byte	0x1
	.4byte	0xb4b
	.4byte	.LFB207
	.4byte	.LFE207
	.4byte	.LLST56
	.byte	0x1
	.4byte	0x1712
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xf3b
	.byte	0x38
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xf3d
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x3
	.2byte	0xf3e
	.byte	0x1b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xf3f
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0xf40
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF281
	.byte	0x3
	.2byte	0xf20
	.byte	0xd
	.byte	0x1
	.4byte	.LFB206
	.4byte	.LFE206
	.4byte	.LLST55
	.byte	0x1
	.4byte	0x174e
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xf20
	.byte	0x2f
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF280
	.byte	0x3
	.2byte	0xf22
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF282
	.byte	0x3
	.2byte	0xf05
	.byte	0xd
	.byte	0x1
	.4byte	.LFB205
	.4byte	.LFE205
	.4byte	.LLST54
	.byte	0x1
	.4byte	0x178a
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xf05
	.byte	0x2e
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF283
	.byte	0x3
	.2byte	0xf07
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF284
	.byte	0x3
	.2byte	0xec5
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB204
	.4byte	.LFE204
	.4byte	.LLST53
	.byte	0x1
	.4byte	0x180c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xec5
	.byte	0x35
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.ascii	"scr\000"
	.byte	0x3
	.2byte	0xec6
	.byte	0x34
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xec7
	.byte	0x4a
	.4byte	0x1368
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xec9
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xeca
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0xecb
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x3
	.2byte	0xe91
	.byte	0xa
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB203
	.4byte	.LFE203
	.4byte	.LLST52
	.byte	0x1
	.4byte	0x185d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xe91
	.byte	0x27
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xe93
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xe94
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF286
	.byte	0x3
	.2byte	0xe42
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LLST51
	.byte	0x1
	.4byte	0x18df
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xe42
	.byte	0x38
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.4byte	.LASF287
	.byte	0x3
	.2byte	0xe42
	.byte	0x48
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xe43
	.byte	0x4e
	.4byte	0xea9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xe45
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xe46
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0xe47
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF288
	.byte	0x3
	.2byte	0xdd3
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LLST50
	.byte	0x1
	.4byte	0x19a3
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xdd3
	.byte	0x35
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.ascii	"csd\000"
	.byte	0x3
	.2byte	0xdd4
	.byte	0x34
	.4byte	0xbc5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xdd5
	.byte	0x44
	.4byte	0xea9
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xdd7
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xdd8
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xdd9
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF289
	.byte	0x3
	.2byte	0xdda
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF290
	.byte	0x3
	.2byte	0xddb
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF291
	.byte	0x3
	.2byte	0xddc
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF292
	.byte	0x3
	.2byte	0xddd
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF293
	.byte	0x3
	.2byte	0xd8e
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LLST49
	.byte	0x1
	.4byte	0x1a22
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xd8e
	.byte	0x35
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.ascii	"cid\000"
	.byte	0x3
	.2byte	0xd8f
	.byte	0x34
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xd91
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xd92
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x3
	.2byte	0xd93
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xd94
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF294
	.byte	0x3
	.2byte	0xd63
	.byte	0xa
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB199
	.4byte	.LFE199
	.4byte	.LLST48
	.byte	0x1
	.4byte	0x1a73
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xd63
	.byte	0x27
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xd63
	.byte	0x4d
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x3
	.2byte	0xd65
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF295
	.byte	0x3
	.2byte	0xd14
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB198
	.4byte	.LFE198
	.4byte	.LLST47
	.byte	0x1
	.4byte	0x1af5
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xd14
	.byte	0x3a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.4byte	.LASF296
	.byte	0x3
	.2byte	0xd15
	.byte	0x39
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xd16
	.byte	0x4f
	.4byte	0x1368
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xd18
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xd19
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0xd1a
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF297
	.byte	0x3
	.2byte	0xcd2
	.byte	0xa
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB197
	.4byte	.LFE197
	.4byte	.LLST46
	.byte	0x1
	.4byte	0x1b76
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xcd2
	.byte	0x2e
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xcd3
	.byte	0x43
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xcd5
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xcd6
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xcd7
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0x3
	.2byte	0xcd8
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF298
	.byte	0x3
	.2byte	0xc94
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB196
	.4byte	.LFE196
	.4byte	.LLST45
	.byte	0x1
	.4byte	0x1be7
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xc94
	.byte	0x3b
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF299
	.byte	0x3
	.2byte	0xc95
	.byte	0x4e
	.4byte	0xb03
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xc96
	.byte	0x4a
	.4byte	0xea9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xc98
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF300
	.byte	0x3
	.2byte	0xc99
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF301
	.byte	0x3
	.2byte	0xbce
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB195
	.4byte	.LFE195
	.4byte	.LLST44
	.byte	0x1
	.4byte	0x1c68
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xbce
	.byte	0x3c
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xbcf
	.byte	0x52
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xbd1
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xbd2
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xbd3
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0xbd4
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF302
	.byte	0x3
	.2byte	0xba7
	.byte	0x6
	.byte	0x1
	.4byte	.LFB194
	.4byte	.LFE194
	.4byte	.LLST43
	.byte	0x1
	.4byte	0x1c95
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xba7
	.byte	0x23
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF303
	.byte	0x3
	.2byte	0xb4c
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB193
	.4byte	.LFE193
	.4byte	.LLST42
	.byte	0x1
	.4byte	0x1cf6
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xb4c
	.byte	0x33
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0xb4d
	.byte	0x3b
	.4byte	0x1cf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xb4e
	.byte	0x31
	.4byte	0xea9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xb50
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xb5f
	.uleb128 0x1f
	.4byte	.LASF305
	.byte	0x3
	.2byte	0xb21
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB192
	.4byte	.LFE192
	.4byte	.LLST41
	.byte	0x1
	.4byte	0x1d6c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xb21
	.byte	0x47
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF306
	.byte	0x3
	.2byte	0xb21
	.byte	0x56
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xb23
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF271
	.byte	0x3
	.2byte	0xb24
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF307
	.byte	0x3
	.2byte	0xb25
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF308
	.byte	0x3
	.2byte	0xae8
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB191
	.4byte	.LFE191
	.4byte	.LLST40
	.byte	0x1
	.4byte	0x1dec
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xae8
	.byte	0x46
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x3
	.2byte	0xae9
	.byte	0x3e
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0xaea
	.byte	0x3d
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xaec
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xaed
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xaee
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF309
	.byte	0x3
	.2byte	0xa9e
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB190
	.4byte	.LFE190
	.4byte	.LLST39
	.byte	0x1
	.4byte	0x1e7c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xa9e
	.byte	0x45
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x3
	.2byte	0xa9f
	.byte	0x3d
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0xaa0
	.byte	0x3c
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0xaa1
	.byte	0x53
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xaa3
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xaa4
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xaa5
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF310
	.byte	0x3
	.2byte	0xa60
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB189
	.4byte	.LFE189
	.4byte	.LLST38
	.byte	0x1
	.4byte	0x1efc
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0xa60
	.byte	0x47
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x3
	.2byte	0xa61
	.byte	0x46
	.4byte	0xbc5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0xa62
	.byte	0x45
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0xa64
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0xa65
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0x3
	.2byte	0xa66
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF311
	.byte	0x3
	.2byte	0x9f8
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB188
	.4byte	.LFE188
	.4byte	.LLST37
	.byte	0x1
	.4byte	0x1fad
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x9f8
	.byte	0x4a
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.ascii	"csd\000"
	.byte	0x3
	.2byte	0x9f9
	.byte	0x4a
	.4byte	0xbf
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x9fa
	.byte	0x5b
	.4byte	0xea9
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x9fc
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x9fd
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x9fe
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x9ff
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF312
	.byte	0x3
	.2byte	0xa00
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF313
	.byte	0x3
	.2byte	0xa01
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF314
	.byte	0x3
	.2byte	0x9bf
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LLST36
	.byte	0x1
	.4byte	0x202d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x9bf
	.byte	0x4d
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF315
	.byte	0x3
	.2byte	0x9c0
	.byte	0x48
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x18
	.4byte	.LASF316
	.byte	0x3
	.2byte	0x9c1
	.byte	0x4d
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x9c3
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x9c4
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x9c5
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF317
	.byte	0x3
	.2byte	0x966
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	.LLST35
	.byte	0x1
	.4byte	0x20c1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x966
	.byte	0x46
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x967
	.byte	0x4f
	.4byte	0xbf
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0x3
	.2byte	0x968
	.byte	0x60
	.4byte	0xa2f
	.byte	0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x96a
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x96b
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x96c
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0x3
	.2byte	0x96d
	.byte	0xe
	.4byte	0x12c7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF318
	.byte	0x3
	.2byte	0x933
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LLST34
	.byte	0x1
	.4byte	0x2121
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x933
	.byte	0x43
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x933
	.byte	0x52
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x935
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x936
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF319
	.byte	0x3
	.2byte	0x901
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LLST33
	.byte	0x1
	.4byte	0x2191
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x901
	.byte	0x4d
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x902
	.byte	0x3b
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x903
	.byte	0x52
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x905
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x906
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF320
	.byte	0x3
	.2byte	0x8c5
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LLST32
	.byte	0x1
	.4byte	0x21f1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x8c5
	.byte	0x43
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x8c6
	.byte	0x58
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x8c8
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x8c9
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF321
	.byte	0x3
	.2byte	0x88a
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x2261
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x88a
	.byte	0x4a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x88b
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF322
	.byte	0x3
	.2byte	0x88c
	.byte	0x35
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x88e
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x88f
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF323
	.byte	0x3
	.2byte	0x85b
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x22c1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x85b
	.byte	0x43
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x85c
	.byte	0x58
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x85e
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x85f
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF324
	.byte	0x3
	.2byte	0x81e
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST29
	.byte	0x1
	.4byte	0x2361
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x81e
	.byte	0x4a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF325
	.byte	0x3
	.2byte	0x81f
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF326
	.byte	0x3
	.2byte	0x820
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF327
	.byte	0x3
	.2byte	0x821
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF328
	.byte	0x3
	.2byte	0x822
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x3
	.2byte	0x823
	.byte	0x3a
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x825
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x826
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF329
	.byte	0x3
	.2byte	0x7c0
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x23d1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x7c0
	.byte	0x46
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x7c1
	.byte	0x5b
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x7c4
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x7c5
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x3
	.2byte	0x7c6
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF330
	.byte	0x3
	.2byte	0x790
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST27
	.byte	0x1
	.4byte	0x2421
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x790
	.byte	0x3f
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x792
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x793
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF331
	.byte	0x3
	.2byte	0x710
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x2492
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x710
	.byte	0x3a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF268
	.byte	0x3
	.2byte	0x711
	.byte	0x49
	.4byte	0x931
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x712
	.byte	0x4f
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x714
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x715
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF332
	.byte	0x3
	.2byte	0x6c9
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST25
	.byte	0x1
	.4byte	0x24e3
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x6c9
	.byte	0x3a
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0x6ca
	.byte	0x52
	.4byte	0x24e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x6cc
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xc7b
	.uleb128 0x1f
	.4byte	.LASF333
	.byte	0x3
	.2byte	0x677
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x2577
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x677
	.byte	0x46
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF334
	.byte	0x3
	.2byte	0x678
	.byte	0x52
	.4byte	0x2577
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x67a
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF312
	.byte	0x3
	.2byte	0x67b
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF335
	.byte	0x3
	.2byte	0x67c
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x67d
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x67e
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xd1b
	.uleb128 0x1f
	.4byte	.LASF336
	.byte	0x3
	.2byte	0x62e
	.byte	0x1f
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x260b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x62e
	.byte	0x3f
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF334
	.byte	0x3
	.2byte	0x62f
	.byte	0x52
	.4byte	0x2577
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x631
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF312
	.byte	0x3
	.2byte	0x632
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	.LASF335
	.byte	0x3
	.2byte	0x633
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x634
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x635
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF337
	.byte	0x3
	.2byte	0x604
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x265b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x604
	.byte	0x51
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x606
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x607
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF338
	.byte	0x3
	.2byte	0x5de
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x26ab
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x5de
	.byte	0x4c
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x5e0
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x5e1
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF339
	.byte	0x3
	.2byte	0x5b8
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x26fb
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x5b8
	.byte	0x51
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x5ba
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x5bb
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF340
	.byte	0x3
	.2byte	0x592
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST19
	.byte	0x1
	.4byte	0x274b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x592
	.byte	0x50
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x594
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x595
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF341
	.byte	0x3
	.2byte	0x571
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x279b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x571
	.byte	0x53
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x573
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x574
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF342
	.byte	0x3
	.2byte	0x54c
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST17
	.byte	0x1
	.4byte	0x27fb
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x54c
	.byte	0x59
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x54e
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x54f
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF343
	.byte	0x3
	.2byte	0x550
	.byte	0x1b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF344
	.byte	0x3
	.2byte	0x527
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x285b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x527
	.byte	0x52
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x529
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x52a
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF345
	.byte	0x3
	.2byte	0x52b
	.byte	0x1b
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF346
	.byte	0x3
	.2byte	0x49a
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x28ec
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x49a
	.byte	0x34
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.4byte	.LASF347
	.byte	0x3
	.2byte	0x49b
	.byte	0x32
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF348
	.byte	0x3
	.2byte	0x49c
	.byte	0x32
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LASF349
	.byte	0x3
	.2byte	0x49d
	.byte	0x44
	.4byte	0x9ee
	.byte	0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x49e
	.byte	0x49
	.4byte	0x1368
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x4a0
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x4a1
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF350
	.byte	0x3
	.2byte	0x40d
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x29a1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x40d
	.byte	0x34
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0x40e
	.byte	0x4d
	.4byte	0x29a1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x40f
	.byte	0x49
	.4byte	0x1368
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x411
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x412
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x413
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF351
	.byte	0x3
	.2byte	0x414
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF352
	.byte	0x3
	.2byte	0x415
	.byte	0xe
	.4byte	0x706
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.4byte	.LASF353
	.byte	0x3
	.2byte	0x416
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xda8
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF354
	.byte	0x3
	.2byte	0x38b
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x2a5c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x38b
	.byte	0x33
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0x38c
	.byte	0x4c
	.4byte	0x29a1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x38d
	.byte	0x48
	.4byte	0x1368
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x38f
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x3
	.2byte	0x390
	.byte	0x21
	.4byte	0xc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x391
	.byte	0x22
	.4byte	0xd1b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF351
	.byte	0x3
	.2byte	0x392
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF352
	.byte	0x3
	.2byte	0x393
	.byte	0xe
	.4byte	0x706
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.4byte	.LASF353
	.byte	0x3
	.2byte	0x394
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF355
	.byte	0x3
	.2byte	0x284
	.byte	0x18
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x2b40
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x284
	.byte	0x37
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0x285
	.byte	0x4d
	.4byte	0x2b40
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x286
	.byte	0x46
	.4byte	0xea9
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x288
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x289
	.byte	0x24
	.4byte	0x97e
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x3
	.2byte	0x28a
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF356
	.byte	0x3
	.2byte	0x28b
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF300
	.byte	0x3
	.2byte	0x28c
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF278
	.byte	0x3
	.2byte	0x28d
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x28e
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x28f
	.byte	0x9
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0x3
	.2byte	0x290
	.byte	0x9
	.4byte	0xb4b
	.byte	0x2
	.byte	0x91
	.sleb128 -61
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xbd1
	.uleb128 0x1f
	.4byte	.LASF357
	.byte	0x3
	.2byte	0x1bf
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x2c1b
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x1bf
	.byte	0x4a
	.4byte	0xea3
	.byte	0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x18
	.4byte	.LASF304
	.byte	0x3
	.2byte	0x1c0
	.byte	0x5f
	.4byte	0x2c1b
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x1c1
	.byte	0x52
	.4byte	0xea9
	.byte	0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x3
	.2byte	0x1c3
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x1c4
	.byte	0x24
	.4byte	0x97e
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x1c5
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x3
	.2byte	0x1c6
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF356
	.byte	0x3
	.2byte	0x1c7
	.byte	0xe
	.4byte	0xe20
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF287
	.byte	0x3
	.2byte	0x1c8
	.byte	0xe
	.4byte	0x2c21
	.byte	0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x1b
	.4byte	.LASF358
	.byte	0x3
	.2byte	0x1c9
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF300
	.byte	0x3
	.2byte	0x1ca
	.byte	0xe
	.4byte	0xe20
	.byte	0x3
	.byte	0x91
	.sleb128 -572
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0xbde
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x2c31
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF359
	.byte	0x2
	.2byte	0x85c
	.byte	0x14
	.byte	0x1
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x2c6d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x85c
	.byte	0x42
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF360
	.byte	0x2
	.2byte	0x85c
	.byte	0x51
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF361
	.byte	0x2
	.2byte	0x848
	.byte	0x14
	.byte	0x1
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x2ca9
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x848
	.byte	0x44
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF257
	.byte	0x2
	.2byte	0x848
	.byte	0x53
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x23
	.4byte	.LASF362
	.byte	0x2
	.2byte	0x831
	.byte	0x18
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x2ce9
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x831
	.byte	0x4c
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x833
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF363
	.byte	0x2
	.2byte	0x7dd
	.byte	0x14
	.byte	0x1
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x2d25
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x7dd
	.byte	0x43
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF360
	.byte	0x2
	.2byte	0x7dd
	.byte	0x52
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF364
	.byte	0x2
	.2byte	0x7ca
	.byte	0x14
	.byte	0x1
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x2d61
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x7ca
	.byte	0x45
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF257
	.byte	0x2
	.2byte	0x7ca
	.byte	0x54
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x23
	.4byte	.LASF365
	.byte	0x2
	.2byte	0x7b3
	.byte	0x18
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x2da1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x7b3
	.byte	0x4d
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x7b5
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF366
	.byte	0x2
	.2byte	0x6c0
	.byte	0x26
	.byte	0x1
	.4byte	0x902
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x2df1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x6c0
	.byte	0x48
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x6c0
	.byte	0x57
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x6c2
	.byte	0x1c
	.4byte	0x902
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF367
	.byte	0x2
	.2byte	0x6a9
	.byte	0x18
	.byte	0x1
	.4byte	0xbf
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x2e21
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x6a9
	.byte	0x3f
	.4byte	0xf6b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF368
	.byte	0x2
	.2byte	0x688
	.byte	0x14
	.byte	0x1
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x2e4d
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x688
	.byte	0x37
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF369
	.byte	0x2
	.2byte	0x672
	.byte	0x14
	.byte	0x1
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x2e79
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x672
	.byte	0x36
	.4byte	0xea3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF373
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x22
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
.LLST77:
	.4byte	.LFB228
	.4byte	.LCFI402
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI402
	.4byte	.LCFI403
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI403
	.4byte	.LCFI404
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI404
	.4byte	.LCFI405
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI405
	.4byte	.LCFI406
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI406
	.4byte	.LCFI407
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI407
	.4byte	.LFE228
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LFB227
	.4byte	.LCFI397
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI397
	.4byte	.LCFI398
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI398
	.4byte	.LCFI399
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI399
	.4byte	.LCFI400
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI400
	.4byte	.LCFI401
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI401
	.4byte	.LFE227
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LFB226
	.4byte	.LCFI391
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI391
	.4byte	.LCFI392
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI392
	.4byte	.LCFI393
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI393
	.4byte	.LCFI394
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI394
	.4byte	.LCFI395
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI395
	.4byte	.LCFI396
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI396
	.4byte	.LFE226
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB225
	.4byte	.LCFI386
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI386
	.4byte	.LCFI387
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI387
	.4byte	.LCFI388
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI388
	.4byte	.LCFI389
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI389
	.4byte	.LCFI390
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI390
	.4byte	.LFE225
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LFB224
	.4byte	.LCFI380
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI380
	.4byte	.LCFI381
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI381
	.4byte	.LCFI382
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI382
	.4byte	.LCFI383
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI383
	.4byte	.LCFI384
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI384
	.4byte	.LCFI385
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI385
	.4byte	.LFE224
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LFB223
	.4byte	.LCFI374
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI374
	.4byte	.LCFI375
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI375
	.4byte	.LCFI376
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI376
	.4byte	.LCFI377
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI377
	.4byte	.LCFI378
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI378
	.4byte	.LCFI379
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI379
	.4byte	.LFE223
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LFB222
	.4byte	.LCFI369
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI369
	.4byte	.LCFI370
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI370
	.4byte	.LCFI371
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI371
	.4byte	.LCFI372
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI372
	.4byte	.LCFI373
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI373
	.4byte	.LFE222
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LFB221
	.4byte	.LCFI363
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI363
	.4byte	.LCFI364
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI364
	.4byte	.LCFI365
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI365
	.4byte	.LCFI366
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI366
	.4byte	.LCFI367
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI367
	.4byte	.LCFI368
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI368
	.4byte	.LFE221
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB220
	.4byte	.LCFI357
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI357
	.4byte	.LCFI358
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI358
	.4byte	.LCFI359
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI359
	.4byte	.LCFI360
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI360
	.4byte	.LCFI361
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI361
	.4byte	.LCFI362
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI362
	.4byte	.LFE220
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB219
	.4byte	.LCFI351
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI351
	.4byte	.LCFI352
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI352
	.4byte	.LCFI353
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI353
	.4byte	.LCFI354
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI354
	.4byte	.LCFI355
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI355
	.4byte	.LCFI356
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI356
	.4byte	.LFE219
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB218
	.4byte	.LCFI346
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI346
	.4byte	.LCFI347
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI347
	.4byte	.LCFI348
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI348
	.4byte	.LCFI349
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI349
	.4byte	.LCFI350
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI350
	.4byte	.LFE218
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB217
	.4byte	.LCFI341
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI341
	.4byte	.LCFI342
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI342
	.4byte	.LCFI343
	.2byte	0x3
	.byte	0x7d
	.sleb128 128
	.4byte	.LCFI343
	.4byte	.LCFI344
	.2byte	0x3
	.byte	0x77
	.sleb128 128
	.4byte	.LCFI344
	.4byte	.LCFI345
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI345
	.4byte	.LFE217
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB216
	.4byte	.LCFI336
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI336
	.4byte	.LCFI337
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI337
	.4byte	.LCFI338
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI338
	.4byte	.LCFI339
	.2byte	0x2
	.byte	0x77
	.sleb128 56
	.4byte	.LCFI339
	.4byte	.LCFI340
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI340
	.4byte	.LFE216
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LFB215
	.4byte	.LCFI330
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI330
	.4byte	.LCFI331
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI331
	.4byte	.LCFI332
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI332
	.4byte	.LCFI333
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI333
	.4byte	.LCFI334
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI334
	.4byte	.LCFI335
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI335
	.4byte	.LFE215
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB214
	.4byte	.LCFI324
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI324
	.4byte	.LCFI325
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI325
	.4byte	.LCFI326
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI326
	.4byte	.LCFI327
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI327
	.4byte	.LCFI328
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI328
	.4byte	.LCFI329
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI329
	.4byte	.LFE214
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LFB213
	.4byte	.LCFI318
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI318
	.4byte	.LCFI319
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI319
	.4byte	.LCFI320
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI320
	.4byte	.LCFI321
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI321
	.4byte	.LCFI322
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI322
	.4byte	.LCFI323
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI323
	.4byte	.LFE213
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB212
	.4byte	.LCFI313
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI313
	.4byte	.LCFI314
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI314
	.4byte	.LCFI315
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI315
	.4byte	.LCFI316
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI316
	.4byte	.LCFI317
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI317
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LFB211
	.4byte	.LCFI308
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI308
	.4byte	.LCFI309
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI309
	.4byte	.LCFI310
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI310
	.4byte	.LCFI311
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI311
	.4byte	.LCFI312
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI312
	.4byte	.LFE211
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LFB210
	.4byte	.LCFI303
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI303
	.4byte	.LCFI304
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI304
	.4byte	.LCFI305
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI305
	.4byte	.LCFI306
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI306
	.4byte	.LCFI307
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI307
	.4byte	.LFE210
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB209
	.4byte	.LCFI298
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI298
	.4byte	.LCFI299
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI299
	.4byte	.LCFI300
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI300
	.4byte	.LCFI301
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI301
	.4byte	.LCFI302
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI302
	.4byte	.LFE209
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LFB208
	.4byte	.LCFI293
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI293
	.4byte	.LCFI294
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI294
	.4byte	.LCFI295
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI295
	.4byte	.LCFI296
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI296
	.4byte	.LCFI297
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI297
	.4byte	.LFE208
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB207
	.4byte	.LCFI288
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI288
	.4byte	.LCFI289
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI289
	.4byte	.LCFI290
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI290
	.4byte	.LCFI291
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI291
	.4byte	.LCFI292
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI292
	.4byte	.LFE207
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB206
	.4byte	.LCFI283
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI283
	.4byte	.LCFI284
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI284
	.4byte	.LCFI285
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI285
	.4byte	.LCFI286
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI286
	.4byte	.LCFI287
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI287
	.4byte	.LFE206
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB205
	.4byte	.LCFI278
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI278
	.4byte	.LCFI279
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI279
	.4byte	.LCFI280
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI280
	.4byte	.LCFI281
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI281
	.4byte	.LCFI282
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI282
	.4byte	.LFE205
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB204
	.4byte	.LCFI273
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI273
	.4byte	.LCFI274
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI274
	.4byte	.LCFI275
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	.LCFI275
	.4byte	.LCFI276
	.2byte	0x3
	.byte	0x77
	.sleb128 72
	.4byte	.LCFI276
	.4byte	.LCFI277
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI277
	.4byte	.LFE204
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB203
	.4byte	.LCFI268
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI268
	.4byte	.LCFI269
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI269
	.4byte	.LCFI270
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI270
	.4byte	.LCFI271
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI271
	.4byte	.LCFI272
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI272
	.4byte	.LFE203
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB202
	.4byte	.LCFI263
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI263
	.4byte	.LCFI264
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI264
	.4byte	.LCFI265
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	.LCFI265
	.4byte	.LCFI266
	.2byte	0x3
	.byte	0x77
	.sleb128 72
	.4byte	.LCFI266
	.4byte	.LCFI267
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI267
	.4byte	.LFE202
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB201
	.4byte	.LCFI258
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI258
	.4byte	.LCFI259
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI259
	.4byte	.LCFI260
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	.LCFI260
	.4byte	.LCFI261
	.2byte	0x3
	.byte	0x77
	.sleb128 80
	.4byte	.LCFI261
	.4byte	.LCFI262
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI262
	.4byte	.LFE201
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB200
	.4byte	.LCFI253
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI253
	.4byte	.LCFI254
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI254
	.4byte	.LCFI255
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	.LCFI255
	.4byte	.LCFI256
	.2byte	0x2
	.byte	0x77
	.sleb128 56
	.4byte	.LCFI256
	.4byte	.LCFI257
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI257
	.4byte	.LFE200
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB199
	.4byte	.LCFI248
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI248
	.4byte	.LCFI249
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI249
	.4byte	.LCFI250
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI250
	.4byte	.LCFI251
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI251
	.4byte	.LCFI252
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI252
	.4byte	.LFE199
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB198
	.4byte	.LCFI243
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI243
	.4byte	.LCFI244
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI244
	.4byte	.LCFI245
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	.LCFI245
	.4byte	.LCFI246
	.2byte	0x3
	.byte	0x77
	.sleb128 72
	.4byte	.LCFI246
	.4byte	.LCFI247
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI247
	.4byte	.LFE198
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB197
	.4byte	.LCFI238
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI238
	.4byte	.LCFI239
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI239
	.4byte	.LCFI240
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI240
	.4byte	.LCFI241
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI241
	.4byte	.LCFI242
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI242
	.4byte	.LFE197
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB196
	.4byte	.LCFI233
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI233
	.4byte	.LCFI234
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI234
	.4byte	.LCFI235
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI235
	.4byte	.LCFI236
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI236
	.4byte	.LCFI237
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI237
	.4byte	.LFE196
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LFB195
	.4byte	.LCFI228
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI228
	.4byte	.LCFI229
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI229
	.4byte	.LCFI230
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	.LCFI230
	.4byte	.LCFI231
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI231
	.4byte	.LCFI232
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI232
	.4byte	.LFE195
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB194
	.4byte	.LCFI223
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI223
	.4byte	.LCFI224
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI224
	.4byte	.LCFI225
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI225
	.4byte	.LCFI226
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI226
	.4byte	.LCFI227
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI227
	.4byte	.LFE194
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB193
	.4byte	.LCFI218
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI218
	.4byte	.LCFI219
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI219
	.4byte	.LCFI220
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI220
	.4byte	.LCFI221
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI221
	.4byte	.LCFI222
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI222
	.4byte	.LFE193
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB192
	.4byte	.LCFI213
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI213
	.4byte	.LCFI214
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI214
	.4byte	.LCFI215
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI215
	.4byte	.LCFI216
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI216
	.4byte	.LCFI217
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI217
	.4byte	.LFE192
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB191
	.4byte	.LCFI208
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI208
	.4byte	.LCFI209
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI209
	.4byte	.LCFI210
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI210
	.4byte	.LCFI211
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI211
	.4byte	.LCFI212
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI212
	.4byte	.LFE191
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB190
	.4byte	.LCFI203
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI203
	.4byte	.LCFI204
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI204
	.4byte	.LCFI205
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI205
	.4byte	.LCFI206
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI206
	.4byte	.LCFI207
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI207
	.4byte	.LFE190
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB189
	.4byte	.LCFI198
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI198
	.4byte	.LCFI199
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI199
	.4byte	.LCFI200
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI200
	.4byte	.LCFI201
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI201
	.4byte	.LCFI202
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI202
	.4byte	.LFE189
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB188
	.4byte	.LCFI193
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI193
	.4byte	.LCFI194
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI194
	.4byte	.LCFI195
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	.LCFI195
	.4byte	.LCFI196
	.2byte	0x3
	.byte	0x77
	.sleb128 80
	.4byte	.LCFI196
	.4byte	.LCFI197
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI197
	.4byte	.LFE188
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB187
	.4byte	.LCFI188
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI188
	.4byte	.LCFI189
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI189
	.4byte	.LCFI190
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI190
	.4byte	.LCFI191
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI191
	.4byte	.LCFI192
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI192
	.4byte	.LFE187
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB186
	.4byte	.LCFI183
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI183
	.4byte	.LCFI184
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI184
	.4byte	.LCFI185
	.2byte	0x3
	.byte	0x7d
	.sleb128 136
	.4byte	.LCFI185
	.4byte	.LCFI186
	.2byte	0x3
	.byte	0x77
	.sleb128 136
	.4byte	.LCFI186
	.4byte	.LCFI187
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI187
	.4byte	.LFE186
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB185
	.4byte	.LCFI178
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI178
	.4byte	.LCFI179
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI179
	.4byte	.LCFI180
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI180
	.4byte	.LCFI181
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI181
	.4byte	.LCFI182
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI182
	.4byte	.LFE185
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB184
	.4byte	.LCFI173
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI173
	.4byte	.LCFI174
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI174
	.4byte	.LCFI175
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI175
	.4byte	.LCFI176
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI176
	.4byte	.LCFI177
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI177
	.4byte	.LFE184
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB183
	.4byte	.LCFI168
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI168
	.4byte	.LCFI169
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI169
	.4byte	.LCFI170
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI170
	.4byte	.LCFI171
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI171
	.4byte	.LCFI172
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI172
	.4byte	.LFE183
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB182
	.4byte	.LCFI163
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI163
	.4byte	.LCFI164
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI164
	.4byte	.LCFI165
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI165
	.4byte	.LCFI166
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI166
	.4byte	.LCFI167
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI167
	.4byte	.LFE182
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB181
	.4byte	.LCFI158
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI158
	.4byte	.LCFI159
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI159
	.4byte	.LCFI160
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI160
	.4byte	.LCFI161
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI161
	.4byte	.LCFI162
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI162
	.4byte	.LFE181
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB180
	.4byte	.LCFI153
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI153
	.4byte	.LCFI154
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI154
	.4byte	.LCFI155
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI155
	.4byte	.LCFI156
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI156
	.4byte	.LCFI157
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI157
	.4byte	.LFE180
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB179
	.4byte	.LCFI148
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI148
	.4byte	.LCFI149
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI149
	.4byte	.LCFI150
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI150
	.4byte	.LCFI151
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI151
	.4byte	.LCFI152
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI152
	.4byte	.LFE179
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB178
	.4byte	.LCFI143
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI143
	.4byte	.LCFI144
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI144
	.4byte	.LCFI145
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI145
	.4byte	.LCFI146
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI146
	.4byte	.LCFI147
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI147
	.4byte	.LFE178
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB177
	.4byte	.LCFI138
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI138
	.4byte	.LCFI139
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI139
	.4byte	.LCFI140
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI140
	.4byte	.LCFI141
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI141
	.4byte	.LCFI142
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI142
	.4byte	.LFE177
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB176
	.4byte	.LCFI133
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI133
	.4byte	.LCFI134
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI134
	.4byte	.LCFI135
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI135
	.4byte	.LCFI136
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI136
	.4byte	.LCFI137
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI137
	.4byte	.LFE176
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB175
	.4byte	.LCFI128
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI128
	.4byte	.LCFI129
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI129
	.4byte	.LCFI130
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI130
	.4byte	.LCFI131
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI131
	.4byte	.LCFI132
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI132
	.4byte	.LFE175
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB174
	.4byte	.LCFI123
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI123
	.4byte	.LCFI124
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI124
	.4byte	.LCFI125
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI125
	.4byte	.LCFI126
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI126
	.4byte	.LCFI127
	.2byte	0x2
	.byte	0x77
	.sleb128 12
	.4byte	.LCFI127
	.4byte	.LFE174
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB173
	.4byte	.LCFI118
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI118
	.4byte	.LCFI119
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI119
	.4byte	.LCFI120
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI120
	.4byte	.LCFI121
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI121
	.4byte	.LCFI122
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI122
	.4byte	.LFE173
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB172
	.4byte	.LCFI113
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI113
	.4byte	.LCFI114
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI114
	.4byte	.LCFI115
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI115
	.4byte	.LCFI116
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI116
	.4byte	.LCFI117
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI117
	.4byte	.LFE172
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB171
	.4byte	.LCFI108
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI108
	.4byte	.LCFI109
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI109
	.4byte	.LCFI110
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI110
	.4byte	.LCFI111
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI111
	.4byte	.LCFI112
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI112
	.4byte	.LFE171
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB170
	.4byte	.LCFI103
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI103
	.4byte	.LCFI104
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI104
	.4byte	.LCFI105
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI105
	.4byte	.LCFI106
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI106
	.4byte	.LCFI107
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI107
	.4byte	.LFE170
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB169
	.4byte	.LCFI98
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI98
	.4byte	.LCFI99
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI99
	.4byte	.LCFI100
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI100
	.4byte	.LCFI101
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI101
	.4byte	.LCFI102
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI102
	.4byte	.LFE169
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB168
	.4byte	.LCFI93
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI93
	.4byte	.LCFI94
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI94
	.4byte	.LCFI95
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI95
	.4byte	.LCFI96
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI96
	.4byte	.LCFI97
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI97
	.4byte	.LFE168
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB167
	.4byte	.LCFI88
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI88
	.4byte	.LCFI89
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI89
	.4byte	.LCFI90
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI90
	.4byte	.LCFI91
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI91
	.4byte	.LCFI92
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI92
	.4byte	.LFE167
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB166
	.4byte	.LCFI83
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI83
	.4byte	.LCFI84
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI84
	.4byte	.LCFI85
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI85
	.4byte	.LCFI86
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	.LCFI86
	.4byte	.LCFI87
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI87
	.4byte	.LFE166
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB165
	.4byte	.LCFI78
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI78
	.4byte	.LCFI79
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI79
	.4byte	.LCFI80
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	.LCFI80
	.4byte	.LCFI81
	.2byte	0x3
	.byte	0x77
	.sleb128 88
	.4byte	.LCFI81
	.4byte	.LCFI82
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI82
	.4byte	.LFE165
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB164
	.4byte	.LCFI73
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI73
	.4byte	.LCFI74
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI74
	.4byte	.LCFI75
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	.LCFI75
	.4byte	.LCFI76
	.2byte	0x3
	.byte	0x77
	.sleb128 88
	.4byte	.LCFI76
	.4byte	.LCFI77
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI77
	.4byte	.LFE164
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB163
	.4byte	.LCFI68
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI68
	.4byte	.LCFI69
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI69
	.4byte	.LCFI70
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	.LCFI70
	.4byte	.LCFI71
	.2byte	0x3
	.byte	0x77
	.sleb128 80
	.4byte	.LCFI71
	.4byte	.LCFI72
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI72
	.4byte	.LFE163
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB162
	.4byte	.LCFI63
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI63
	.4byte	.LCFI64
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI64
	.4byte	.LCFI65
	.2byte	0x3
	.byte	0x7d
	.sleb128 592
	.4byte	.LCFI65
	.4byte	.LCFI66
	.2byte	0x3
	.byte	0x77
	.sleb128 592
	.4byte	.LCFI66
	.4byte	.LCFI67
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI67
	.4byte	.LFE162
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB158
	.4byte	.LCFI57
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI57
	.4byte	.LCFI58
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI58
	.4byte	.LCFI59
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI59
	.4byte	.LCFI60
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI60
	.4byte	.LCFI61
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI61
	.4byte	.LCFI62
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI62
	.4byte	.LFE158
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB157
	.4byte	.LCFI51
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI51
	.4byte	.LCFI52
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI52
	.4byte	.LCFI53
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI53
	.4byte	.LCFI54
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI54
	.4byte	.LCFI55
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI55
	.4byte	.LCFI56
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI56
	.4byte	.LFE157
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB156
	.4byte	.LCFI45
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI45
	.4byte	.LCFI46
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI46
	.4byte	.LCFI47
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI47
	.4byte	.LCFI48
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI48
	.4byte	.LCFI49
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI49
	.4byte	.LCFI50
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI50
	.4byte	.LFE156
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB152
	.4byte	.LCFI39
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI39
	.4byte	.LCFI40
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI40
	.4byte	.LCFI41
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI41
	.4byte	.LCFI42
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI42
	.4byte	.LCFI43
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI43
	.4byte	.LCFI44
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI44
	.4byte	.LFE152
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB151
	.4byte	.LCFI33
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI33
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI34
	.4byte	.LCFI35
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI35
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI36
	.4byte	.LCFI37
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI38
	.4byte	.LFE151
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB150
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI28
	.4byte	.LCFI29
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI30
	.4byte	.LCFI31
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI31
	.4byte	.LCFI32
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI32
	.4byte	.LFE150
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB140
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI26
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB139
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI20
	.4byte	.LFE139
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB138
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI14
	.4byte	.LFE138
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
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
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI9
	.4byte	.LFE137
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.4byte	0x284
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
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.4byte	.LFB197
	.4byte	.LFE197-.LFB197
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
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
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LFB188
	.4byte	.LFE188
	.4byte	.LFB189
	.4byte	.LFE189
	.4byte	.LFB190
	.4byte	.LFE190
	.4byte	.LFB191
	.4byte	.LFE191
	.4byte	.LFB192
	.4byte	.LFE192
	.4byte	.LFB193
	.4byte	.LFE193
	.4byte	.LFB194
	.4byte	.LFE194
	.4byte	.LFB195
	.4byte	.LFE195
	.4byte	.LFB196
	.4byte	.LFE196
	.4byte	.LFB197
	.4byte	.LFE197
	.4byte	.LFB198
	.4byte	.LFE198
	.4byte	.LFB199
	.4byte	.LFE199
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LFB203
	.4byte	.LFE203
	.4byte	.LFB204
	.4byte	.LFE204
	.4byte	.LFB205
	.4byte	.LFE205
	.4byte	.LFB206
	.4byte	.LFE206
	.4byte	.LFB207
	.4byte	.LFE207
	.4byte	.LFB208
	.4byte	.LFE208
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	.LFB210
	.4byte	.LFE210
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	.LFB213
	.4byte	.LFE213
	.4byte	.LFB214
	.4byte	.LFE214
	.4byte	.LFB215
	.4byte	.LFE215
	.4byte	.LFB216
	.4byte	.LFE216
	.4byte	.LFB217
	.4byte	.LFE217
	.4byte	.LFB218
	.4byte	.LFE218
	.4byte	.LFB219
	.4byte	.LFE219
	.4byte	.LFB220
	.4byte	.LFE220
	.4byte	.LFB221
	.4byte	.LFE221
	.4byte	.LFB222
	.4byte	.LFE222
	.4byte	.LFB223
	.4byte	.LFE223
	.4byte	.LFB224
	.4byte	.LFE224
	.4byte	.LFB225
	.4byte	.LFE225
	.4byte	.LFB226
	.4byte	.LFE226
	.4byte	.LFB227
	.4byte	.LFE227
	.4byte	.LFB228
	.4byte	.LFE228
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF178:
	.ascii	"CY_SD_HOST_UNSUPPORTED\000"
.LASF96:
	.ascii	"CORE\000"
.LASF277:
	.ascii	"Cy_SD_Host_IoOcr\000"
.LASF139:
	.ascii	"CY_SD_HOST_ERROR_UNUSABLE_CARD\000"
.LASF331:
	.ascii	"Cy_SD_Host_SetBusWidth\000"
.LASF168:
	.ascii	"CY_SD_HOST_EMMC\000"
.LASF35:
	.ascii	"TOUT_CTRL_R\000"
.LASF262:
	.ascii	"response\000"
.LASF228:
	.ascii	"Cy_SD_Host_GetBlockCount\000"
.LASF373:
	.ascii	"CY_HALT\000"
.LASF117:
	.ascii	"cy_stc_syspm_callback_params_t\000"
.LASF248:
	.ascii	"responseLength\000"
.LASF32:
	.ascii	"BGAP_CTRL_R\000"
.LASF26:
	.ascii	"RESP45_R\000"
.LASF104:
	.ascii	"CY_SYSPM_TIMEOUT\000"
.LASF68:
	.ascii	"CQTDBR\000"
.LASF296:
	.ascii	"sdStatus\000"
.LASF203:
	.ascii	"commandIndex\000"
.LASF109:
	.ascii	"cy_en_syspm_status_t\000"
.LASF254:
	.ascii	"s18aFlag\000"
.LASF239:
	.ascii	"ioVoltage\000"
.LASF319:
	.ascii	"Cy_SD_Host_OpsSetSdBusWidth\000"
.LASF119:
	.ascii	"CY_SD_HOST_CMD_SUSPEND\000"
.LASF127:
	.ascii	"cy_en_sd_host_auto_cmd_t\000"
.LASF221:
	.ascii	"cy_stc_sd_host_data_config_t\000"
.LASF285:
	.ascii	"Cy_SD_Host_GetRca\000"
.LASF28:
	.ascii	"BUF_DATA_R\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF359:
	.ascii	"Cy_SD_Host_SetErrorInterruptEnable\000"
.LASF318:
	.ascii	"Cy_SD_Host_OpsSwitchFunc\000"
.LASF74:
	.ascii	"CQSSC1\000"
.LASF75:
	.ascii	"CQSSC2\000"
.LASF290:
	.ascii	"cSize\000"
.LASF372:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF336:
	.ascii	"Cy_SD_Host_CmdRxData\000"
.LASF191:
	.ascii	"CY_SD_HOST_DISABLE_TEMPORARY\000"
.LASF329:
	.ascii	"Cy_SD_Host_OpsVoltageSwitch\000"
.LASF83:
	.ascii	"MSHC_VER_ID_R\000"
.LASF286:
	.ascii	"Cy_SD_Host_GetExtCsd\000"
.LASF345:
	.ascii	"commandInhibit\000"
.LASF305:
	.ascii	"Cy_SD_Host_SdCardChangeClock\000"
.LASF2:
	.ascii	"short int\000"
.LASF69:
	.ascii	"CQTCN\000"
.LASF213:
	.ascii	"numberOfBlock\000"
.LASF306:
	.ascii	"frequency\000"
.LASF231:
	.ascii	"mode\000"
.LASF179:
	.ascii	"cy_en_sd_host_card_capacity_t\000"
.LASF145:
	.ascii	"cy_en_sd_host_bus_width_t\000"
.LASF219:
	.ascii	"enableIntAtBlockGap\000"
.LASF343:
	.ascii	"dataInhibit\000"
.LASF164:
	.ascii	"CY_SD_HOST_ERASE_TRIM\000"
.LASF297:
	.ascii	"Cy_SD_Host_GetCardStatus\000"
.LASF16:
	.ascii	"RESERVED\000"
.LASF265:
	.ascii	"outDelay\000"
.LASF78:
	.ascii	"CQRMEM\000"
.LASF48:
	.ascii	"CURR_CAPABILITIES2_R\000"
.LASF98:
	.ascii	"SDHC_Type\000"
.LASF322:
	.ascii	"noResponse\000"
.LASF288:
	.ascii	"Cy_SD_Host_GetCsd\000"
.LASF276:
	.ascii	"Cy_SD_Host_SdOcr\000"
.LASF43:
	.ascii	"AUTO_CMD_STAT_R\000"
.LASF0:
	.ascii	"signed char\000"
.LASF206:
	.ascii	"enableAutoResponseErrorCheck\000"
.LASF174:
	.ascii	"CY_SD_HOST_SDHC\000"
.LASF253:
	.ascii	"ocrReg\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF107:
	.ascii	"CY_SYSPM_SYSCALL_PENDING\000"
.LASF307:
	.ascii	"clockInput\000"
.LASF153:
	.ascii	"CY_SD_HOST_BUS_SPEED_DDR50\000"
.LASF209:
	.ascii	"dataPresent\000"
.LASF65:
	.ascii	"CQIC\000"
.LASF279:
	.ascii	"Cy_SD_Host_VoltageCheck\000"
.LASF252:
	.ascii	"enable18VSignal\000"
.LASF340:
	.ascii	"Cy_SD_Host_PollBufferReadReady\000"
.LASF62:
	.ascii	"CQIS\000"
.LASF85:
	.ascii	"MSHC_CTRL_R\000"
.LASF115:
	.ascii	"base\000"
.LASF261:
	.ascii	"cmdArgument\000"
.LASF87:
	.ascii	"MBIU_CTRL_R\000"
.LASF63:
	.ascii	"CQISE\000"
.LASF292:
	.ascii	"readBlLen\000"
.LASF84:
	.ascii	"MSHC_VER_TYPE_R\000"
.LASF177:
	.ascii	"CY_SD_HOST_SDXC\000"
.LASF132:
	.ascii	"CY_SD_HOST_SUCCESS\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF361:
	.ascii	"Cy_SD_Host_ClearErrorInterruptStatus\000"
.LASF266:
	.ascii	"ultraHighSpeed\000"
.LASF186:
	.ascii	"CY_SD_HOST_DMA_ADMA2\000"
.LASF59:
	.ascii	"CQCAP\000"
.LASF214:
	.ascii	"enableDma\000"
.LASF50:
	.ascii	"FORCE_ERROR_INT_STAT_R\000"
.LASF167:
	.ascii	"CY_SD_HOST_SDIO\000"
.LASF49:
	.ascii	"FORCE_AUTO_CMD_STAT_R\000"
.LASF350:
	.ascii	"Cy_SD_Host_Write\000"
.LASF34:
	.ascii	"CLK_CTRL_R\000"
.LASF137:
	.ascii	"CY_SD_HOST_ERROR_TIMEOUT\000"
.LASF30:
	.ascii	"HOST_CTRL1_R\000"
.LASF172:
	.ascii	"cy_en_sd_host_card_type_t\000"
.LASF204:
	.ascii	"commandArgument\000"
.LASF300:
	.ascii	"csdReg\000"
.LASF152:
	.ascii	"CY_SD_HOST_BUS_SPEED_EMMC_HIGHSPEED_SDR\000"
.LASF187:
	.ascii	"CY_SD_HOST_DMA_ADMA2_ADMA3\000"
.LASF102:
	.ascii	"CY_SYSPM_SUCCESS\000"
.LASF312:
	.ascii	"blkSize\000"
.LASF346:
	.ascii	"Cy_SD_Host_Erase\000"
.LASF114:
	.ascii	"cy_en_syspm_callback_mode_t\000"
.LASF176:
	.ascii	"CY_SD_HOST_EMMC_GREATER_2G\000"
.LASF23:
	.ascii	"CMD_R\000"
.LASF317:
	.ascii	"Cy_SD_Host_SdCardSwitchFunc\000"
.LASF193:
	.ascii	"emmc\000"
.LASF310:
	.ascii	"Cy_SD_Host_OpsSdioSendOpCond\000"
.LASF268:
	.ascii	"width\000"
.LASF111:
	.ascii	"CY_SYSPM_CHECK_FAIL\000"
.LASF27:
	.ascii	"RESP67_R\000"
.LASF309:
	.ascii	"Cy_SD_Host_OpsSdSendOpCond\000"
.LASF196:
	.ascii	"_Bool\000"
.LASF272:
	.ascii	"Cy_SD_Host_Disable\000"
.LASF308:
	.ascii	"Cy_SD_Host_MmcOpsSendOpCond\000"
.LASF249:
	.ascii	"Cy_SD_Host_DisableCardVoltage\000"
.LASF365:
	.ascii	"Cy_SD_Host_GetNormalInterruptStatus\000"
.LASF358:
	.ascii	"genericCmd6Time\000"
.LASF212:
	.ascii	"blockSize\000"
.LASF54:
	.ascii	"ADMA_ID_LOW_R\000"
.LASF258:
	.ascii	"speedMode\000"
.LASF76:
	.ascii	"CQCRDCT\000"
.LASF81:
	.ascii	"CQCRA\000"
.LASF240:
	.ascii	"Cy_SD_Host_InitDataTransfer\000"
.LASF348:
	.ascii	"endAddr\000"
.LASF147:
	.ascii	"CY_SD_HOST_BUS_SPEED_HIGHSPEED\000"
.LASF80:
	.ascii	"CQCRI\000"
.LASF311:
	.ascii	"Cy_SD_Host_OpsProgramCsd\000"
.LASF97:
	.ascii	"SDHC_V1_Type\000"
.LASF250:
	.ascii	"Cy_SD_Host_EnableCardVoltage\000"
.LASF194:
	.ascii	"dmaType\000"
.LASF370:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF143:
	.ascii	"CY_SD_HOST_BUS_WIDTH_4_BIT\000"
.LASF46:
	.ascii	"CAPABILITIES2_R\000"
.LASF42:
	.ascii	"ERROR_INT_SIGNAL_EN_R\000"
.LASF37:
	.ascii	"NORMAL_INT_STAT_R\000"
.LASF148:
	.ascii	"CY_SD_HOST_BUS_SPEED_SDR12_5\000"
.LASF316:
	.ascii	"blockNum\000"
.LASF218:
	.ascii	"dataTimeout\000"
.LASF183:
	.ascii	"CY_SD_HOST_RESPONSE_LEN_48B\000"
.LASF33:
	.ascii	"WUP_CTRL_R\000"
.LASF105:
	.ascii	"CY_SYSPM_INVALID_STATE\000"
.LASF118:
	.ascii	"CY_SD_HOST_CMD_NORMAL\000"
.LASF106:
	.ascii	"CY_SYSPM_CANCELED\000"
.LASF270:
	.ascii	"Cy_SD_Host_SetSdClkDiv\000"
.LASF160:
	.ascii	"CY_SD_HOST_ERASE_FULE\000"
.LASF99:
	.ascii	"char\000"
.LASF165:
	.ascii	"cy_en_sd_host_erase_type_t\000"
.LASF142:
	.ascii	"CY_SD_HOST_BUS_WIDTH_1_BIT\000"
.LASF138:
	.ascii	"CY_SD_HOST_OPERATION_INPROGRESS\000"
.LASF255:
	.ascii	"f8Flag\000"
.LASF342:
	.ascii	"Cy_SD_Host_PollDataLineNotInhibit\000"
.LASF351:
	.ascii	"dataAddress\000"
.LASF298:
	.ascii	"Cy_SD_Host_WriteProtect\000"
.LASF66:
	.ascii	"CQTDLBA\000"
.LASF25:
	.ascii	"RESP23_R\000"
.LASF246:
	.ascii	"largeResponse\000"
.LASF121:
	.ascii	"CY_SD_HOST_CMD_ABORT\000"
.LASF369:
	.ascii	"Cy_SD_Host_EnableSdClk\000"
.LASF289:
	.ascii	"numSector\000"
.LASF18:
	.ascii	"SDMASA_R\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF257:
	.ascii	"status\000"
.LASF313:
	.ascii	"csdTepm\000"
.LASF79:
	.ascii	"CQTERRI\000"
.LASF161:
	.ascii	"CY_SD_HOST_ERASE_SECURE\000"
.LASF31:
	.ascii	"PWR_CTRL_R\000"
.LASF368:
	.ascii	"Cy_SD_Host_DisableSdClk\000"
.LASF295:
	.ascii	"Cy_SD_Host_GetSdStatus\000"
.LASF223:
	.ascii	"numberOfBlocks\000"
.LASF260:
	.ascii	"highSpeedValue\000"
.LASF171:
	.ascii	"CY_SD_HOST_NOT_EMMC\000"
.LASF197:
	.ascii	"cy_stc_sd_host_init_config_t\000"
.LASF237:
	.ascii	"Cy_SD_Host_SoftwareReset\000"
.LASF169:
	.ascii	"CY_SD_HOST_COMBO\000"
.LASF9:
	.ascii	"long long int\000"
.LASF125:
	.ascii	"CY_SD_HOST_AUTO_CMD_23\000"
.LASF92:
	.ascii	"GP_OUT_R\000"
.LASF233:
	.ascii	"pState\000"
.LASF61:
	.ascii	"CQCTL\000"
.LASF271:
	.ascii	"clkDiv\000"
.LASF182:
	.ascii	"CY_SD_HOST_RESPONSE_LEN_48\000"
.LASF175:
	.ascii	"CY_SD_HOST_EMMC_LESS_2G\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF198:
	.ascii	"lowVoltageSignaling\000"
.LASF283:
	.ascii	"intError\000"
.LASF116:
	.ascii	"context\000"
.LASF293:
	.ascii	"Cy_SD_Host_GetCid\000"
.LASF224:
	.ascii	"cy_stc_sd_host_write_read_config_t\000"
.LASF29:
	.ascii	"PSTATE_REG\000"
.LASF264:
	.ascii	"inDelay\000"
.LASF230:
	.ascii	"callbackParams\000"
.LASF170:
	.ascii	"CY_SD_HOST_UNUSABLE\000"
.LASF284:
	.ascii	"Cy_SD_Host_GetScr\000"
.LASF256:
	.ascii	"mpFlag\000"
.LASF56:
	.ascii	"HOST_CNTRL_VERS_R\000"
.LASF36:
	.ascii	"SW_RST_R\000"
.LASF134:
	.ascii	"CY_SD_HOST_ERROR_INVALID_PARAMETER\000"
.LASF72:
	.ascii	"CQTCLR\000"
.LASF20:
	.ascii	"BLOCKCOUNT_R\000"
.LASF131:
	.ascii	"cy_en_sd_host_reset_t\000"
.LASF321:
	.ascii	"Cy_SD_Host_OpsSendIfCond\000"
.LASF267:
	.ascii	"Cy_SD_Host_SetHostBusWidth\000"
.LASF355:
	.ascii	"Cy_SD_Host_InitCard\000"
.LASF126:
	.ascii	"CY_SD_HOST_AUTO_CMD_AUTO\000"
.LASF159:
	.ascii	"CY_SD_HOST_ERASE_DISCARD\000"
.LASF328:
	.ascii	"registerAddress\000"
.LASF299:
	.ascii	"writeProtect\000"
.LASF60:
	.ascii	"CQCFG\000"
.LASF200:
	.ascii	"cardType\000"
.LASF157:
	.ascii	"cy_en_sd_host_io_voltage_t\000"
.LASF278:
	.ascii	"sdioFlag\000"
.LASF314:
	.ascii	"Cy_SD_Host_OpsSetBlockCount\000"
.LASF242:
	.ascii	"dmaMode\000"
.LASF133:
	.ascii	"CY_SD_HOST_ERROR\000"
.LASF17:
	.ascii	"SDHC_WRAP_V1_Type\000"
.LASF64:
	.ascii	"CQISGE\000"
.LASF207:
	.ascii	"respType\000"
.LASF39:
	.ascii	"NORMAL_INT_STAT_EN_R\000"
.LASF199:
	.ascii	"busWidth\000"
.LASF130:
	.ascii	"CY_SD_HOST_RESET_ALL\000"
.LASF338:
	.ascii	"Cy_SD_Host_PollCmdComplete\000"
.LASF363:
	.ascii	"Cy_SD_Host_SetNormalInterruptEnable\000"
.LASF217:
	.ascii	"data\000"
.LASF238:
	.ascii	"Cy_SD_Host_ChangeIoVoltage\000"
.LASF40:
	.ascii	"ERROR_INT_STAT_EN_R\000"
.LASF202:
	.ascii	"cy_stc_sd_host_sd_card_config_t\000"
.LASF15:
	.ascii	"long double\000"
.LASF90:
	.ascii	"BOOT_CTRL_R\000"
.LASF95:
	.ascii	"WRAP\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF155:
	.ascii	"CY_SD_HOST_IO_VOLT_3_3V\000"
.LASF89:
	.ascii	"EMMC_CTRL_R\000"
.LASF273:
	.ascii	"Cy_SD_Host_Enable\000"
.LASF38:
	.ascii	"ERROR_INT_STAT_R\000"
.LASF215:
	.ascii	"autoCommand\000"
.LASF71:
	.ascii	"CQDPT\000"
.LASF303:
	.ascii	"Cy_SD_Host_Init\000"
.LASF339:
	.ascii	"Cy_SD_Host_PollBufferWriteReady\000"
.LASF364:
	.ascii	"Cy_SD_Host_ClearNormalInterruptStatus\000"
.LASF146:
	.ascii	"CY_SD_HOST_BUS_SPEED_DEFAULT\000"
.LASF180:
	.ascii	"CY_SD_HOST_RESPONSE_NONE\000"
.LASF324:
	.ascii	"Cy_SD_Host_OpsSendIoRwDirectCmd\000"
.LASF232:
	.ascii	"locBase\000"
.LASF304:
	.ascii	"config\000"
.LASF52:
	.ascii	"ADMA_SA_LOW_R\000"
.LASF281:
	.ascii	"Cy_SD_Host_NormalReset\000"
.LASF227:
	.ascii	"block_count\000"
.LASF53:
	.ascii	"RESERVED1\000"
.LASF55:
	.ascii	"RESERVED2\000"
.LASF57:
	.ascii	"RESERVED3\000"
.LASF192:
	.ascii	"cy_en_sd_host_write_protect_t\000"
.LASF347:
	.ascii	"startAddr\000"
.LASF190:
	.ascii	"CY_SD_HOST_ENABLE_TEMPORARY\000"
.LASF86:
	.ascii	"RESERVED8\000"
.LASF88:
	.ascii	"RESERVED9\000"
.LASF41:
	.ascii	"NORMAL_INT_SIGNAL_EN_R\000"
.LASF21:
	.ascii	"ARGUMENT_R\000"
.LASF332:
	.ascii	"Cy_SD_Host_SendCommand\000"
.LASF6:
	.ascii	"long int\000"
.LASF44:
	.ascii	"HOST_CTRL2_R\000"
.LASF151:
	.ascii	"CY_SD_HOST_BUS_SPEED_EMMC_LEGACY\000"
.LASF371:
	.ascii	"libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\so"
	.ascii	"urce\\cy_sd_host.c\000"
.LASF353:
	.ascii	"length\000"
.LASF19:
	.ascii	"BLOCKSIZE_R\000"
.LASF325:
	.ascii	"rwFlag\000"
.LASF334:
	.ascii	"pcmd\000"
.LASF357:
	.ascii	"Cy_SD_Host_eMMC_InitCard\000"
.LASF70:
	.ascii	"CQDQS\000"
.LASF158:
	.ascii	"CY_SD_HOST_ERASE_ERASE\000"
.LASF229:
	.ascii	"Cy_SD_Host_DeepSleepCallback\000"
.LASF205:
	.ascii	"enableCrcCheck\000"
.LASF185:
	.ascii	"CY_SD_HOST_DMA_SDMA\000"
.LASF220:
	.ascii	"enReliableWrite\000"
.LASF354:
	.ascii	"Cy_SD_Host_Read\000"
.LASF263:
	.ascii	"Cy_SD_Host_SetHostSpeedMode\000"
.LASF241:
	.ascii	"dataConfig\000"
.LASF211:
	.ascii	"cy_stc_sd_host_cmd_config_t\000"
.LASF251:
	.ascii	"Cy_SD_Host_SelBusVoltage\000"
.LASF235:
	.ascii	"reset\000"
.LASF294:
	.ascii	"Cy_SD_Host_GetOcr\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF216:
	.ascii	"read\000"
.LASF323:
	.ascii	"Cy_SD_Host_OpsSendAppCmd\000"
.LASF120:
	.ascii	"CY_SD_HOST_CMD_RESUME\000"
.LASF210:
	.ascii	"cmdType\000"
.LASF269:
	.ascii	"Cy_SD_Host_IsWpSet\000"
.LASF123:
	.ascii	"CY_SD_HOST_AUTO_CMD_NONE\000"
.LASF47:
	.ascii	"CURR_CAPABILITIES1_R\000"
.LASF245:
	.ascii	"responsePtr\000"
.LASF149:
	.ascii	"CY_SD_HOST_BUS_SPEED_SDR25\000"
.LASF360:
	.ascii	"interrupt\000"
.LASF356:
	.ascii	"cidReg\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF128:
	.ascii	"CY_SD_HOST_RESET_DATALINE\000"
.LASF222:
	.ascii	"address\000"
.LASF335:
	.ascii	"blkCnt\000"
.LASF100:
	.ascii	"float\000"
.LASF189:
	.ascii	"CY_SD_HOST_PERMANENT\000"
.LASF337:
	.ascii	"Cy_SD_Host_PollTransferComplete\000"
.LASF195:
	.ascii	"enableLedControl\000"
.LASF156:
	.ascii	"CY_SD_HOST_IO_VOLT_1_8V\000"
.LASF140:
	.ascii	"CY_SD_HOST_ERROR_DISCONNECTED\000"
.LASF22:
	.ascii	"XFER_MODE_R\000"
.LASF362:
	.ascii	"Cy_SD_Host_GetErrorInterruptStatus\000"
.LASF67:
	.ascii	"RESERVED4\000"
.LASF234:
	.ascii	"Cy_SD_Host_GetPresentState\000"
.LASF301:
	.ascii	"Cy_SD_Host_AbortTransfer\000"
.LASF201:
	.ascii	"cardCapacity\000"
.LASF91:
	.ascii	"GP_IN_R\000"
.LASF236:
	.ascii	"Cy_SD_Host_IsCardConnected\000"
.LASF280:
	.ascii	"intNormal\000"
.LASF225:
	.ascii	"maxSectorNum\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF136:
	.ascii	"CY_SD_HOST_ERROR_UNINITIALIZED\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF275:
	.ascii	"Cy_SD_Host_FindBusSpeedMode\000"
.LASF349:
	.ascii	"eraseType\000"
.LASF366:
	.ascii	"Cy_SD_Host_BufferWrite\000"
.LASF58:
	.ascii	"CQVER\000"
.LASF208:
	.ascii	"enableIdxCheck\000"
.LASF291:
	.ascii	"cSizeMult\000"
.LASF352:
	.ascii	"aDmaDescriptTbl\000"
.LASF93:
	.ascii	"RESERVED10\000"
.LASF108:
	.ascii	"CY_SYSPM_FAIL\000"
.LASF259:
	.ascii	"Cy_SD_Host_SetBusSpeedMode\000"
.LASF181:
	.ascii	"CY_SD_HOST_RESPONSE_LEN_136\000"
.LASF341:
	.ascii	"Cy_SD_Host_PollDataLineFree\000"
.LASF302:
	.ascii	"Cy_SD_Host_DeInit\000"
.LASF124:
	.ascii	"CY_SD_HOST_AUTO_CMD_12\000"
.LASF188:
	.ascii	"cy_en_sd_host_dma_type_t\000"
.LASF344:
	.ascii	"Cy_SD_Host_PollCmdLineFree\000"
.LASF243:
	.ascii	"transferMode\000"
.LASF24:
	.ascii	"RESP01_R\000"
.LASF135:
	.ascii	"CY_SD_HOST_ERROR_OPERATION_IN_PROGRESS\000"
.LASF154:
	.ascii	"cy_en_sd_host_bus_speed_mode_t\000"
.LASF51:
	.ascii	"ADMA_ERR_STAT_R\000"
.LASF103:
	.ascii	"CY_SYSPM_BAD_PARAM\000"
.LASF122:
	.ascii	"cy_en_sd_host_cmd_type_t\000"
.LASF173:
	.ascii	"CY_SD_HOST_SDSC\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF287:
	.ascii	"extCsd\000"
.LASF166:
	.ascii	"CY_SD_HOST_SD\000"
.LASF129:
	.ascii	"CY_SD_HOST_RESET_CMD_LINE\000"
.LASF94:
	.ascii	"SDHC_CORE_V1_Type\000"
.LASF327:
	.ascii	"rawFlag\000"
.LASF326:
	.ascii	"functionNumber\000"
.LASF101:
	.ascii	"double\000"
.LASF184:
	.ascii	"cy_en_sd_host_response_type_t\000"
.LASF315:
	.ascii	"reliableWrite\000"
.LASF367:
	.ascii	"Cy_SD_Host_BufferRead\000"
.LASF163:
	.ascii	"CY_SD_HOST_ERASE_SECURE_TRIM_STEP_1\000"
.LASF162:
	.ascii	"CY_SD_HOST_ERASE_SECURE_TRIM_STEP_2\000"
.LASF73:
	.ascii	"RESERVED5\000"
.LASF77:
	.ascii	"RESERVED6\000"
.LASF82:
	.ascii	"RESERVED7\000"
.LASF226:
	.ascii	"cy_stc_sd_host_context_t\000"
.LASF282:
	.ascii	"Cy_SD_Host_ErrorReset\000"
.LASF150:
	.ascii	"CY_SD_HOST_BUS_SPEED_SDR50\000"
.LASF333:
	.ascii	"Cy_SD_Host_CmdTxData\000"
.LASF144:
	.ascii	"CY_SD_HOST_BUS_WIDTH_8_BIT\000"
.LASF45:
	.ascii	"CAPABILITIES1_R\000"
.LASF141:
	.ascii	"cy_en_sd_host_status_t\000"
.LASF247:
	.ascii	"responseBaseAddr\000"
.LASF244:
	.ascii	"Cy_SD_Host_GetResponse\000"
.LASF274:
	.ascii	"retry\000"
.LASF320:
	.ascii	"Cy_SD_Host_OpsSelectCard\000"
.LASF112:
	.ascii	"CY_SYSPM_BEFORE_TRANSITION\000"
.LASF113:
	.ascii	"CY_SYSPM_AFTER_TRANSITION\000"
.LASF330:
	.ascii	"Cy_SD_Host_OpsGoIdle\000"
.LASF110:
	.ascii	"CY_SYSPM_CHECK_READY\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
