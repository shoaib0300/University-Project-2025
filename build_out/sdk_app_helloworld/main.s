	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DHT_init,"ax",@progbits
	.align	1
	.globl	DHT_init
	.type	DHT_init, @function
DHT_init:
.LFB9:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/dht_lib.c"
	.loc 1 14 1
	.cfi_startproc
.LVL0:
	.loc 1 15 5
	.loc 1 15 12 is_stmt 0
	lui	a5,%hi(pinDht)
	sb	a0,%lo(pinDht)(a5)
	.loc 1 16 1
	ret
	.cfi_endproc
.LFE9:
	.size	DHT_init, .-DHT_init
	.section	.text.DHT_Start,"ax",@progbits
	.align	1
	.globl	DHT_Start
	.type	DHT_Start, @function
DHT_Start:
.LFB10:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
	.loc 1 22 5
	.loc 1 20 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 22 5
	lui	s0,%hi(pinDht)
	lbu	a0,%lo(pinDht)(s0)
	li	a2,0
	li	a1,0
	.loc 1 20 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 22 5
	call	bl_gpio_enable_output
.LVL1:
	.loc 1 25 5 is_stmt 1
	lbu	a0,%lo(pinDht)(s0)
	li	a1,0
	call	bl_gpio_output_set
.LVL2:
	.loc 1 26 5
	li	a0,16384
	addi	a0,a0,1616
	call	bl_timer_delay_us
.LVL3:
	.loc 1 29 5
	lbu	a0,%lo(pinDht)(s0)
	li	a1,1
	call	bl_gpio_output_set
.LVL4:
	.loc 1 30 5
	li	a0,30
	call	bl_timer_delay_us
.LVL5:
	.loc 1 33 5
	lbu	a0,%lo(pinDht)(s0)
	.loc 1 34 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 33 5
	li	a2,0
	.loc 1 34 1
	.loc 1 33 5
	li	a1,0
	.loc 1 34 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 33 5
	tail	bl_gpio_enable_input
.LVL6:
	.cfi_endproc
.LFE10:
	.size	DHT_Start, .-DHT_Start
	.section	.text.DHT_Check_Response,"ax",@progbits
	.align	1
	.globl	DHT_Check_Response
	.type	DHT_Check_Response, @function
DHT_Check_Response:
.LFB11:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
	.loc 1 39 5
.LVL7:
	.loc 1 42 5
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 42 5
	li	a0,40
	.loc 1 38 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 45 10
	lui	s0,%hi(pinDht)
	.loc 1 42 5
	call	bl_timer_delay_us
.LVL8:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 10 is_stmt 0
	lbu	a0,%lo(pinDht)(s0)
	.loc 1 39 13
	li	s1,0
	.loc 1 45 10
	call	bl_gpio_input_get_value
.LVL9:
	.loc 1 45 8
	bne	a0,zero,.L6
	.loc 1 48 9 is_stmt 1
	li	a0,80
	call	bl_timer_delay_us
.LVL10:
	.loc 1 51 9
	.loc 1 51 13 is_stmt 0
	lbu	a0,%lo(pinDht)(s0)
	.loc 1 52 22
	li	s1,1
	.loc 1 51 13
	call	bl_gpio_input_get_value
.LVL11:
	.loc 1 51 12
	bne	a0,zero,.L6
	.loc 1 54 22
	li	s1,255
.LVL12:
.L6:
	.loc 1 58 44 is_stmt 1 discriminator 1
	.loc 1 58 12 is_stmt 0 discriminator 1
	lbu	a0,%lo(pinDht)(s0)
	call	bl_gpio_input_get_value
.LVL13:
	.loc 1 58 11 discriminator 1
	bne	a0,zero,.L6
	.loc 1 60 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL14:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	DHT_Check_Response, .-DHT_Check_Response
	.section	.text.DHT_Read,"ax",@progbits
	.align	1
	.globl	DHT_Read
	.type	DHT_Read, @function
DHT_Read:
.LFB12:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
	.loc 1 65 5
.LVL15:
	.loc 1 68 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 64 1
	li	s1,7
	.loc 1 65 13
	li	s0,0
	.loc 1 71 18
	lui	s2,%hi(pinDht)
	li	s4,1
	.loc 1 68 5
	li	s3,-1
.LVL16:
.L12:
	.loc 1 71 51 is_stmt 1 discriminator 1
	.loc 1 71 18 is_stmt 0 discriminator 1
	lbu	a0,%lo(pinDht)(s2)
	call	bl_gpio_input_get_value
.LVL17:
	.loc 1 71 15 discriminator 1
	beq	a0,zero,.L12
	.loc 1 74 9 is_stmt 1
	li	a0,40
	call	bl_timer_delay_us
.LVL18:
	.loc 1 77 9
	.loc 1 77 15 is_stmt 0
	lbu	a0,%lo(pinDht)(s2)
	slli	s0,s0,24
	srai	s0,s0,24
	call	bl_gpio_input_get_value
.LVL19:
	sll	a5,s4,s1
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 77 12
	bne	a0,zero,.L13
	.loc 1 79 13 is_stmt 1
	.loc 1 79 15 is_stmt 0
	not	a5,a5
	and	s0,s0,a5
.L22:
	.loc 1 83 15
	andi	s0,s0,0xff
.LVL20:
.L15:
	.loc 1 87 50 is_stmt 1 discriminator 1
	.loc 1 87 17 is_stmt 0 discriminator 1
	lbu	a0,%lo(pinDht)(s2)
	call	bl_gpio_input_get_value
.LVL21:
	.loc 1 87 15 discriminator 1
	bne	a0,zero,.L15
.LVL22:
	addi	s1,s1,-1
.LVL23:
	.loc 1 68 5 discriminator 2
	bne	s1,s3,.L12
	.loc 1 89 5 is_stmt 1
	.loc 1 90 1 is_stmt 0
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL24:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L13:
	.cfi_restore_state
	.loc 1 83 13 is_stmt 1
	.loc 1 83 15 is_stmt 0
	or	s0,a5,s0
	j	.L22
	.cfi_endproc
.LFE12:
	.size	DHT_Read, .-DHT_Read
	.section	.text.DHT_GetData,"ax",@progbits
	.align	1
	.globl	DHT_GetData
	.type	DHT_GetData, @function
DHT_GetData:
.LFB13:
	.loc 1 94 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 95 5
	.loc 1 97 5
	.loc 1 94 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 94 1
	mv	s1,a0
	.loc 1 97 5
	call	DHT_Start
.LVL27:
	.loc 1 99 5 is_stmt 1
	call	DHT_Check_Response
.LVL28:
	.loc 1 102 5
	.loc 1 102 16 is_stmt 0
	call	DHT_Read
.LVL29:
	mv	s2,a0
