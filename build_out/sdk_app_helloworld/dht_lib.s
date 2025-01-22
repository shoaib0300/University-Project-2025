	.file	"dht_lib.c"
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
.LFB3:
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
.LFE3:
	.size	DHT_init, .-DHT_init
	.section	.text.DHT_Start,"ax",@progbits
	.align	1
	.globl	DHT_Start
	.type	DHT_Start, @function
DHT_Start:
.LFB4:
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
.LFE4:
	.size	DHT_Start, .-DHT_Start
	.section	.text.DHT_Check_Response,"ax",@progbits
	.align	1
	.globl	DHT_Check_Response
	.type	DHT_Check_Response, @function
DHT_Check_Response:
.LFB5:
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
.LFE5:
	.size	DHT_Check_Response, .-DHT_Check_Response
	.section	.text.DHT_Read,"ax",@progbits
	.align	1
	.globl	DHT_Read
	.type	DHT_Read, @function
DHT_Read:
.LFB6:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
	.loc 1 66 5
.LVL15:
	.loc 1 69 5
	.loc 1 65 1 is_stmt 0
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
	.loc 1 65 1
	li	s1,7
	.loc 1 66 13
	li	s0,0
	.loc 1 72 18
	lui	s2,%hi(pinDht)
	li	s4,1
	.loc 1 69 5
	li	s3,-1
.LVL16:
.L12:
	.loc 1 72 51 is_stmt 1 discriminator 1
	.loc 1 72 18 is_stmt 0 discriminator 1
	lbu	a0,%lo(pinDht)(s2)
	call	bl_gpio_input_get_value
.LVL17:
	.loc 1 72 15 discriminator 1
	beq	a0,zero,.L12
	.loc 1 75 9 is_stmt 1
	li	a0,40
	call	bl_timer_delay_us
.LVL18:
	.loc 1 78 9
	.loc 1 78 15 is_stmt 0
	lbu	a0,%lo(pinDht)(s2)
	slli	s0,s0,24
	srai	s0,s0,24
	call	bl_gpio_input_get_value
.LVL19:
	sll	a5,s4,s1
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 78 12
	bne	a0,zero,.L13
	.loc 1 80 13 is_stmt 1
	.loc 1 80 15 is_stmt 0
	not	a5,a5
	and	s0,s0,a5
.L22:
	.loc 1 84 15
	andi	s0,s0,0xff
.LVL20:
.L15:
	.loc 1 88 50 is_stmt 1 discriminator 1
	.loc 1 88 17 is_stmt 0 discriminator 1
	lbu	a0,%lo(pinDht)(s2)
	call	bl_gpio_input_get_value
.LVL21:
	.loc 1 88 15 discriminator 1
	bne	a0,zero,.L15
.LVL22:
	addi	s1,s1,-1
.LVL23:
	.loc 1 69 5 discriminator 2
	bne	s1,s3,.L12
	.loc 1 90 5 is_stmt 1
	.loc 1 91 1 is_stmt 0
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
	.loc 1 84 13 is_stmt 1
	.loc 1 84 15 is_stmt 0
	or	s0,a5,s0
	j	.L22
	.cfi_endproc
.LFE6:
	.size	DHT_Read, .-DHT_Read
	.section	.text.DHT_GetData,"ax",@progbits
	.align	1
	.globl	DHT_GetData
	.type	DHT_GetData, @function
DHT_GetData:
.LFB7:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 98 5
	.loc 1 100 5
	.loc 1 97 1 is_stmt 0
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
	.loc 1 97 1
	mv	s1,a0
	.loc 1 100 5
	call	DHT_Start
.LVL27:
	.loc 1 103 5 is_stmt 1
	call	DHT_Check_Response
.LVL28:
	.loc 1 106 5
	.loc 1 106 16 is_stmt 0
	call	DHT_Read
.LVL29:
	mv	s2,a0
.LVL30:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 16 is_stmt 0
	call	DHT_Read
.LVL31:
	mv	s0,a0
.LVL32:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 18 is_stmt 0
	call	DHT_Read
.LVL33:
	mv	s3,a0
.LVL34:
	.loc 1 109 5 is_stmt 1
	.loc 1 109 18 is_stmt 0
	call	DHT_Read
.LVL35:
	mv	s4,a0
