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
	.file	"cy_ipc_sema.c"
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
	.section	.text.Cy_IPC_Drv_GetIpcBaseAddress,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Drv_GetIpcBaseAddress, %function
Cy_IPC_Drv_GetIpcBaseAddress:
.LFB137:
	.file 2 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_ipc_drv.h"
	.loc 2 588 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI5:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI6:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 589 35
	ldr	r3, .L5
	ldr	r3, [r3]
	ldrb	r3, [r3, #51]	@ zero_extendqisi2
	.loc 2 589 15
	mov	r2, r3
	.loc 2 589 12
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bcc	.L3
	.loc 2 589 64 discriminator 1
	bl	CY_HALT
.L3:
	.loc 2 590 62
	ldr	r3, .L5
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	.loc 2 590 84
	ldr	r3, .L5
	ldr	r3, [r3]
	ldrh	r3, [r3, #186]
	mov	r1, r3
	.loc 2 590 100
	ldr	r3, [r7, #4]
	mul	r3, r1, r3
	.loc 2 590 72
	add	r3, r3, r2
	.loc 2 591 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI7:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI8:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	cy_device
	.cfi_endproc
.LFE137:
	.size	Cy_IPC_Drv_GetIpcBaseAddress, .-Cy_IPC_Drv_GetIpcBaseAddress
	.section	.text.Cy_IPC_Drv_ReadDataValue,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Drv_ReadDataValue, %function
Cy_IPC_Drv_ReadDataValue:
.LFB151:
	.loc 2 1004 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI10:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1005 42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 2 1006 1
	mov	r0, r3
	adds	r7, r7, #12
.LCFI12:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI13:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI14:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE151:
	.size	Cy_IPC_Drv_ReadDataValue, .-Cy_IPC_Drv_ReadDataValue
	.section	.text.Cy_IPC_Drv_SendMsgPtr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Drv_SendMsgPtr, %function
Cy_IPC_Drv_SendMsgPtr:
.LFB157:
	.loc 2 1172 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI16:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI17:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 2 1173 12
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L10
	.loc 2 1173 18 discriminator 1
	bl	CY_HALT
.L10:
	.loc 2 1174 12
	ldr	r3, [r7, #4]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	Cy_IPC_Drv_SendMsgWord
	mov	r3, r0
	.loc 2 1175 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI18:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI19:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE157:
	.size	Cy_IPC_Drv_SendMsgPtr, .-Cy_IPC_Drv_SendMsgPtr
	.section	.text.Cy_IPC_Drv_LockAcquire,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Drv_LockAcquire, %function
Cy_IPC_Drv_LockAcquire:
.LFB159:
	.loc 2 1235 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI21:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI22:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 2 1236 61
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 2 1236 120
	cmp	r3, #0
	bge	.L13
	.loc 2 1236 120 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L15
.L13:
	.loc 2 1236 120 discriminator 2
	ldr	r3, .L16
.L15:
	.loc 2 1237 1 is_stmt 1 discriminator 5
	mov	r0, r3
	adds	r7, r7, #12
.LCFI23:
	.cfi_def_cfa_offset 4
	mov	sp, r7
.LCFI24:
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
.LCFI25:
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L17:
	.align	2
.L16:
	.word	9043969
	.cfi_endproc
.LFE159:
	.size	Cy_IPC_Drv_LockAcquire, .-Cy_IPC_Drv_LockAcquire
	.section	.bss.cy_semaIpcStruct,"aw",%nobits
	.align	2
	.type	cy_semaIpcStruct, %object
	.size	cy_semaIpcStruct, 4
cy_semaIpcStruct:
	.space	4
	.section	.cy_sharedmem,"aw"
	.align	2
	.type	cy_semaData.0, %object
	.size	cy_semaData.0, 8
cy_semaData.0:
	.space	8
	.section	.text.Cy_IPC_Sema_Init,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_Init, %function
Cy_IPC_Sema_Init:
.LFB160:
	.file 3 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\source\\cy_ipc_sema.c"
	.loc 3 83 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI26:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI27:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI28:
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 3 91 28
	ldr	r3, .L23
	str	r3, [r7, #20]
	.loc 3 93 7
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L19
	.loc 3 93 25 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L19
	.loc 3 95 28
	ldr	r0, [r7, #12]
	bl	Cy_IPC_Drv_GetIpcBaseAddress
	mov	r3, r0
	.loc 3 95 26
	ldr	r2, .L23+4
	str	r3, [r2]
	.loc 3 97 19
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L20
.L19:
	.loc 3 101 13
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L21
	.loc 3 101 30 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L21
	.loc 3 103 29
	ldr	r2, .L23+8
	ldr	r3, [r7, #8]
	str	r3, [r2]
	.loc 3 104 30
	ldr	r2, .L23+8
	ldr	r3, [r7, #4]
	str	r3, [r2, #4]
	.loc 3 106 21
	ldr	r1, .L23+8
	ldr	r0, [r7, #12]
	bl	Cy_IPC_Sema_InitExt
	str	r0, [r7, #20]
	.loc 3 106 19
	b	.L20
.L21:
	.loc 3 111 19
	ldr	r3, .L23
	str	r3, [r7, #20]
.L20:
	.loc 3 114 11
	ldr	r3, [r7, #20]
	.loc 3 115 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI29:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI30:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	9044227
	.word	cy_semaIpcStruct
	.word	cy_semaData.0
	.cfi_endproc
.LFE160:
	.size	Cy_IPC_Sema_Init, .-Cy_IPC_Sema_Init
	.section	.text.Cy_IPC_Sema_InitExt,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_InitExt
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_InitExt, %function
Cy_IPC_Sema_InitExt:
.LFB161:
	.loc 3 147 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI32:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI33:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 3 148 28
	ldr	r3, .L35
	str	r3, [r7, #12]
	.loc 3 150 43
	ldr	r3, .L35+4
	ldr	r3, [r3]
	ldrb	r3, [r3, #51]	@ zero_extendqisi2
	.loc 3 150 23
	mov	r2, r3
	.loc 3 150 8
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bcc	.L26
	.loc 3 152 19
	ldr	r3, .L35
	str	r3, [r7, #12]
	b	.L27
.L26:
	.loc 3 156 11
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L28
	.loc 3 162 32
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 162 42
	and	r3, r3, #31
	.loc 3 162 15
	cmp	r3, #0
	bne	.L29
	.loc 3 164 36
	ldr	r0, [r7, #4]
	bl	Cy_IPC_Drv_GetIpcBaseAddress
	mov	r3, r0
	.loc 3 164 34
	ldr	r2, .L35+8
	str	r3, [r2]
.LBB2:
	.loc 3 167 31
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 3 167 17
	b	.L30
.L31:
	.loc 3 169 28 discriminator 3
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	.loc 3 169 38 discriminator 3
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	.loc 3 169 46 discriminator 3
	movs	r2, #0
	str	r2, [r3]
	.loc 3 167 97 discriminator 3
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L30:
	.loc 3 167 64 discriminator 1
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 3 167 46 discriminator 1
	lsrs	r3, r3, #5
	.loc 3 167 17 discriminator 1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L31
.LBE2:
	.loc 3 178 17
	ldr	r3, .L35+8
	ldr	r3, [r3]
	.loc 3 178 24
	movs	r1, #0
	mov	r0, r3
	bl	Cy_IPC_Drv_LockRelease
	.loc 3 181 43
	ldr	r3, .L35+8
	ldr	r3, [r3]
	ldr	r2, [r7]
	movs	r1, #0
	mov	r0, r3
	bl	Cy_IPC_Drv_SendMsgPtr
	mov	r3, r0
	.loc 3 181 19
	cmp	r3, #0
	bne	.L32
	.loc 3 183 46
	ldr	r3, .L35+8
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	Cy_IPC_Drv_LockRelease
	mov	r3, r0
	.loc 3 183 23
	cmp	r3, #0
	bne	.L33
	.loc 3 185 35
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L27
.L33:
	.loc 3 190 35
	ldr	r3, .L35+12
	str	r3, [r7, #12]
	b	.L27
.L32:
	.loc 3 196 31
	ldr	r3, .L35+12
	str	r3, [r7, #12]
	b	.L27
.L29:
	.loc 3 201 27
	ldr	r3, .L35
	str	r3, [r7, #12]
	b	.L27
.L28:
	.loc 3 206 23
	ldr	r3, .L35
	str	r3, [r7, #12]
.L27:
	.loc 3 210 11
	ldr	r3, [r7, #12]
	.loc 3 211 1
	mov	r0, r3
	adds	r7, r7, #16
.LCFI34:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI35:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	9044227
	.word	cy_device
	.word	cy_semaIpcStruct
	.word	9044225
	.cfi_endproc
.LFE161:
	.size	Cy_IPC_Sema_InitExt, .-Cy_IPC_Sema_InitExt
	.section	.text.Cy_IPC_Sema_Set,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_Set
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_Set, %function
Cy_IPC_Sema_Set:
.LFB162:
	.loc 3 252 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI37:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI38:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 255 14
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 3 258 28
	ldr	r3, .L45
	str	r3, [r7, #24]
	.loc 3 261 39
	ldr	r3, .L45+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_ReadDataValue
	mov	r3, r0
	.loc 3 261 16
	str	r3, [r7, #20]
	.loc 3 267 32
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	.loc 3 267 8
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L38
	.loc 3 269 19
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #5
	str	r3, [r7, #16]
	.loc 3 270 63
	ldr	r3, [r7, #16]
	lsls	r3, r3, #5
	.loc 3 270 50
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	.loc 3 270 18
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	.loc 3 272 13
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 272 12
	cmp	r3, #0
	beq	.L39
	.loc 3 274 30
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #28]
.L39:
	.loc 3 279 34
	ldr	r3, .L45+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_LockAcquire
	mov	r3, r0
	.loc 3 279 11
	cmp	r3, #0
	bne	.L40
	.loc 3 285 27
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	.loc 3 285 37
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	.loc 3 285 49
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	.loc 3 285 15
	cmp	r3, #0
	bne	.L41
	.loc 3 287 27
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	.loc 3 287 49
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r1, [r3]
	.loc 3 287 27
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	.loc 3 287 49
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3]
	.loc 3 291 27
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L42
.L41:
	.loc 3 295 27
	ldr	r3, .L45+8
	str	r3, [r7, #24]
.L42:
	.loc 3 299 13
	ldr	r3, .L45+4
	ldr	r3, [r3]
	.loc 3 299 20
	movs	r1, #0
	mov	r0, r3
	bl	Cy_IPC_Drv_LockRelease
.L40:
	.loc 3 302 13
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 302 12
	cmp	r3, #0
	beq	.L43
	.loc 3 304 13
	ldr	r0, [r7, #28]
	bl	Cy_SysLib_ExitCriticalSection
	b	.L43
.L38:
	.loc 3 309 19
	ldr	r3, .L45+12
	str	r3, [r7, #24]
.L43:
	.loc 3 312 11
	ldr	r3, [r7, #24]
	.loc 3 313 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI39:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI40:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	8913155
	.word	cy_semaIpcStruct
	.word	8913154
	.word	9044228
	.cfi_endproc
.LFE162:
	.size	Cy_IPC_Sema_Set, .-Cy_IPC_Sema_Set
	.section	.text.Cy_IPC_Sema_Clear,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_Clear
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_Clear, %function
Cy_IPC_Sema_Clear:
.LFB163:
	.loc 3 351 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI41:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI42:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI43:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	.loc 3 354 14
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 3 357 28
	ldr	r3, .L55
	str	r3, [r7, #24]
	.loc 3 360 39
	ldr	r3, .L55+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_ReadDataValue
	mov	r3, r0
	.loc 3 360 16
	str	r3, [r7, #20]
	.loc 3 366 32
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	.loc 3 366 8
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L48
	.loc 3 368 19
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #5
	str	r3, [r7, #16]
	.loc 3 369 63
	ldr	r3, [r7, #16]
	lsls	r3, r3, #5
	.loc 3 369 50
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	.loc 3 369 18
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	.loc 3 371 13
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 371 12
	cmp	r3, #0
	beq	.L49
	.loc 3 373 30
	bl	Cy_SysLib_EnterCriticalSection
	str	r0, [r7, #28]
.L49:
	.loc 3 378 34
	ldr	r3, .L55+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_LockAcquire
	mov	r3, r0
	.loc 3 378 11
	cmp	r3, #0
	bne	.L50
	.loc 3 383 27
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	.loc 3 383 37
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	.loc 3 383 49
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	.loc 3 383 15
	cmp	r3, #0
	beq	.L51
	.loc 3 385 27
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	.loc 3 385 49
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r1, [r3]
	.loc 3 385 52
	ldr	r3, [r7, #12]
	mvns	r2, r3
	.loc 3 385 27
	ldr	r3, [r7, #20]
	ldr	r0, [r3, #4]
	.loc 3 385 49
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r0
	ands	r2, r2, r1
	str	r2, [r3]
	.loc 3 389 27
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L52
.L51:
	.loc 3 393 27
	ldr	r3, .L55+8
	str	r3, [r7, #24]
.L52:
	.loc 3 397 13
	ldr	r3, .L55+4
	ldr	r3, [r3]
	.loc 3 397 20
	movs	r1, #0
	mov	r0, r3
	bl	Cy_IPC_Drv_LockRelease
.L50:
	.loc 3 400 13
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 3 400 12
	cmp	r3, #0
	beq	.L53
	.loc 3 402 13
	ldr	r0, [r7, #28]
	bl	Cy_SysLib_ExitCriticalSection
	b	.L53
.L48:
	.loc 3 407 19
	ldr	r3, .L55+12
	str	r3, [r7, #24]
.L53:
	.loc 3 409 11
	ldr	r3, [r7, #24]
	.loc 3 410 1
	mov	r0, r3
	adds	r7, r7, #32
.LCFI44:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI45:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	8913155
	.word	cy_semaIpcStruct
	.word	8913154
	.word	9044228
	.cfi_endproc
.LFE163:
	.size	Cy_IPC_Sema_Clear, .-Cy_IPC_Sema_Clear
	.section	.text.Cy_IPC_Sema_Status,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_Status
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_Status, %function
Cy_IPC_Sema_Status:
.LFB164:
	.loc 3 432 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI46:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
.LCFI47:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI48:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 3 439 39
	ldr	r3, .L62
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_ReadDataValue
	mov	r3, r0
	.loc 3 439 16
	str	r3, [r7, #16]
	.loc 3 445 32
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	.loc 3 445 8
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L58
	.loc 3 448 19
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #5
	str	r3, [r7, #12]
	.loc 3 449 63
	ldr	r3, [r7, #12]
	lsls	r3, r3, #5
	.loc 3 449 50
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	.loc 3 449 18
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	.loc 3 455 23
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	.loc 3 455 33
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	.loc 3 455 45
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	.loc 3 455 11
	cmp	r3, #0
	beq	.L59
	.loc 3 457 23
	ldr	r3, .L62+4
	str	r3, [r7, #20]
	b	.L60
.L59:
	.loc 3 461 23
	ldr	r3, .L62+8
	str	r3, [r7, #20]
	b	.L60
.L58:
	.loc 3 466 19
	ldr	r3, .L62+12
	str	r3, [r7, #20]
.L60:
	.loc 3 468 11
	ldr	r3, [r7, #20]
	.loc 3 469 1
	mov	r0, r3
	adds	r7, r7, #24
.LCFI49:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI50:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	cy_semaIpcStruct
	.word	8913153
	.word	8913152
	.word	9044228
	.cfi_endproc
.LFE164:
	.size	Cy_IPC_Sema_Status, .-Cy_IPC_Sema_Status
	.section	.text.Cy_IPC_Sema_GetMaxSems,"ax",%progbits
	.align	1
	.global	Cy_IPC_Sema_GetMaxSems
	.syntax unified
	.thumb
	.thumb_func
	.type	Cy_IPC_Sema_GetMaxSems, %function
Cy_IPC_Sema_GetMaxSems:
.LFB165:
	.loc 3 486 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI51:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI52:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI53:
	.cfi_def_cfa_register 7
	.loc 3 490 39
	ldr	r3, .L66
	ldr	r3, [r3]
	mov	r0, r3
	bl	Cy_IPC_Drv_ReadDataValue
	mov	r3, r0
	.loc 3 490 16
	str	r3, [r7, #4]
	.loc 3 494 23
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 3 495 1
	mov	r0, r3
	adds	r7, r7, #8
.LCFI54:
	.cfi_def_cfa_offset 8
	mov	sp, r7
.LCFI55:
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L67:
	.align	2
.L66:
	.word	cy_semaIpcStruct
	.cfi_endproc
.LFE165:
	.size	Cy_IPC_Sema_GetMaxSems, .-Cy_IPC_Sema_GetMaxSems
	.text
.Letext0:
	.file 4 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 5 "d:\\llc\\softwares\\env-windows-v1.3.5\\tools\\gnu_gcc\\arm_gcc\\mingw\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 6 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/ip/cyip_ipc_v2.h"
	.file 7 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/psoc6_02_config.h"
	.file 8 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\devices\\COMPONENT_CAT1A\\include/cy_device.h"
	.file 9 "libraries\\IFX_PSOC6_HAL\\core-lib\\include/cy_result.h"
	.file 10 "libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\include/cy_ipc_sema.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc07
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.LASF175
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
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x37
	.byte	0x13
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x20
	.byte	0x13
	.4byte	0x43
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x70
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x6
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	0xd4
	.4byte	0xf0
	.uleb128 0x8
	.4byte	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x5
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.byte	0x2b
	.byte	0x9
	.4byte	0x16d
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.byte	0x1c
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2d
	.byte	0x16
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2e
	.byte	0x16
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.byte	0x15
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x30
	.byte	0x15
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.4byte	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x32
	.byte	0x1c
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.4byte	0xfa
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x6a2
	.byte	0x1c
	.4byte	0x16d
	.uleb128 0x6
	.4byte	0x179
	.uleb128 0x9
	.byte	0xc0
	.byte	0x8
	.byte	0x4b
	.byte	0x9
	.4byte	0x720
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4e
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x4f
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x50
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x51
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x52
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x53
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x54
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x55
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x56
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x57
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0x58
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x5b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0x5c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x5d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x8
	.byte	0x5e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.byte	0x5f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x8
	.byte	0x60
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x8
	.byte	0x61
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x8
	.byte	0x64
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x8
	.byte	0x65
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0x66
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0x67
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x68
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0x69
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6a
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.byte	0x6b
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x8
	.byte	0x6c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x6d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x6e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0x6f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0x70
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0x71
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.byte	0x72
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x8
	.byte	0x73
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x8
	.byte	0x74
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.byte	0x75
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.byte	0x76
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x8
	.byte	0x77
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x78
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x79
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x8
	.byte	0x7a
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0x7b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x53
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x8
	.byte	0x7c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x8
	.byte	0x7d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x55
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7e
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0x7f
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x57
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x8
	.byte	0x80
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x8
	.byte	0x81
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x8
	.byte	0x82
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x8
	.byte	0x83
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5b
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x8
	.byte	0x84
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x8
	.byte	0x8b
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8c
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x63
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x8
	.byte	0x8d
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0x8e
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x8
	.byte	0x92
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6e
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x8
	.byte	0x93
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x8
	.byte	0x94
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x8
	.byte	0x96
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x8
	.byte	0x97
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x8
	.byte	0x98
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x8
	.byte	0x99
	.byte	0xd
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x77
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x8
	.byte	0x9b
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x8
	.byte	0x9c
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7a
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x8
	.byte	0x9d
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x8
	.byte	0x9e
	.byte	0xe
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7e
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x8
	.byte	0xa1
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa2
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x8
	.byte	0xa3
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x8
	.byte	0xa4
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa5
	.byte	0xd
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x8
	.byte	0xa8
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x8
	.byte	0xa9
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x8
	.byte	0xaa
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x8
	.byte	0xab
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x8
	.byte	0xac
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x8
	.byte	0xad
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x8
	.byte	0xae
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x8
	.byte	0xaf
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x8
	.byte	0xb0
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x8
	.byte	0xb1
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xaa
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x8
	.byte	0xb2
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x8
	.byte	0xb3
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xae
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x8
	.byte	0xb4
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x8
	.byte	0xb5
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb2
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x8
	.byte	0xb6
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x8
	.byte	0xb7
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb6
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x8
	.byte	0xb8
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x8
	.byte	0xbb
	.byte	0xe
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xba
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0x8
	.byte	0xbc
	.byte	0xe
	.4byte	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x8
	.byte	0xbd
	.byte	0x3
	.4byte	0x18b
	.uleb128 0x6
	.4byte	0x720
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x8
	.byte	0xc7
	.byte	0x20
	.4byte	0x73f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x4
	.4byte	0x72c
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0x90
	.byte	0x1
	.4byte	0x76c
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF125
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF126
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF127
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x2
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x7a0
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0
	.uleb128 0x11
	.4byte	.LASF129
	.4byte	0x8a0001
	.byte	0
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x1fd
	.byte	0x3
	.4byte	0x781
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0xa
	.byte	0x57
	.byte	0x1
	.4byte	0x80a
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0
	.uleb128 0x11
	.4byte	.LASF132
	.4byte	0x8a0101
	.uleb128 0x11
	.4byte	.LASF133
	.4byte	0x8a0102
	.uleb128 0x11
	.4byte	.LASF134
	.4byte	0x8a0103
	.uleb128 0x11
	.4byte	.LASF135
	.4byte	0x8a0104
	.uleb128 0x11
	.4byte	.LASF136
	.4byte	0x880102
	.uleb128 0x11
	.4byte	.LASF137
	.4byte	0x880103
	.uleb128 0x11
	.4byte	.LASF138
	.4byte	0x880101
	.uleb128 0x11
	.4byte	.LASF139
	.4byte	0x880100
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x6c
	.byte	0x3
	.4byte	0x7ad
	.uleb128 0x9
	.byte	0x8
	.byte	0xa
	.byte	0x70
	.byte	0x9
	.4byte	0x83e
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0xa
	.byte	0x73
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xa
	.byte	0x75
	.byte	0xf
	.4byte	0x83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xa
	.byte	0x76
	.byte	0x3
	.4byte	0x816
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x3
	.byte	0x27
	.byte	0x19
	.4byte	0x862
	.byte	0x5
	.byte	0x3
	.4byte	cy_semaIpcStruct
	.uleb128 0xd
	.byte	0x4
	.4byte	0x179
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x1e5
	.byte	0xa
	.byte	0x1
	.4byte	0xc3
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x899
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x1e7
	.byte	0x18
	.4byte	0x899
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x844
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x1af
	.byte	0x18
	.byte	0x1
	.4byte	0x80a
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x910
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x1af
	.byte	0x34
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x1b1
	.byte	0x1c
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x1b2
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x1b3
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x1b4
	.byte	0x18
	.4byte	0x899
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x15e
	.byte	0x18
	.byte	0x1
	.4byte	0x80a
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x9a1
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x15e
	.byte	0x33
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x15e
	.byte	0x43
	.4byte	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x160
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x161
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x162
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x164
	.byte	0x18
	.4byte	0x899
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x165
	.byte	0x1c
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF155
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF156
	.byte	0x3
	.byte	0xfb
	.byte	0x18
	.byte	0x1
	.4byte	0x80a
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LLST7
	.byte	0x1
	.4byte	0xa33
	.uleb128 0x17
	.4byte	.LASF152
	.byte	0x3
	.byte	0xfb
	.byte	0x31
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF153
	.byte	0x3
	.byte	0xfb
	.byte	0x41
	.4byte	0x9a1
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0x3
	.byte	0xfd
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0x3
	.byte	0xfe
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0x3
	.byte	0xff
	.byte	0xe
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x101
	.byte	0x18
	.4byte	0x899
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x102
	.byte	0x1c
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF157
	.byte	0x3
	.byte	0x92
	.byte	0x18
	.byte	0x1
	.4byte	0x80a
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LLST6
	.byte	0x1
	.4byte	0xa99
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0x3
	.byte	0x92
	.byte	0x35
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0x3
	.byte	0x92
	.byte	0x54
	.4byte	0x899
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0x3
	.byte	0x94
	.byte	0x1c
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0x3
	.byte	0xa7
	.byte	0x1f
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF161
	.byte	0x3
	.byte	0x51
	.byte	0x18
	.byte	0x1
	.4byte	0x80a
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LLST5
	.byte	0x1
	.4byte	0xb07
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0x3
	.byte	0x51
	.byte	0x32
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF162
	.byte	0x3
	.byte	0x52
	.byte	0x32
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LASF163
	.byte	0x3
	.byte	0x52
	.byte	0x42
	.4byte	0x83e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0x3
	.byte	0x59
	.byte	0x1e
	.4byte	0x844
	.byte	0x5
	.byte	0x3
	.4byte	cy_semaData.0
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0x3
	.byte	0x5b
	.byte	0x1c
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0x2
	.2byte	0x4d2
	.byte	0x25
	.byte	0x1
	.4byte	0x7a0
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LLST4
	.byte	0x1
	.4byte	0xb37
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x4d2
	.byte	0x55
	.4byte	0xb37
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x186
	.uleb128 0x1a
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x493
	.byte	0x25
	.byte	0x1
	.4byte	0x7a0
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LLST3
	.byte	0x1
	.4byte	0xb8d
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x493
	.byte	0x4c
	.4byte	0x862
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x2
	.2byte	0x493
	.byte	0x5b
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0x2
	.2byte	0x493
	.byte	0x79
	.4byte	0xb8d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb93
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF170
	.byte	0x2
	.2byte	0x3eb
	.byte	0x18
	.byte	0x1
	.4byte	0xc3
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LLST2
	.byte	0x1
	.4byte	0xbc4
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x3eb
	.byte	0x4a
	.4byte	0xb37
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF171
	.byte	0x2
	.2byte	0x24b
	.byte	0x20
	.byte	0x1
	.4byte	0x862
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xbf4
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0x2
	.2byte	0x24b
	.byte	0x47
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF177
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
.LLST10:
	.4byte	.LFB165
	.4byte	.LCFI51
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI51
	.4byte	.LCFI52
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
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
	.sleb128 8
	.4byte	.LCFI55
	.4byte	.LFE165
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB164
	.4byte	.LCFI46
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI46
	.4byte	.LCFI47
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI47
	.4byte	.LCFI48
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI48
	.4byte	.LCFI49
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI49
	.4byte	.LCFI50
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI50
	.4byte	.LFE164
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB163
	.4byte	.LCFI41
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI41
	.4byte	.LCFI42
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI42
	.4byte	.LCFI43
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI43
	.4byte	.LCFI44
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI44
	.4byte	.LCFI45
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI45
	.4byte	.LFE163
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB162
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI36
	.4byte	.LCFI37
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI38
	.4byte	.LCFI39
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	.LCFI39
	.4byte	.LCFI40
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI40
	.4byte	.LFE162
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB161
	.4byte	.LCFI31
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI31
	.4byte	.LCFI32
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI32
	.4byte	.LCFI33
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI33
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI34
	.4byte	.LCFI35
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI35
	.4byte	.LFE161
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB160
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI28
	.4byte	.LCFI29
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI30
	.4byte	.LFE160
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB159
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI20
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI25
	.4byte	.LFE159
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB157
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LCFI19
	.4byte	.LFE157
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB151
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
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
	.sleb128 4
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14
	.4byte	.LFE151
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.sleb128 8
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
	.sleb128 8
	.4byte	.LCFI8
	.4byte	.LFE137
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
	.4byte	0x6c
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
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF136:
	.ascii	"CY_IPC_SEMA_NOT_ACQUIRED\000"
.LASF162:
	.ascii	"count\000"
.LASF177:
	.ascii	"CY_HALT\000"
.LASF73:
	.ascii	"flashCtlMainWs3Freq\000"
.LASF98:
	.ascii	"gpioPrtCfgInOffset\000"
.LASF119:
	.ascii	"ipcLockStatusOffset\000"
.LASF39:
	.ascii	"cryptoVersion\000"
.LASF129:
	.ascii	"CY_IPC_DRV_ERROR\000"
.LASF34:
	.ascii	"passBase\000"
.LASF87:
	.ascii	"periTrGrSize\000"
.LASF46:
	.ascii	"cpussIpcIrqNr\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF95:
	.ascii	"periDiv24_5CtlOffset\000"
.LASF102:
	.ascii	"cpussCm4ClockCtlOffset\000"
.LASF19:
	.ascii	"RELEASE\000"
.LASF122:
	.ascii	"CY_RSLT_TYPE_WARNING\000"
.LASF27:
	.ascii	"cpussBase\000"
.LASF80:
	.ascii	"dwChCtlPrioPos\000"
.LASF57:
	.ascii	"periClockNr\000"
.LASF152:
	.ascii	"semaNumber\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF65:
	.ascii	"flashRwwRequired\000"
.LASF84:
	.ascii	"periTrCmdOffset\000"
.LASF108:
	.ascii	"cpussSysTickCtlOffset\000"
.LASF145:
	.ascii	"semaStruct\000"
.LASF121:
	.ascii	"CY_RSLT_TYPE_INFO\000"
.LASF66:
	.ascii	"flashPipeRequired\000"
.LASF70:
	.ascii	"flashCtlMainWs0Freq\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF89:
	.ascii	"periDivCmdTypeSelPos\000"
.LASF18:
	.ascii	"ACQUIRE\000"
.LASF31:
	.ascii	"protBase\000"
.LASF41:
	.ascii	"ipcVersion\000"
.LASF163:
	.ascii	"memPtr\000"
.LASF109:
	.ascii	"cpussCm0NmiCtlOffset\000"
.LASF168:
	.ascii	"notifyEventIntr\000"
.LASF150:
	.ascii	"semaMask\000"
.LASF32:
	.ascii	"hsiomBase\000"
.LASF7:
	.ascii	"long int\000"
.LASF175:
	.ascii	"D:\\\\llc\\\\git_repos\\\\xiotman\\\\mcu\\\\psoc6-e"
	.ascii	"valuationkit-062S2\000"
.LASF64:
	.ascii	"cryptoMemSize\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"periBase\000"
.LASF62:
	.ascii	"sysPmSimoPresent\000"
.LASF51:
	.ascii	"cpussFmIrq\000"
.LASF47:
	.ascii	"cpussDw0ChNr\000"
.LASF127:
	.ascii	"double\000"
.LASF94:
	.ascii	"periDiv16_5CtlOffset\000"
.LASF54:
	.ascii	"srssNumPll\000"
.LASF115:
	.ascii	"cpussRam0PwrCtl\000"
.LASF92:
	.ascii	"periDiv8CtlOffset\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF99:
	.ascii	"gpioPrtCfgOutOffset\000"
.LASF172:
	.ascii	"ipcIndex\000"
.LASF28:
	.ascii	"flashcBase\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF77:
	.ascii	"tcpwmSMCPrecent\000"
.LASF59:
	.ascii	"passSarChannels\000"
.LASF24:
	.ascii	"LOCK_STATUS\000"
.LASF132:
	.ascii	"CY_IPC_SEMA_ERROR_LOCKED\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF142:
	.ascii	"arrayPtr\000"
.LASF128:
	.ascii	"CY_IPC_DRV_SUCCESS\000"
.LASF43:
	.ascii	"srssVersion\000"
.LASF105:
	.ascii	"cpussCm4PwrCtlOffset\000"
.LASF100:
	.ascii	"gpioPrtCfgSioOffset\000"
.LASF104:
	.ascii	"cpussCm0StatusOffset\000"
.LASF151:
	.ascii	"Cy_IPC_Sema_Clear\000"
.LASF146:
	.ascii	"Cy_IPC_Sema_GetMaxSems\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF85:
	.ascii	"periTrCmdGrSelMsk\000"
.LASF131:
	.ascii	"CY_IPC_SEMA_SUCCESS\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF154:
	.ascii	"interruptState\000"
.LASF45:
	.ascii	"cpussIpcNr\000"
.LASF137:
	.ascii	"CY_IPC_SEMA_LOCKED\000"
.LASF33:
	.ascii	"gpioBase\000"
.LASF72:
	.ascii	"flashCtlMainWs2Freq\000"
.LASF158:
	.ascii	"ipcChannel\000"
.LASF157:
	.ascii	"Cy_IPC_Sema_InitExt\000"
.LASF113:
	.ascii	"cpussRam1Ctl0\000"
.LASF37:
	.ascii	"sar0Base\000"
.LASF130:
	.ascii	"cy_en_ipcdrv_status_t\000"
.LASF161:
	.ascii	"Cy_IPC_Sema_Init\000"
.LASF138:
	.ascii	"CY_IPC_SEMA_STATUS_LOCKED\000"
.LASF166:
	.ascii	"Cy_IPC_Drv_LockAcquire\000"
.LASF120:
	.ascii	"cy_stc_device_t\000"
.LASF20:
	.ascii	"NOTIFY\000"
.LASF60:
	.ascii	"epMonitorNr\000"
.LASF110:
	.ascii	"cpussCm4NmiCtlOffset\000"
.LASF106:
	.ascii	"cpussTrimRamCtlOffset\000"
.LASF101:
	.ascii	"cpussCm0ClockCtlOffset\000"
.LASF133:
	.ascii	"CY_IPC_SEMA_ERROR_UNLOCKED\000"
.LASF135:
	.ascii	"CY_IPC_SEMA_OUT_OF_RANGE\000"
.LASF63:
	.ascii	"protBusMasterMask\000"
.LASF38:
	.ascii	"cpussVersion\000"
.LASF165:
	.ascii	"base\000"
.LASF21:
	.ascii	"DATA0\000"
.LASF42:
	.ascii	"periVersion\000"
.LASF141:
	.ascii	"maxSema\000"
.LASF123:
	.ascii	"CY_RSLT_TYPE_ERROR\000"
.LASF22:
	.ascii	"DATA1\000"
.LASF78:
	.ascii	"dwChOffset\000"
.LASF49:
	.ascii	"cpussFlashPaSize\000"
.LASF91:
	.ascii	"periDivCmdPaTypeSelPos\000"
.LASF114:
	.ascii	"cpussRam2Ctl0\000"
.LASF82:
	.ascii	"dwStatusChIdxPos\000"
.LASF139:
	.ascii	"CY_IPC_SEMA_STATUS_UNLOCKED\000"
.LASF61:
	.ascii	"udbPresent\000"
.LASF56:
	.ascii	"srssIsPiloPresent\000"
.LASF159:
	.ascii	"ipcSema\000"
.LASF36:
	.ascii	"cryptoBase\000"
.LASF58:
	.ascii	"smifDeviceNr\000"
.LASF117:
	.ascii	"cpussRam2PwrCtl\000"
.LASF126:
	.ascii	"float\000"
.LASF83:
	.ascii	"dwStatusChIdxMsk\000"
.LASF86:
	.ascii	"periTrGrOffset\000"
.LASF176:
	.ascii	"cy_device\000"
.LASF111:
	.ascii	"cpussRomCtl\000"
.LASF81:
	.ascii	"dwChCtlPreemptablePos\000"
.LASF169:
	.ascii	"msgPtr\000"
.LASF167:
	.ascii	"Cy_IPC_Drv_SendMsgPtr\000"
.LASF134:
	.ascii	"CY_IPC_SEMA_BAD_PARAM\000"
.LASF30:
	.ascii	"udbBase\000"
.LASF155:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF74:
	.ascii	"flashCtlMainWs4Freq\000"
.LASF4:
	.ascii	"short int\000"
.LASF112:
	.ascii	"cpussRam0Ctl0\000"
.LASF23:
	.ascii	"RESERVED\000"
.LASF76:
	.ascii	"tcpwmAMCPresent\000"
.LASF88:
	.ascii	"periDivCmdDivSelMsk\000"
.LASF55:
	.ascii	"srssNumHfroot\000"
.LASF69:
	.ascii	"flashEraseDelay\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF147:
	.ascii	"Cy_IPC_Sema_Status\000"
.LASF75:
	.ascii	"tcpwmCC1Present\000"
.LASF17:
	.ascii	"long double\000"
.LASF125:
	.ascii	"char\000"
.LASF116:
	.ascii	"cpussRam1PwrCtl\000"
.LASF149:
	.ascii	"semaIndex\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF124:
	.ascii	"CY_RSLT_TYPE_FATAL\000"
.LASF160:
	.ascii	"index\000"
.LASF93:
	.ascii	"periDiv16CtlOffset\000"
.LASF25:
	.ascii	"IPC_STRUCT_V2_Type\000"
.LASF170:
	.ascii	"Cy_IPC_Drv_ReadDataValue\000"
.LASF71:
	.ascii	"flashCtlMainWs1Freq\000"
.LASF140:
	.ascii	"cy_en_ipcsema_status_t\000"
.LASF79:
	.ascii	"dwChSize\000"
.LASF164:
	.ascii	"cy_semaData\000"
.LASF118:
	.ascii	"ipcStructSize\000"
.LASF50:
	.ascii	"cpussIpc0Irq\000"
.LASF97:
	.ascii	"gpioPrtCfgOffset\000"
.LASF48:
	.ascii	"cpussDw1ChNr\000"
.LASF52:
	.ascii	"cpussNotConnectedIrq\000"
.LASF67:
	.ascii	"flashWriteDelay\000"
.LASF44:
	.ascii	"passVersion\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF174:
	.ascii	"libraries\\IFX_PSOC6_HAL\\mtb-pdl-cat1\\drivers\\so"
	.ascii	"urce\\cy_ipc_sema.c\000"
.LASF103:
	.ascii	"cpussCm4StatusOffset\000"
.LASF96:
	.ascii	"gpioPrtIntrCfgOffset\000"
.LASF173:
	.ascii	"GNU C17 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -gdwarf-2 -g -O0 -ffunction-sections -fda"
	.ascii	"ta-sections\000"
.LASF171:
	.ascii	"Cy_IPC_Drv_GetIpcBaseAddress\000"
.LASF143:
	.ascii	"cy_stc_ipc_sema_t\000"
.LASF107:
	.ascii	"cpussTrimRomCtlOffset\000"
.LASF144:
	.ascii	"cy_semaIpcStruct\000"
.LASF26:
	.ascii	"IPC_STRUCT_Type\000"
.LASF53:
	.ascii	"srssNumClkpath\000"
.LASF40:
	.ascii	"dwVersion\000"
.LASF35:
	.ascii	"ipcBase\000"
.LASF90:
	.ascii	"periDivCmdPaDivSelPos\000"
.LASF68:
	.ascii	"flashProgramDelay\000"
.LASF148:
	.ascii	"retStatus\000"
.LASF153:
	.ascii	"preemptable\000"
.LASF156:
	.ascii	"Cy_IPC_Sema_Set\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