.LVL30:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 16 is_stmt 0
	call	DHT_Read
.LVL31:
	mv	s0,a0
.LVL32:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 18 is_stmt 0
	call	DHT_Read
.LVL33:
	mv	s3,a0
.LVL34:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 18 is_stmt 0
	call	DHT_Read
.LVL35:
	mv	s4,a0
.LVL36:
	.loc 1 106 5 is_stmt 1
	.loc 1 106 11 is_stmt 0
	call	DHT_Read
.LVL37:
	.loc 1 109 5 is_stmt 1
	.loc 1 111 5
	.loc 1 109 41 is_stmt 0
	add	a5,s2,s0
	.loc 1 109 52
	add	a5,a5,s3
	.loc 1 109 65
	add	a5,a5,s4
	.loc 1 111 8
	bne	a0,a5,.L23
.LBB16:
	.loc 1 114 9 is_stmt 1
	.loc 1 114 31 is_stmt 0
	fcvt.s.wu	fa5,s3
	fsw	fa5,0(s1)
	.loc 1 115 9 is_stmt 1
	.loc 1 115 28 is_stmt 0
	fcvt.s.wu	fa5,s2
	fsw	fa5,4(s1)
	.loc 1 117 9 is_stmt 1
	.loc 1 117 38 is_stmt 0
	call	rand
.LVL38:
	mv	s0,a0
.LVL39:
	.loc 1 118 9 is_stmt 1
	.loc 1 118 37 is_stmt 0
	call	rand
.LVL40:
	.loc 1 121 9 is_stmt 1
	.loc 1 117 45 is_stmt 0
	li	a5,21
	rem	a4,s0,a5
	.loc 1 121 31
	flw	fa3,0(s1)
	.loc 1 118 44
	rem	a0,a0,a5
.LVL41:
	.loc 1 117 51
	addi	a4,a4,-10
	.loc 1 117 57
	fcvt.s.w	fa4,a4
	.loc 1 117 15
	lui	a4,%hi(.LC0)
	flw	fa2,%lo(.LC0)(a4)
	fdiv.s	fa4,fa4,fa2
.LVL42:
	.loc 1 121 31
	fadd.s	fa4,fa3,fa4
.LVL43:
	fsw	fa4,0(s1)
	.loc 1 122 9 is_stmt 1
	.loc 1 122 28 is_stmt 0
	flw	fa4,4(s1)
	.loc 1 118 50
	addi	a0,a0,-10
	.loc 1 118 56
	fcvt.s.w	fa5,a0
	.loc 1 118 15
	fdiv.s	fa5,fa5,fa2
.LVL44:
	.loc 1 122 28
	fadd.s	fa5,fa4,fa5
.LVL45:
	fsw	fa5,4(s1)
.LVL46:
.L23:
.LBE16:
	.loc 1 124 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL47:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL48:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL49:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL50:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	DHT_GetData, .-DHT_GetData
	.section	.text.GPIO_Init,"ax",@progbits
	.align	1
	.globl	GPIO_Init
	.type	GPIO_Init, @function
GPIO_Init:
.LFB14:
	.file 2 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
	.loc 2 29 22 is_stmt 1
	.cfi_startproc
	.loc 2 30 5
	.loc 2 29 22 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 2 30 5
	li	a2,0
	li	a1,0
	li	a0,3
	.loc 2 29 22
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 2 30 5
	call	bl_gpio_enable_output
.LVL51:
	.loc 2 31 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,11
	call	bl_gpio_enable_output
.LVL52:
	.loc 2 32 5
	li	a2,0
	li	a1,0
	li	a0,14
	call	bl_gpio_enable_output
.LVL53:
	.loc 2 33 5
	.loc 2 34 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 2 33 5
	li	a2,0
	.loc 2 34 1
	.loc 2 33 5
	li	a1,0
	li	a0,12
	.loc 2 34 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 33 5
	tail	bl_gpio_enable_input
.LVL54:
	.cfi_endproc
.LFE14:
	.size	GPIO_Init, .-GPIO_Init
	.section	.text.LED_SetState,"ax",@progbits
	.align	1
	.globl	LED_SetState
	.type	LED_SetState, @function
LED_SetState:
.LFB15:
	.loc 2 37 47 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 2 38 5
	tail	bl_gpio_output_set
.LVL56:
	.cfi_endproc
.LFE15:
	.size	LED_SetState, .-LED_SetState
	.section	.text.LED_Blink,"ax",@progbits
	.align	1
	.globl	LED_Blink
	.type	LED_Blink, @function
LED_Blink:
.LFB16:
	.loc 2 42 48
	.cfi_startproc
.LVL57:
	.loc 2 43 5
	.loc 2 42 48 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a1
.LBB17:
.LBB18:
	.loc 2 38 5
	li	a1,1
.LVL58:
.LBE18:
.LBE17:
	.loc 2 42 48
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 2 42 48
	mv	s1,a0
.LVL59:
.LBB20:
.LBB19:
	.loc 2 38 5 is_stmt 1
	call	bl_gpio_output_set
.LVL60:
.LBE19:
.LBE20:
	.loc 2 44 5
	mv	a0,s0
	call	bl_timer_delay_us
.LVL61:
	.loc 2 45 5
.LBB21:
.LBB22:
	.loc 2 38 5
	mv	a0,s1
	li	a1,0
	call	bl_gpio_output_set
.LVL62:
.LBE22:
.LBE21:
	.loc 2 46 5
	mv	a0,s0
	.loc 2 47 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL63:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 46 5
	tail	bl_timer_delay_us
.LVL64:
	.cfi_endproc
.LFE16:
	.size	LED_Blink, .-LED_Blink
	.section	.text.Clap_Detected,"ax",@progbits
	.align	1
	.globl	Clap_Detected
	.type	Clap_Detected, @function
Clap_Detected:
.LFB17:
	.loc 2 50 25 is_stmt 1
	.cfi_startproc
	.loc 2 51 5
	.loc 2 52 5
	.loc 2 50 25 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 2 52 22
	li	a0,12
	.loc 2 50 25
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 2 52 22
	call	bl_gpio_input_get_value
.LVL65:
	.loc 2 54 5 is_stmt 1
	.loc 2 54 20 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 2 54 8
	lw	a3,%lo(.LANCHOR0)(a5)
	addi	a4,a5,%lo(.LANCHOR0)
	li	a5,0
	bne	a3,zero,.L32
	.loc 2 54 25 discriminator 1
	addi	a5,a0,-1
	seqz	a5,a5
.L32:
	sw	a0,0(a4)
	.loc 2 60 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
.LVL66:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	Clap_Detected, .-Clap_Detected
	.globl	__extendsfdf2
	.section	.text.Task_TempHumidity,"ax",@progbits
	.align	1
	.globl	Task_TempHumidity
	.type	Task_TempHumidity, @function