.LVL36:
	.loc 1 110 5 is_stmt 1
	.loc 1 110 11 is_stmt 0
	call	DHT_Read
.LVL37:
	.loc 1 113 5 is_stmt 1
	.loc 1 115 5
	.loc 1 113 41 is_stmt 0
	add	a5,s2,s0
	.loc 1 113 52
	add	a5,a5,s3
	.loc 1 113 65
	add	a5,a5,s4
	.loc 1 115 8
	bne	a0,a5,.L23
.LBB2:
	.loc 1 118 9 is_stmt 1
	.loc 1 118 31 is_stmt 0
	fcvt.s.wu	fa5,s3
	fsw	fa5,0(s1)
	.loc 1 119 9 is_stmt 1
	.loc 1 119 28 is_stmt 0
	fcvt.s.wu	fa5,s2
	fsw	fa5,4(s1)
	.loc 1 121 9 is_stmt 1
	.loc 1 121 38 is_stmt 0
	call	rand
.LVL38:
	mv	s0,a0
.LVL39:
	.loc 1 122 9 is_stmt 1
	.loc 1 122 37 is_stmt 0
	call	rand
.LVL40:
	.loc 1 125 9 is_stmt 1
	.loc 1 121 45 is_stmt 0
	li	a5,21
	rem	a4,s0,a5
	.loc 1 125 31
	flw	fa3,0(s1)
	.loc 1 122 44
	rem	a0,a0,a5
.LVL41:
	.loc 1 121 51
	addi	a4,a4,-10
	.loc 1 121 57
	fcvt.s.w	fa4,a4
	.loc 1 121 15
	lui	a4,%hi(.LC0)
	flw	fa2,%lo(.LC0)(a4)
	fdiv.s	fa4,fa4,fa2
.LVL42:
	.loc 1 125 31
	fadd.s	fa4,fa3,fa4
.LVL43:
	fsw	fa4,0(s1)
	.loc 1 126 9 is_stmt 1
	.loc 1 126 28 is_stmt 0
	flw	fa4,4(s1)
	.loc 1 122 50
	addi	a0,a0,-10
	.loc 1 122 56
	fcvt.s.w	fa5,a0
	.loc 1 122 15
	fdiv.s	fa5,fa5,fa2
.LVL44:
	.loc 1 126 28
	fadd.s	fa5,fa4,fa5
.LVL45:
	fsw	fa5,4(s1)
.LVL46:
.L23:
.LBE2:
	.loc 1 128 1
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
.LFE7:
	.size	DHT_GetData, .-DHT_GetData
	.comm	pinDht,1,1
	.section	.rodata.DHT_GetData.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1101004800
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/dht_lib.h"
	.file 9 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 10 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 11 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc56
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x77
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x2c
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xd1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x7e
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xd1
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0xe1
	.byte	0x9
	.4byte	0x77
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x105
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xaf
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xe1
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x62
	.byte	0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x11f
	.byte	0xd
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x191
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x191
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x197
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x137
	.byte	0x8
	.4byte	0x113
	.4byte	0x1a7
	.byte	0x9
	.4byte	0x77
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x22a
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x26f
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x26f
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x26f
	.byte	0x80
	.byte	0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x113
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x113
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x111
	.4byte	0x27f
	.byte	0x9
	.4byte	0x77
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2c2
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2c2
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2c8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x22a
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x27f
	.byte	0x8
	.4byte	0x2d8
	.4byte	0x2d8
	.byte	0x9
	.4byte	0x77
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2de
	.byte	0x12
	.byte	0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x307
	.byte	0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x307
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x46
	.byte	0xd
	.4byte	.LASF49
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x450
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x307
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x4d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x4d
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2df
	.byte	0x10
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x111
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5d4
	.byte	0x20
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x5fe
	.byte	0x24
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x622
	.byte	0x28
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x63c
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2df
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x307
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x642
	.byte	0x40
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x652
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2df
	.byte	0x44
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x8b
	.byte	0x50
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x46e
	.byte	0x54
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x12b
	.byte	0x58
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x105
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xa3
	.4byte	0x46e
	.byte	0x14
	.4byte	0x46e
	.byte	0x14
	.4byte	0x111
	.byte	0x14
	.4byte	0x5c2
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x479
	.byte	0x15
	.4byte	0x46e
	.byte	0x16
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5c2
	.byte	0x17
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6ae
	.byte	0x4
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6ae
	.byte	0x8
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6ae
	.byte	0xc
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8ae
	.byte	0x14
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8c3
	.byte	0x34
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8d4
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x191
	.byte	0x40
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x191
	.byte	0x48
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8da
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5c2
	.byte	0x54
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x889
	.byte	0x58
	.byte	0x18
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2c2
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x27f
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8eb
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x66f
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8f7
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5c8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x15
	.4byte	0x5c8
	.byte	0xf
	.byte	0x4
	.4byte	0x450
	.byte	0x13
	.4byte	0xa3
	.4byte	0x5f8
	.byte	0x14
	.4byte	0x46e
	.byte	0x14
	.4byte	0x111
	.byte	0x14
	.4byte	0x5f8
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5cf
	.byte	0xf
	.byte	0x4
	.4byte	0x5da
	.byte	0x13
	.4byte	0x97
	.4byte	0x622
	.byte	0x14
	.4byte	0x46e
	.byte	0x14
	.4byte	0x111
	.byte	0x14
	.4byte	0x97
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x604
	.byte	0x13
	.4byte	0x2c
	.4byte	0x63c
	.byte	0x14
	.4byte	0x46e
	.byte	0x14
	.4byte	0x111
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x628
	.byte	0x8
	.4byte	0x46
	.4byte	0x652
	.byte	0x9
	.4byte	0x77
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0x662
	.byte	0x9
	.4byte	0x77
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x30d
	.byte	0x19
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6a8
	.byte	0x17
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6a8
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6ae
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x66f
	.byte	0xf
	.byte	0x4
	.4byte	0x662
	.byte	0x19
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6ed
	.byte	0x17
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6ed
	.byte	0
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6ed
	.byte	0x6
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x54
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x54
	.4byte	0x6fd
	.byte	0x9
	.4byte	0x77
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x812
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x77
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5c2
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x812
	.byte	0x8
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1a7
	.byte	0x24
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x70
	.byte	0x50
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6b4
	.byte	0x58
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x105
	.byte	0x68
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x105
	.byte	0x70
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x105
	.byte	0x78
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x822
	.byte	0x80
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x832
	.byte	0x88
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x105
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x105
	.byte	0xac
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x105
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x105
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x105
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5c8
	.4byte	0x822
	.byte	0x9
	.4byte	0x77
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5c8
	.4byte	0x832
	.byte	0x9
	.4byte	0x77
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5c8
	.4byte	0x842
	.byte	0x9
	.4byte	0x77
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x869
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x869
	.byte	0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x879
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x307
	.4byte	0x879
	.byte	0x9
	.4byte	0x77
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x77
	.4byte	0x889
	.byte	0x9
	.4byte	0x77
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8ae
	.byte	0x1c
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6fd
	.byte	0x1c
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x842
	.byte	0
	.byte	0x8
	.4byte	0x5c8
	.4byte	0x8be
	.byte	0x9
	.4byte	0x77
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF151
	.byte	0xf
	.byte	0x4
	.4byte	0x8be
	.byte	0x1e
	.4byte	0x8d4
	.byte	0x14
	.4byte	0x46e
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8c9
	.byte	0xf
	.byte	0x4
	.4byte	0x191
	.byte	0x1e
	.4byte	0x8eb
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8f1
	.byte	0xf
	.byte	0x4
	.4byte	0x8e0
	.byte	0x8
	.4byte	0x662
	.4byte	0x907
	.byte	0x9
	.4byte	0x77
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x46e
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x474
	.byte	0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0xa
	.byte	0x8
	.byte	0x8
	.byte	0x5
	.byte	0x9
	.4byte	0x951
	.byte	0xb
	.4byte	.LASF122
	.byte	0x8
	.byte	0x7
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x8
	.byte	0x8
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF124
	.byte	0x8
	.byte	0x9
	.byte	0x2
	.4byte	0x92d
	.byte	0x20
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x921
	.byte	0x5
	.byte	0x3
	.4byte	pinDht
	.byte	0x21
	.4byte	.LASF126
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x5c2
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa81
	.byte	0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x60
	.byte	0x23
	.4byte	0xa81
	.4byte	.LLST3
	.byte	0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.4byte	0x921
	.4byte	.LLST4
	.byte	0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x62
	.byte	0x17
	.4byte	0x921
	.4byte	.LLST5
	.byte	0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x62
	.byte	0x21
	.4byte	0x921
	.4byte	.LLST6
	.byte	0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x62
	.byte	0x2d
	.4byte	0x921
	.4byte	.LLST7
	.byte	0x25
	.string	"SUM"
	.byte	0x1
	.byte	0x62
	.byte	0x39
	.4byte	0x921
	.4byte	.LLST8
	.byte	0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x921
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xa41
	.byte	0x24
	.4byte	.LASF132
	.byte	0x1
	.byte	0x79
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x7a
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST11
	.byte	0x27
	.4byte	.LVL38
	.4byte	0xc11
	.byte	0x27
	.4byte	.LVL40
	.4byte	0xc11
	.byte	0
	.byte	0x27
	.4byte	.LVL27
	.4byte	0xb5b
	.byte	0x27
	.4byte	.LVL28
	.4byte	0xaed
	.byte	0x27
	.4byte	.LVL29
	.4byte	0xa87
	.byte	0x27
	.4byte	.LVL31
	.4byte	0xa87
	.byte	0x27
	.4byte	.LVL33
	.4byte	0xa87
	.byte	0x27
	.4byte	.LVL35
	.4byte	0xa87
	.byte	0x27
	.4byte	.LVL37
	.4byte	0xa87
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x951
	.byte	0x28
	.4byte	.LASF134
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x921
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xaed
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	0x921
	.4byte	.LLST1
	.byte	0x25
	.string	"j"
	.byte	0x1
	.byte	0x42
	.byte	0x14
	.4byte	0x921
	.4byte	.LLST2
	.byte	0x27
	.4byte	.LVL17
	.4byte	0xc1d
	.byte	0x29
	.4byte	.LVL18
	.4byte	0xc29
	.4byte	0xada
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x27
	.4byte	.LVL19
	.4byte	0xc1d
	.byte	0x27
	.4byte	.LVL21
	.4byte	0xc1d
	.byte	0
	.byte	0x28
	.4byte	.LASF135
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x921
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5b
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x921
	.4byte	.LLST0
	.byte	0x29
	.4byte	.LVL8
	.4byte	0xc29
	.4byte	0xb2b
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x27
	.4byte	.LVL9
	.4byte	0xc1d
	.byte	0x29
	.4byte	.LVL10
	.4byte	0xc29
	.4byte	0xb48
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x27
	.4byte	.LVL11
	.4byte	0xc1d
	.byte	0x27
	.4byte	.LVL13
	.4byte	0xc1d
	.byte	0
	.byte	0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xbec
	.byte	0x29
	.4byte	.LVL1
	.4byte	0xc35
	.4byte	0xb89
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL2
	.4byte	0xc41
	.4byte	0xb9c
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL3
	.4byte	0xc29
	.4byte	0xbb1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x4650
	.byte	0
	.byte	0x29
	.4byte	.LVL4
	.4byte	0xc41
	.4byte	0xbc4
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x29
	.4byte	.LVL5
	.4byte	0xc29
	.4byte	0xbd7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x2b
	.4byte	.LVL6
	.4byte	0xc4d
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF139
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xc11
	.byte	0x2c
	.4byte	.LASF141
	.byte	0x1
	.byte	0xd
	.byte	0x17
	.4byte	0x921
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x9
	.byte	0x90
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xa
	.byte	0x30
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x22
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x2c
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.byte	0x2e
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x2d
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
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
	.4byte	.LFE7
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF48:
	.string	"_size"