Task_TempHumidity:
.LFB18:
	.loc 2 63 30 is_stmt 1
	.cfi_startproc
	.loc 2 64 5
	.loc 2 63 30 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	.cfi_offset 8, -8
	.loc 2 64 5
	lui	s0,%hi(.LC1)
	addi	a0,s0,%lo(.LC1)
	.loc 2 63 30
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	fsw	fs1,40(sp)
	fsw	fs2,36(sp)
	fsw	fs3,32(sp)
	fsw	fs4,28(sp)
	sw	s3,60(sp)
	fsw	fs0,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 41, -40
	.cfi_offset 50, -44
	.cfi_offset 51, -48
	.cfi_offset 52, -52
	.cfi_offset 19, -20
	.cfi_offset 40, -36
	.loc 2 64 5
	call	printf
.LVL67:
	.loc 2 65 5 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL68:
	.loc 2 66 5
	addi	a0,s0,%lo(.LC1)
	call	printf
.LVL69:
	.loc 2 67 5
.LBB23:
	.loc 2 67 10
	.loc 2 74 16 is_stmt 0
	lui	a5,%hi(.LC4)
	flw	fs2,%lo(.LC4)(a5)
	lui	a5,%hi(.LC0)
	.loc 2 80 16
	flw	fs1,%lo(.LC0)(a5)
	.loc 2 80 31
	lui	a5,%hi(.LC5)
	flw	fs3,%lo(.LC5)(a5)
	.loc 2 74 34
	fmv.s	fs4,fs1
.LBE23:
	.loc 2 66 5
	li	s1,5
.LBB28:
	.loc 2 68 9
	lui	s2,%hi(DHT11_Data)
.LVL70:
.L46:
	.loc 2 68 9 is_stmt 1
	addi	a0,s2,%lo(DHT11_Data)
	call	DHT_GetData
.LVL71:
	.loc 2 69 9
	.loc 2 69 23 is_stmt 0
	addi	a5,s2,%lo(DHT11_Data)
	flw	fs0,0(a5)
	.loc 2 69 12
	fmv.s.x	fa5,zero
	feq.s	a4,fs0,fa5
	bne	a4,zero,.L37
	.loc 2 69 49 discriminator 1
	flw	fa0,4(a5)
	.loc 2 69 36 discriminator 1
	feq.s	a5,fa0,fa5
	bne	a5,zero,.L37
	.loc 2 70 13 is_stmt 1
	.loc 2 70 25 is_stmt 0
	lui	s3,%hi(Temperature)
	.loc 2 71 22
	lui	s0,%hi(Humidity)
	fsw	fa0,%lo(Humidity)(s0)
	.loc 2 70 25
	fsw	fs0,%lo(Temperature)(s3)
	.loc 2 71 13 is_stmt 1
	.loc 2 72 13
	call	__extendsfdf2
.LVL72:
	fmv.s	fa0,fs0
	sw	a0,8(sp)
	sw	a1,12(sp)
	call	__extendsfdf2
.LVL73:
	lw	a5,12(sp)
	lw	a4,8(sp)
	mv	a2,a0
	lui	a0,%hi(.LC3)
	mv	a3,a1
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL74:
	.loc 2 74 13
	.loc 2 74 29 is_stmt 0
	flw	fa5,%lo(Temperature)(s3)
	.loc 2 74 16
	fgt.s	a5,fa5,fs2
	bne	a5,zero,.L38
	.loc 2 74 34 discriminator 1
	flt.s	a5,fa5,fs4
	beq	a5,zero,.L48
.L38:
	.loc 2 75 17 is_stmt 1
	li	a1,499712
	addi	a1,a1,288
	li	a0,3
	call	LED_Blink
.LVL75:
.L41:
	.loc 2 80 13
	.loc 2 80 26 is_stmt 0
	flw	fa5,%lo(Humidity)(s0)
	.loc 2 80 16
	flt.s	a5,fa5,fs1
	bne	a5,zero,.L42
	.loc 2 80 31 discriminator 1
	fgt.s	a5,fa5,fs3
	beq	a5,zero,.L49
.L42:
	.loc 2 81 17 is_stmt 1
	li	a1,499712
	addi	a1,a1,288
	li	a0,11
	call	LED_Blink
.LVL76:
.L45:
	.loc 2 90 9 discriminator 2
	li	a0,2998272
	addi	a0,a0,1728
	addi	s1,s1,-1
.LVL77:
	call	bl_timer_delay_us
.LVL78:
	.loc 2 67 5 is_stmt 0 discriminator 2
	bne	s1,zero,.L46
.LBE28:
	.loc 2 92 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	flw	fs0,44(sp)
	.cfi_restore 40
	flw	fs1,40(sp)
	.cfi_restore 41
	flw	fs2,36(sp)
	.cfi_restore 50
	flw	fs3,32(sp)
	.cfi_restore 51
	flw	fs4,28(sp)
	.cfi_restore 52
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L48:
	.cfi_restore_state
.LBB29:
	.loc 2 77 17 is_stmt 1
.LBB24:
.LBB25:
	.loc 2 38 5
	li	a1,0
	li	a0,3
	call	bl_gpio_output_set
.LVL80:
	j	.L41
.LVL81:
.L49:
.LBE25:
.LBE24:
	.loc 2 84 17
.LBB26:
.LBB27:
	.loc 2 38 5
	li	a1,0
	li	a0,11
	call	bl_gpio_output_set
.LVL82:
	j	.L45
.LVL83:
.L37:
.LBE27:
.LBE26:
	.loc 2 88 13
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL84:
	j	.L45
.LBE29:
	.cfi_endproc
.LFE18:
	.size	Task_TempHumidity, .-Task_TempHumidity
	.section	.text.Task_ClapDetection,"ax",@progbits
	.align	1
	.globl	Task_ClapDetection
	.type	Task_ClapDetection, @function
Task_ClapDetection:
.LFB19:
	.loc 2 95 31
	.cfi_startproc
	.loc 2 96 5
	.loc 2 95 31 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 2 96 5
	lui	a0,%hi(.LC7)
	.loc 2 95 31
	sw	s1,20(sp)
	.loc 2 96 5
	addi	a0,a0,%lo(.LC7)
	.cfi_offset 9, -12
.LBB30:
	.loc 2 104 9
	li	s1,200704
.LBE30:
	.loc 2 95 31
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 2 96 5
	li	s0,10
	call	printf
.LVL85:
	.loc 2 97 5 is_stmt 1
.LBB35:
	.loc 2 97 10
	.loc 2 100 30 is_stmt 0
	lui	s2,%hi(.LANCHOR1)
	.loc 2 102 13
	lui	s3,%hi(.LC8)
	.loc 2 104 9
	addi	s1,s1,-704