.LASF133:
	.string	"random_offset_hum"
.LASF145:
	.string	"bl_gpio_enable_output"
.LASF93:
	.string	"_rand48"
.LASF72:
	.string	"_emergency"
.LASF10:
	.string	"__uint8_t"
.LASF137:
	.string	"DHT_GetData"
.LASF62:
	.string	"_data"
.LASF113:
	.string	"_wcrtomb_state"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF122:
	.string	"Temperature"
.LASF8:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF151:
	.string	"__locale_t"
.LASF111:
	.string	"_mbrtowc_state"
.LASF106:
	.string	"_wctomb_state"
.LASF29:
	.string	"__tm_sec"
.LASF7:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF130:
	.string	"Temp_byte2"
.LASF58:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF87:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF53:
	.string	"_cookie"
.LASF86:
	.string	"__sglue"
.LASF5:
	.string	"long int"
.LASF141:
	.string	"pinDataDHT"
.LASF50:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF68:
	.string	"_stdin"
.LASF60:
	.string	"_blksize"
.LASF135:
	.string	"DHT_Check_Response"
.LASF82:
	.string	"_cvtbuf"
.LASF61:
	.string	"_offset"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF45:
	.string	"_fns"
.LASF25:
	.string	"_sign"
.LASF22:
	.string	"_flock_t"
.LASF70:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF101:
	.string	"_gamma_signgam"
.LASF54:
	.string	"_read"
.LASF78:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF138:
	.string	"DHT_Start"
.LASF9:
	.string	"unsigned int"
.LASF16:
	.string	"__wchb"
.LASF124:
	.string	"DHT_DataTypedef"
.LASF69:
	.string	"_stdout"
.LASF81:
	.string	"_cvtlen"
.LASF6:
	.string	"long unsigned int"
.LASF134:
	.string	"DHT_Read"
.LASF51:
	.string	"_file"
.LASF142:
	.string	"rand"
.LASF91:
	.string	"_niobs"
.LASF4:
	.string	"short unsigned int"
.LASF84:
	.string	"_atexit0"
.LASF108:
	.string	"_signal_buf"
.LASF99:
	.string	"_asctime_buf"
.LASF77:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF123:
	.string	"Humidity"
.LASF140:
	.string	"DHT_Data"
.LASF11:
	.string	"wint_t"
.LASF63:
	.string	"_lock"
.LASF65:
	.string	"_flags2"
.LASF55:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF149:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/dht_lib.c"
.LASF21:
	.string	"_LOCK_RECURSIVE_T"
.LASF116:
	.string	"_nextf"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF126:
	.string	"suboptarg"
.LASF75:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF139:
	.string	"DHT_init"
.LASF0:
	.string	"float"
.LASF80:
	.string	"_freelist"
.LASF136:
	.string	"Response"
.LASF147:
	.string	"bl_gpio_enable_input"
.LASF150:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF144:
	.string	"bl_timer_delay_us"
.LASF2:
	.string	"unsigned char"
.LASF83:
	.string	"_new"
.LASF143:
	.string	"bl_gpio_input_get_value"
.LASF115:
	.string	"_h_errno"
.LASF3:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF117:
	.string	"_nmalloc"
.LASF92:
	.string	"_iobs"
.LASF89:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF49:
	.string	"__sFILE"
.LASF64:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF104:
	.string	"_mblen_state"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF74:
	.string	"_locale"
.LASF76:
	.string	"__cleanup"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF148:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF94:
	.string	"_seed"
.LASF17:
	.string	"__count"
.LASF18:
	.string	"__value"
.LASF56:
	.string	"_seek"
.LASF119:
	.string	"_impure_ptr"
.LASF13:
	.string	"_fpos_t"
.LASF67:
	.string	"_errno"
.LASF88:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF146:
	.string	"bl_gpio_output_set"
.LASF121:
	.string	"uint8_t"
.LASF95:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF98:
	.string	"_strtok_last"
.LASF41:
	.string	"_fntypes"
.LASF129:
	.string	"Temp_byte1"
.LASF125:
	.string	"pinDht"
.LASF96:
	.string	"_add"
.LASF20:
	.string	"__ULong"
.LASF109:
	.string	"_getdate_err"
.LASF120:
	.string	"_global_impure_ptr"
.LASF97:
	.string	"_unused_rand"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF90:
	.string	"_glue"
.LASF132:
	.string	"random_offset_temp"
.LASF14:
	.string	"_ssize_t"
.LASF107:
	.string	"_l64a_buf"
.LASF85:
	.string	"_sig_func"
.LASF66:
	.string	"_reent"
.LASF59:
	.string	"_nbuf"
.LASF118:
	.string	"_unused"
.LASF37:
	.string	"__tm_isdst"
.LASF100:
	.string	"_localtime_buf"
.LASF57:
	.string	"_close"
.LASF103:
	.string	"_r48"
.LASF105:
	.string	"_mbtowc_state"
.LASF79:
	.string	"_p5s"
.LASF127:
	.string	"Rh_byte1"
.LASF128:
	.string	"Rh_byte2"
.LASF131:
	.string	"is_good"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