.LVL86:
.L53:
	.loc 2 98 9 is_stmt 1
	.loc 2 98 13 is_stmt 0
	call	Clap_Detected
.LVL87:
	.loc 2 98 12
	beq	a0,zero,.L52
	.loc 2 100 13 is_stmt 1
	.loc 2 100 30 is_stmt 0
	addi	a5,s2,%lo(.LANCHOR1)
	lbu	a1,0(a5)
.LBB31:
.LBB32:
	.loc 2 38 5
	li	a0,14
.LBE32:
.LBE31:
	.loc 2 100 30
	seqz	a1,a1
	.loc 2 100 28
	sb	a1,0(a5)
	.loc 2 101 13 is_stmt 1
.LVL88:
.LBB34:
.LBB33:
	.loc 2 38 5
	call	bl_gpio_output_set
.LVL89:
.LBE33:
.LBE34:
	.loc 2 102 13
	addi	a0,s3,%lo(.LC8)
	call	printf
.LVL90:
.L52:
	.loc 2 104 9 discriminator 2
	mv	a0,s1
	addi	s0,s0,-1
.LVL91:
	call	bl_timer_delay_us
.LVL92:
	.loc 2 97 5 is_stmt 0 discriminator 2
	bne	s0,zero,.L53
.LBE35:
	.loc 2 106 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	Task_ClapDetection, .-Task_ClapDetection
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB20:
	.loc 2 108 20 is_stmt 1
	.cfi_startproc
	.loc 2 110 5
	li	a5,1998848
	.loc 2 108 20 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 2 110 5
	addi	a5,a5,1152
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	.loc 2 108 20
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 2 110 5
	call	bl_uart_init
.LVL93:
	.loc 2 111 5 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL94:
	.loc 2 112 5
	call	GPIO_Init
.LVL95:
	.loc 2 113 5
.LBB36:
.LBB37:
	.loc 1 15 5
	.loc 1 15 12 is_stmt 0
	lui	a5,%hi(pinDht)
	li	a4,4
	sb	a4,%lo(pinDht)(a5)
.L60:
.LBE37:
.LBE36:
	.loc 2 116 5 is_stmt 1 discriminator 1
	.loc 2 117 9 discriminator 1
	call	Task_TempHumidity
.LVL96:
	.loc 2 118 9 discriminator 1
	call	Task_ClapDetection
.LVL97:
	j	.L60
	.cfi_endproc
.LFE20:
	.size	bfl_main, .-bfl_main
	.globl	led_clap_state
	.comm	Humidity,4,4
	.comm	Temperature,4,4
	.comm	DHT11_Data,8,4
	.comm	pinDht,1,1
	.section	.rodata.DHT_GetData.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1101004800
	.section	.rodata.Task_ClapDetection.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"Starting Clap Detection Task...\r\n"
	.zero	2
.LC8:
	.string	"Clap detected! LED toggled.\r\n"
	.section	.rodata.Task_TempHumidity.cst4,"aM",@progbits,4
	.align	2
.LC4:
	.word	1103626240
.LC5:
	.word	1109393408
	.section	.rodata.Task_TempHumidity.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"***************************************\r\n"
	.zero	2
.LC2:
	.string	"* The Current Room Conditions are:    *\r\n"
	.zero	2
.LC3:
	.string	"Temperature: %.2f\302\260C, Humidity: %.2f%%\r\n"
	.zero	3
.LC6:
	.string	"Failed to read DHT sensor.\n"
	.section	.rodata.bfl_main.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"Combined Program Starting...\r\n"
	.section	.sbss.led_clap_state,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	led_clap_state, @object
	.size	led_clap_state, 1
led_clap_state:
	.zero	1
	.section	.sbss.prev_state.3909,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	prev_state.3909, @object
	.size	prev_state.3909, 4
prev_state.3909:
	.zero	4
	.text
.Letext0:
	.file 3 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 8 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 9 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 10 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 11 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/dht_lib.h"
	.file 12 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 13 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 14 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 15 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 16 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11d9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6e
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x48
	.byte	0x6
	.4byte	.LASF122
	.byte	0x4
	.byte	0x54
	.byte	0x13
	.4byte	0x98
	.byte	0x7
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x74
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x2c
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.4byte	0x103
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.4byte	0xb0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa8
	.byte	0x13
	.4byte	0x103
	.byte	0
	.byte	0xa
	.4byte	0x6e
	.4byte	0x113
	.byte	0xb
	.4byte	0x33
	.byte	0x3
	.byte	0
	.byte	0xc
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x137
	.byte	0xd
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa4
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xd
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.4byte	0xe1
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0xaa
	.byte	0x3
	.4byte	0x113
	.byte	0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x88
	.byte	0x4
	.4byte	.LASF24
	.byte	0x8
	.byte	0xc
	.byte	0xd
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x23
	.byte	0x1b
	.4byte	0x14f
	.byte	0xe
	.4byte	.LASF30
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.byte	0x8
	.4byte	0x1c1
	.byte	0xd
	.4byte	.LASF26
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x1c1
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x7
	.byte	0x37
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.byte	0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.byte	0xd
	.4byte	.LASF29
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x1c7
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x167
	.byte	0xa
	.4byte	0x143
	.4byte	0x1d7
	.byte	0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x24
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x25a
	.byte	0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xd
	.4byte	.LASF34
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.byte	0xd
	.4byte	.LASF36
	.byte	0x7
	.byte	0x42
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0xd
	.4byte	.LASF37
	.byte	0x7
	.byte	0x43
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.byte	0xd
	.4byte	.LASF38
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x45
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.4byte	0x29f
	.byte	0xd
	.4byte	.LASF42
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x29f
	.byte	0
	.byte	0xd
	.4byte	.LASF43
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x29f
	.byte	0x80
	.byte	0x12
	.4byte	.LASF44
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x143
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x56
	.byte	0xa
	.4byte	0x143
	.2byte	0x104
	.byte	0
	.byte	0xa
	.4byte	0x96
	.4byte	0x2af
	.byte	0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.4byte	0x2f2
	.byte	0xd
	.4byte	.LASF26
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x2f2
	.byte	0
	.byte	0xd
	.4byte	.LASF47
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x2f8
	.byte	0x8
	.byte	0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x67
	.byte	0x1e
	.4byte	0x25a
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2af
	.byte	0xa
	.4byte	0x308
	.4byte	0x308
	.byte	0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x30e
	.byte	0x13
	.byte	0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.byte	0x8
	.4byte	0x337
	.byte	0xd
	.4byte	.LASF50
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x337
	.byte	0
	.byte	0xd
	.4byte	.LASF51
	.byte	0x7
	.byte	0x7c
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6e
	.byte	0xe
	.4byte	.LASF52
	.byte	0x68
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x480
	.byte	0xf
	.string	"_p"
	.byte	0x7
	.byte	0xbb
	.byte	0x12
	.4byte	0x337
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x7
	.byte	0xbd
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0xbe
	.byte	0x9
	.4byte	0x41
	.byte	0xc
	.byte	0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x41
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x30f
	.byte	0x10
	.byte	0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xc1
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc8
	.byte	0xa
	.4byte	0x96
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0xca
	.byte	0xe
	.4byte	0x604
	.byte	0x20
	.byte	0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0xcc
	.byte	0xe
	.4byte	0x62e
	.byte	0x24
	.byte	0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0xcf
	.byte	0xd
	.4byte	0x652
	.byte	0x28
	.byte	0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0x66c
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x30f
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x7
	.byte	0xd4
	.byte	0x12
	.4byte	0x337
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x7
	.byte	0xd5
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF61
	.byte	0x7
	.byte	0xd8
	.byte	0x11
	.4byte	0x672
	.byte	0x40
	.byte	0xd
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd9
	.byte	0x11
	.4byte	0x682
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x30f
	.byte	0x44
	.byte	0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0xdf
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.byte	0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0xe0
	.byte	0xa
	.4byte	0xbd
	.byte	0x50
	.byte	0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0xe3
	.byte	0x12
	.4byte	0x49e
	.byte	0x54
	.byte	0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0xe7
	.byte	0xc
	.4byte	0x15b
	.byte	0x58
	.byte	0xd
	.4byte	.LASF67
	.byte	0x7
	.byte	0xe9
	.byte	0xe
	.4byte	0x137
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xd5
	.4byte	0x49e
	.byte	0x15
	.4byte	0x49e
	.byte	0x15
	.4byte	0x96
	.byte	0x15
	.4byte	0x5f2
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x49e
	.byte	0x17
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x7
	.2byte	0x265
	.byte	0x8
	.4byte	0x5f2
	.byte	0x18
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x267
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6de
	.byte	0x4
	.byte	0x18
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6de
	.byte	0x8
	.byte	0x18
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6de
	.byte	0xc
	.byte	0x18
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x26e
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0x18
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8de
	.byte	0x14
	.byte	0x18
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.byte	0x18
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x273
	.byte	0x16
	.4byte	0x8f3
	.byte	0x34
	.byte	0x18
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x275
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.byte	0x18
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x277
	.byte	0xa
	.4byte	0x904
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1c1
	.byte	0x40
	.byte	0x18
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x27b
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.byte	0x18
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1c1
	.byte	0x48
	.byte	0x18
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x27d
	.byte	0x14
	.4byte	0x90a
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x280
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.byte	0x18
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x281
	.byte	0x9
	.4byte	0x5f2
	.byte	0x54
	.byte	0x18
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8b9
	.byte	0x58
	.byte	0x19
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2f2
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2af
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x91b
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x69f
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x927
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5f8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.byte	0x16
	.4byte	0x5f8
	.byte	0x10
	.byte	0x4
	.4byte	0x480
	.byte	0x14
	.4byte	0xd5
	.4byte	0x628
	.byte	0x15
	.4byte	0x49e
	.byte	0x15
	.4byte	0x96
	.byte	0x15
	.4byte	0x628
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5ff
	.byte	0x10
	.byte	0x4
	.4byte	0x60a
	.byte	0x14
	.4byte	0xc9
	.4byte	0x652
	.byte	0x15
	.4byte	0x49e
	.byte	0x15
	.4byte	0x96
	.byte	0x15
	.4byte	0xc9
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x634
	.byte	0x14
	.4byte	0x2c
	.4byte	0x66c
	.byte	0x15
	.4byte	0x49e
	.byte	0x15
	.4byte	0x96
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x658
	.byte	0xa
	.4byte	0x6e
	.4byte	0x682
	.byte	0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	0x6e
	.4byte	0x692
	.byte	0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x124
	.byte	0x18
	.4byte	0x33d
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x7
	.2byte	0x128
	.byte	0x8
	.4byte	0x6d8
	.byte	0x18
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6d8
	.byte	0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0x18
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6de
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x69f
	.byte	0x10
	.byte	0x4
	.4byte	0x692
	.byte	0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x7
	.2byte	0x144
	.byte	0x8
	.4byte	0x71d
	.byte	0x18
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x145
	.byte	0x12
	.4byte	0x71d
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x146
	.byte	0x12
	.4byte	0x71d
	.byte	0x6
	.byte	0x18
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x147
	.byte	0x12
	.4byte	0x75
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	0x75
	.4byte	0x72d
	.byte	0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x7
	.2byte	0x285
	.byte	0x7
	.4byte	0x842
	.byte	0x18
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x287
	.byte	0x18
	.4byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x288
	.byte	0x12
	.4byte	0x5f2
	.byte	0x4
	.byte	0x18
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x289
	.byte	0x10
	.4byte	0x842
	.byte	0x8
	.byte	0x18
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1d7
	.byte	0x24
	.byte	0x18
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x28b
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.byte	0x18
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x8f
	.byte	0x50
	.byte	0x18
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6e4
	.byte	0x58
	.byte	0x18
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x28e
	.byte	0x16
	.4byte	0x137
	.byte	0x68
	.byte	0x18
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x28f
	.byte	0x16
	.4byte	0x137
	.byte	0x70
	.byte	0x18
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x290
	.byte	0x16
	.4byte	0x137
	.byte	0x78
	.byte	0x18
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x291
	.byte	0x10
	.4byte	0x852
	.byte	0x80
	.byte	0x18
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x292
	.byte	0x10
	.4byte	0x862
	.byte	0x88
	.byte	0x18
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x293
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x294
	.byte	0x16
	.4byte	0x137
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x295
	.byte	0x16
	.4byte	0x137
	.byte	0xac
	.byte	0x18
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x296
	.byte	0x16
	.4byte	0x137
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x297
	.byte	0x16
	.4byte	0x137
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x298
	.byte	0x16
	.4byte	0x137
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x299
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.byte	0xa
	.4byte	0x5f8
	.4byte	0x852
	.byte	0xb
	.4byte	0x33
	.byte	0x19
	.byte	0
	.byte	0xa
	.4byte	0x5f8
	.4byte	0x862
	.byte	0xb
	.4byte	0x33
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0x5f8
	.4byte	0x872
	.byte	0xb
	.4byte	0x33
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x29e
	.byte	0x7
	.4byte	0x899
	.byte	0x18
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x899
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8a9
	.byte	0x78
	.byte	0
	.byte	0xa
	.4byte	0x337
	.4byte	0x8a9
	.byte	0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.byte	0xa
	.4byte	0x33
	.4byte	0x8b9
	.byte	0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x7
	.2byte	0x283
	.byte	0x3
	.4byte	0x8de
	.byte	0x1d
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x29a
	.byte	0xb
	.4byte	0x72d
	.byte	0x1d
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x872
	.byte	0
	.byte	0xa
	.4byte	0x5f8
	.4byte	0x8ee
	.byte	0xb
	.4byte	0x33
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF172
	.byte	0x10
	.byte	0x4
	.4byte	0x8ee
	.byte	0x1f
	.4byte	0x904
	.byte	0x15
	.4byte	0x49e
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8f9
	.byte	0x10
	.byte	0x4
	.4byte	0x1c1
	.byte	0x1f
	.4byte	0x91b
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x921
	.byte	0x10
	.byte	0x4
	.4byte	0x910
	.byte	0xa
	.4byte	0x692
	.4byte	0x937
	.byte	0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x333
	.byte	0x17
	.4byte	0x49e
	.byte	0x20
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4a4
	.byte	0x6
	.4byte	.LASF125
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0x7c
	.byte	0x4
	.4byte	.LASF126
	.byte	0xa
	.byte	0x7c
	.byte	0xf
	.4byte	0x30e
	.byte	0xa
	.4byte	0x974
	.4byte	0x974
	.byte	0x21
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x97a
	.byte	0x10
	.byte	0x4
	.4byte	0x95d
	.byte	0x6
	.4byte	.LASF127
	.byte	0xa
	.byte	0x84
	.byte	0x1c
	.4byte	0x969
	.byte	0xc
	.byte	0x8
	.byte	0xb
	.byte	0x5
	.byte	0x9
	.4byte	0x9b0
	.byte	0xd
	.4byte	.LASF128
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0xd
	.4byte	.LASF129
	.byte	0xb
	.byte	0x8
	.byte	0x8
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF130
	.byte	0xb
	.byte	0x9
	.byte	0x2
	.4byte	0x98c
	.byte	0x6
	.4byte	.LASF131
	.byte	0xc
	.byte	0x67
	.byte	0xe
	.4byte	0x5f2
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x62
	.byte	0x5
	.byte	0x3
	.4byte	pinDht
	.byte	0x22
	.4byte	.LASF133
	.byte	0x2
	.byte	0x18
	.byte	0x11
	.4byte	0x9b0
	.byte	0x5
	.byte	0x3
	.4byte	DHT11_Data
	.byte	0x22
	.4byte	.LASF128
	.byte	0x2
	.byte	0x19
	.byte	0x7
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	Temperature
	.byte	0x22
	.4byte	.LASF129
	.byte	0x2
	.byte	0x19
	.byte	0x14
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	Humidity
	.byte	0x22
	.4byte	.LASF134
	.byte	0x2
	.byte	0x1a
	.byte	0x9
	.4byte	0x62
	.byte	0x5
	.byte	0x3
	.4byte	led_clap_state
	.byte	0x23
	.4byte	.LASF137
	.byte	0x2
	.byte	0x6c
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xabc
	.byte	0x24
	.4byte	0x1118
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x2
	.byte	0x71
	.byte	0x5
	.4byte	0xa57
	.byte	0x25
	.4byte	0x1125
	.byte	0x4
	.byte	0
	.byte	0x26
	.4byte	.LVL93
	.4byte	0x117c
	.4byte	0xa89
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.byte	0x26
	.4byte	.LVL94
	.4byte	0x1188
	.4byte	0xaa0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x28
	.4byte	.LVL95
	.4byte	0xe20
	.byte	0x28
	.4byte	.LVL96
	.4byte	0xb64
	.byte	0x28
	.4byte	.LVL97
	.4byte	0xabc
	.byte	0
	.byte	0x29
	.4byte	.LASF135
	.byte	0x2
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xb64
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0xb50
	.byte	0x2b
	.string	"i"
	.byte	0x2
	.byte	0x61
	.byte	0xe
	.4byte	0x2c
	.4byte	.LLST26
	.byte	0x2c
	.4byte	0xdfa
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x2
	.byte	0x65
	.byte	0xd
	.4byte	0xb1f
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST27
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST28
	.byte	0x2e
	.4byte	.LVL89
	.4byte	0x1194
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL87
	.4byte	0xcda
	.byte	0x26
	.4byte	.LVL90
	.4byte	0x1188
	.4byte	0xb3f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x2e
	.4byte	.LVL92
	.4byte	0x11a0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL85
	.4byte	0x1188
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF136
	.byte	0x2
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xcda
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xc98
	.byte	0x2b
	.string	"i"
	.byte	0x2
	.byte	0x43
	.byte	0xe
	.4byte	0x2c
	.4byte	.LLST21
	.byte	0x24
	.4byte	0xdfa
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x2
	.byte	0x4d
	.byte	0x11
	.4byte	0xbcc
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST22
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST23
	.byte	0x2e
	.4byte	.LVL80
	.4byte	0x1194
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0xdfa
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x2
	.byte	0x54
	.byte	0x11
	.4byte	0xc07
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST24
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST25
	.byte	0x2e
	.4byte	.LVL82
	.4byte	0x1194
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL71
	.4byte	0xea7
	.4byte	0xc1e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	DHT11_Data
	.byte	0
	.byte	0x26
	.4byte	.LVL74
	.4byte	0x1188
	.4byte	0xc35
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL75
	.4byte	0xd26
	.4byte	0xc51
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x7a120
	.byte	0
	.byte	0x26
	.4byte	.LVL76
	.4byte	0xd26
	.4byte	0xc6d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x7a120
	.byte	0
	.byte	0x26
	.4byte	.LVL78
	.4byte	0x11a0
	.4byte	0xc84
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xc
	.4byte	0x2dc6c0
	.byte	0
	.byte	0x2e
	.4byte	.LVL84
	.4byte	0x1188
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL67
	.4byte	0x1188
	.4byte	0xcaf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x26
	.4byte	.LVL68
	.4byte	0x1188
	.4byte	0xcc6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL69
	.4byte	0x1188
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF138
	.byte	0x2
	.byte	0x32
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xd26
	.byte	0x30
	.4byte	.LASF139
	.byte	0x2
	.byte	0x33
	.byte	0x10
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	prev_state.3909
	.byte	0x31
	.4byte	.LASF140
	.byte	0x2
	.byte	0x34
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST20
	.byte	0x2e
	.4byte	.LVL65
	.4byte	0x11ac
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF141
	.byte	0x2
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xdfa
	.byte	0x32
	.string	"pin"
	.byte	0x2
	.byte	0x2a
	.byte	0x18
	.4byte	0x62
	.4byte	.LLST14
	.byte	0x33
	.4byte	.LASF142
	.byte	0x2
	.byte	0x2a
	.byte	0x26
	.4byte	0x7c
	.4byte	.LLST15
	.byte	0x2c
	.4byte	0xdfa
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x2b
	.byte	0x5
	.4byte	0xd98
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST16
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST17
	.byte	0x2e
	.4byte	.LVL60
	.4byte	0x1194
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0xdfa
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x2
	.byte	0x2d
	.byte	0x5
	.4byte	0xdd4
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST18
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST19
	.byte	0x2e
	.4byte	.LVL62
	.4byte	0x1194
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL61
	.4byte	0x11a0
	.4byte	0xde8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL64
	.4byte	0x11a0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF158
	.byte	0x2
	.byte	0x25
	.byte	0x6
	.byte	0x1
	.4byte	0xe20
	.byte	0x36
	.string	"pin"
	.byte	0x2
	.byte	0x25
	.byte	0x1b
	.4byte	0x62
	.byte	0x37
	.4byte	.LASF143
	.byte	0x2
	.byte	0x25
	.byte	0x28
	.4byte	0x62
	.byte	0
	.byte	0x29
	.4byte	.LASF144
	.byte	0x2
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xea7
	.byte	0x26
	.4byte	.LVL51
	.4byte	0x11b8
	.4byte	0xe53
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL52
	.4byte	0x11b8
	.4byte	0xe70
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL53
	.4byte	0x11b8
	.4byte	0xe8d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x34
	.4byte	.LVL54
	.4byte	0x11c4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF145
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xfad
	.byte	0x33
	.4byte	.LASF146
	.byte	0x1
	.byte	0x5d
	.byte	0x23
	.4byte	0xfad
	.4byte	.LLST3
	.byte	0x31
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST4
	.byte	0x31
	.4byte	.LASF148
	.byte	0x1
	.byte	0x5f
	.byte	0x17
	.4byte	0x62
	.4byte	.LLST5
	.byte	0x31
	.4byte	.LASF149
	.byte	0x1
	.byte	0x5f
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST6
	.byte	0x31
	.4byte	.LASF150
	.byte	0x1
	.byte	0x5f
	.byte	0x2d
	.4byte	0x62
	.4byte	.LLST7
	.byte	0x2b
	.string	"SUM"
	.byte	0x1
	.byte	0x5f
	.byte	0x39
	.4byte	0x62
	.4byte	.LLST8
	.byte	0x31
	.4byte	.LASF151
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST9
	.byte	0x38
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xf6d
	.byte	0x31
	.4byte	.LASF152
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x31
	.4byte	.LASF153
	.byte	0x1
	.byte	0x76
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST11
	.byte	0x28
	.4byte	.LVL38
	.4byte	0x11d0
	.byte	0x28
	.4byte	.LVL40
	.4byte	0x11d0
	.byte	0
	.byte	0x28
	.4byte	.LVL27
	.4byte	0x1087
	.byte	0x28
	.4byte	.LVL28
	.4byte	0x1019
	.byte	0x28
	.4byte	.LVL29
	.4byte	0xfb3
	.byte	0x28
	.4byte	.LVL31
	.4byte	0xfb3
	.byte	0x28
	.4byte	.LVL33
	.4byte	0xfb3
	.byte	0x28
	.4byte	.LVL35
	.4byte	0xfb3
	.byte	0x28
	.4byte	.LVL37
	.4byte	0xfb3
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x9b0
	.byte	0x23
	.4byte	.LASF154
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x1019
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST1
	.byte	0x2b
	.string	"j"
	.byte	0x1
	.byte	0x41
	.byte	0x14
	.4byte	0x62
	.4byte	.LLST2
	.byte	0x28
	.4byte	.LVL17
	.4byte	0x11ac
	.byte	0x26
	.4byte	.LVL18
	.4byte	0x11a0
	.4byte	0x1006
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x28
	.4byte	.LVL19
	.4byte	0x11ac
	.byte	0x28
	.4byte	.LVL21
	.4byte	0x11ac
	.byte	0
	.byte	0x23
	.4byte	.LASF155
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1087
	.byte	0x31
	.4byte	.LASF156
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST0
	.byte	0x26
	.4byte	.LVL8
	.4byte	0x11a0
	.4byte	0x1057
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x28
	.4byte	.LVL9
	.4byte	0x11ac
	.byte	0x26
	.4byte	.LVL10
	.4byte	0x11a0
	.4byte	0x1074
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x28
	.4byte	.LVL11
	.4byte	0x11ac
	.byte	0x28
	.4byte	.LVL13
	.4byte	0x11ac
	.byte	0
	.byte	0x29
	.4byte	.LASF157
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1118
	.byte	0x26
	.4byte	.LVL1
	.4byte	0x11b8
	.4byte	0x10b5
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL2
	.4byte	0x1194
	.4byte	0x10c8
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL3
	.4byte	0x11a0
	.4byte	0x10dd
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x4650
	.byte	0
	.byte	0x26
	.4byte	.LVL4
	.4byte	0x1194
	.4byte	0x10f0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL5
	.4byte	0x11a0
	.4byte	0x1103
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x34
	.4byte	.LVL6
	.4byte	0x11c4
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.byte	0x1
	.4byte	0x1132
	.byte	0x37
	.4byte	.LASF160
	.byte	0x1
	.byte	0xd
	.byte	0x17
	.4byte	0x62
	.byte	0
	.byte	0x39
	.4byte	0x1118
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x114d
	.byte	0x3a
	.4byte	0x1125
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x39
	.4byte	0xdfa
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x117c
	.byte	0x2d
	.4byte	0xe07
	.4byte	.LLST12
	.byte	0x2d
	.4byte	0xe13
	.4byte	.LLST13
	.byte	0x3b
	.4byte	.LVL56
	.4byte	0x1194
	.byte	0
	.byte	0x3c
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xd
	.byte	0x26
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xe
	.byte	0xc8
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xf
	.byte	0x2e
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x10
	.byte	0x22
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xf
	.byte	0x30
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xf
	.byte	0x2c
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xf
	.byte	0x2d
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xc
	.byte	0x90
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST26:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x5
	.byte	0x3a
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x5
	.byte	0x39
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x5
	.byte	0x35
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x5
	.byte	0x34
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE18
	.2byte	0x5
	.byte	0x35
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE17
	.2byte	0x5
	.byte	0x3
	.4byte	prev_state.3909
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1e
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x84
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x17
	.byte	0x78
	.byte	0
	.byte	0x45
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x3a
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x41a00000
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x17
	.byte	0x78
	.byte	0
	.byte	0x45
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x3a
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x41a00000
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x17
	.byte	0x7a
	.byte	0
	.byte	0x45
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x3a
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x41a00000
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x38
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF162:
	.string	"printf"
.LASF3:
	.string	"short int"
.LASF47:
	.string	"_ind"
.LASF153:
	.string	"random_offset_hum"
.LASF166:
	.string	"bl_gpio_enable_output"
.LASF42:
	.string	"_fnargs"
.LASF96:
	.string	"_rand48"
.LASF75:
	.string	"_emergency"
.LASF145:
	.string	"DHT_GetData"
.LASF87:
	.string	"_atexit0"
.LASF116:
	.string	"_wcrtomb_state"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF122:
	.string	"TrapNetCounter"
.LASF12:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF172:
	.string	"__locale_t"
.LASF144:
	.string	"GPIO_Init"
.LASF114:
	.string	"_mbrtowc_state"
.LASF109:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF15:
	.string	"_off_t"
.LASF60:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF126:
	.string	"intCallback_Type"
.LASF50:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF90:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF56:
	.string	"_cookie"
.LASF89:
	.string	"__sglue"
.LASF143:
	.string	"state"
.LASF4:
	.string	"long int"
.LASF160:
	.string	"pinDataDHT"
.LASF86:
	.string	"_new"
.LASF53:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF71:
	.string	"_stdin"
.LASF61:
	.string	"_ubuf"
.LASF81:
	.string	"_result_k"
.LASF5:
	.string	"long long int"
.LASF155:
	.string	"DHT_Check_Response"
.LASF139:
	.string	"prev_state"
.LASF136:
	.string	"Task_TempHumidity"
.LASF141:
	.string	"LED_Blink"
.LASF140:
	.string	"curr_state"
.LASF13:
	.string	"BaseType_t"
.LASF85:
	.string	"_cvtbuf"
.LASF135:
	.string	"Task_ClapDetection"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF113:
	.string	"_mbrlen_state"
.LASF48:
	.string	"_fns"
.LASF28:
	.string	"_sign"
.LASF123:
	.string	"_impure_ptr"
.LASF73:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF119:
	.string	"_nextf"
.LASF57:
	.string	"_read"
.LASF31:
	.string	"__tm"
.LASF157:
	.string	"DHT_Start"
.LASF19:
	.string	"__wchb"
.LASF125:
	.string	"SystemCoreClock"
.LASF130:
	.string	"DHT_DataTypedef"
.LASF72:
	.string	"_stdout"
.LASF84:
	.string	"_cvtlen"
.LASF11:
	.string	"long unsigned int"
.LASF154:
	.string	"DHT_Read"
.LASF54:
	.string	"_file"
.LASF168:
	.string	"rand"
.LASF133:
	.string	"DHT11_Data"
.LASF65:
	.string	"_data"
.LASF94:
	.string	"_niobs"
.LASF132:
	.string	"pinDht"
.LASF105:
	.string	"_rand_next"
.LASF152:
	.string	"random_offset_temp"
.LASF111:
	.string	"_signal_buf"
.LASF102:
	.string	"_asctime_buf"
.LASF80:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF129:
	.string	"Humidity"
.LASF146:
	.string	"DHT_Data"
.LASF158:
	.string	"LED_SetState"
.LASF66:
	.string	"_lock"
.LASF98:
	.string	"_mult"
.LASF58:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF120:
	.string	"_nmalloc"
.LASF77:
	.string	"_locale"
.LASF64:
	.string	"_offset"
.LASF29:
	.string	"_wds"
.LASF171:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF131:
	.string	"suboptarg"
.LASF78:
	.string	"__sdidinit"
.LASF104:
	.string	"_gamma_signgam"
.LASF134:
	.string	"led_clap_state"
.LASF127:
	.string	"intCbfArra"
.LASF159:
	.string	"DHT_init"
.LASF0:
	.string	"float"
.LASF83:
	.string	"_freelist"
.LASF22:
	.string	"_mbstate_t"
.LASF156:
	.string	"Response"
.LASF167:
	.string	"bl_gpio_enable_input"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF164:
	.string	"bl_timer_delay_us"
.LASF6:
	.string	"int32_t"
.LASF8:
	.string	"unsigned char"
.LASF95:
	.string	"_iobs"
.LASF165:
	.string	"bl_gpio_input_get_value"
.LASF118:
	.string	"_h_errno"
.LASF25:
	.string	"_flock_t"
.LASF39:
	.string	"__tm_yday"
.LASF161:
	.string	"bl_uart_init"
.LASF49:
	.string	"__sbuf"
.LASF68:
	.string	"_flags2"
.LASF92:
	.string	"__FILE"
.LASF52:
	.string	"__sFILE"
.LASF67:
	.string	"_mbstate"
.LASF107:
	.string	"_mblen_state"
.LASF74:
	.string	"_inc"
.LASF163:
	.string	"bl_gpio_output_set"
.LASF137:
	.string	"bfl_main"
.LASF138:
	.string	"Clap_Detected"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF27:
	.string	"_maxwds"
.LASF169:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"_seed"
.LASF14:
	.string	"wint_t"
.LASF20:
	.string	"__count"
.LASF21:
	.string	"__value"
.LASF59:
	.string	"_seek"
.LASF38:
	.string	"__tm_wday"
.LASF16:
	.string	"_fpos_t"
.LASF70:
	.string	"_errno"
.LASF91:
	.string	"char"
.LASF63:
	.string	"_blksize"
.LASF51:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF170:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
.LASF43:
	.string	"_dso_handle"
.LASF142:
	.string	"delay_us"
.LASF44:
	.string	"_fntypes"
.LASF7:
	.string	"uint8_t"
.LASF26:
	.string	"_next"
.LASF101:
	.string	"_strtok_last"
.LASF9:
	.string	"short unsigned int"
.LASF149:
	.string	"Temp_byte1"
.LASF150:
	.string	"Temp_byte2"
.LASF99:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF112:
	.string	"_getdate_err"
.LASF124:
	.string	"_global_impure_ptr"
.LASF10:
	.string	"uint32_t"
.LASF100:
	.string	"_unused_rand"
.LASF79:
	.string	"__cleanup"
.LASF128:
	.string	"Temperature"
.LASF93:
	.string	"_glue"
.LASF17:
	.string	"_ssize_t"
.LASF110:
	.string	"_l64a_buf"
.LASF88:
	.string	"_sig_func"
.LASF69:
	.string	"_reent"
.LASF62:
	.string	"_nbuf"
.LASF121:
	.string	"_unused"
.LASF40:
	.string	"__tm_isdst"
.LASF103:
	.string	"_localtime_buf"
.LASF33:
	.string	"__tm_min"
.LASF106:
	.string	"_r48"
.LASF108:
	.string	"_mbtowc_state"
.LASF82:
	.string	"_p5s"
.LASF147:
	.string	"Rh_byte1"
.LASF148:
	.string	"Rh_byte2"
.LASF151:
	.string	"is_good"
.LASF35:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
