	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LED_Init,"ax",@progbits
	.align	1
	.globl	LED_Init
	.type	LED_Init, @function
LED_Init:
.LFB9:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
	.loc 1 61 1
	.cfi_startproc
	.loc 1 63 5
	.loc 1 61 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 63 5
	li	a2,0
	li	a1,0
	li	a0,3
	.loc 1 61 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 63 5
	call	bl_gpio_enable_output
.LVL0:
	.loc 1 64 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 64 5
	li	a2,0
	.loc 1 65 1
	.loc 1 64 5
	li	a1,0
	li	a0,11
	.loc 1 65 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 64 5
	tail	bl_gpio_enable_output
.LVL1:
	.cfi_endproc
.LFE9:
	.size	LED_Init, .-LED_Init
	.section	.text.LED_SetState,"ax",@progbits
	.align	1
	.globl	LED_SetState
	.type	LED_SetState, @function
LED_SetState:
.LFB10:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 71 5
	tail	bl_gpio_output_set
.LVL3:
	.cfi_endproc
.LFE10:
	.size	LED_SetState, .-LED_SetState
	.section	.text.LED_Blink,"ax",@progbits
	.align	1
	.globl	LED_Blink
	.type	LED_Blink, @function
LED_Blink:
.LFB11:
	.loc 1 76 1
	.cfi_startproc
.LVL4:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a1
.LBB10:
.LBB11:
	.loc 1 71 5
	li	a1,1
.LVL5:
.LBE11:
.LBE10:
	.loc 1 76 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 76 1
	mv	s1,a0
.LVL6:
.LBB13:
.LBB12:
	.loc 1 71 5 is_stmt 1
	call	bl_gpio_output_set
.LVL7:
.LBE12:
.LBE13:
	.loc 1 78 5
	mv	a0,s0
	call	bl_timer_delay_us
.LVL8:
	.loc 1 79 5
.LBB14:
.LBB15:
	.loc 1 71 5
	mv	a0,s1
	li	a1,0
	call	bl_gpio_output_set
.LVL9:
.LBE15:
.LBE14:
	.loc 1 80 5
	mv	a0,s0
	.loc 1 81 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 80 5
	tail	bl_timer_delay_us
.LVL11:
	.cfi_endproc
.LFE11:
	.size	LED_Blink, .-LED_Blink
	.globl	__extendsfdf2
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB12:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
	.loc 1 86 5
	li	a5,1998848
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 86 5
	addi	a5,a5,1152
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	.loc 1 84 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 87 5
	lui	s0,%hi(.LC0)
	.loc 1 84 1
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	fsw	fs1,24(sp)
	fsw	fs2,20(sp)
	fsw	fs0,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 41, -40
	.cfi_offset 50, -44
	.cfi_offset 40, -36
	.loc 1 86 5
	call	bl_uart_init
.LVL12:
	.loc 1 87 5 is_stmt 1
	addi	a0,s0,%lo(.LC0)
	call	printf
.LVL13:
	.loc 1 88 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL14:
	.loc 1 89 5
	addi	a0,s0,%lo(.LC0)
	call	printf
.LVL15:
	.loc 1 92 5
	li	a0,4
	call	DHT_init
.LVL16:
	.loc 1 93 5
	call	LED_Init
.LVL17:
	.loc 1 111 12 is_stmt 0
	lui	a5,%hi(.LC4)
	flw	fs1,%lo(.LC4)(a5)
	.loc 1 119 12
	lui	a5,%hi(.LC6)
	flw	fs2,%lo(.LC6)(a5)
	.loc 1 97 9
	lui	s0,%hi(DHT11_Data)
	lui	s1,%hi(good_rep)
	lui	s2,%hi(Temperature)
	lui	s3,%hi(Humidity)
	.loc 1 98 18
	li	s4,1
.L15:
	.loc 1 95 5 is_stmt 1
	.loc 1 97 9
	addi	a0,s0,%lo(DHT11_Data)
	call	DHT_GetData
.LVL18:
	.loc 1 98 9
	.loc 1 98 31 is_stmt 0
	addi	a5,s0,%lo(DHT11_Data)
	flw	fs0,0(a5)
	.loc 1 98 82
	fmv.s.x	fa5,zero
	feq.s	a4,fs0,fa5
	bne	a4,zero,.L7
	.loc 1 98 62 discriminator 1
	flw	fa0,4(a5)
	.loc 1 98 82 discriminator 1
	feq.s	a5,fa0,fa5
	bne	a5,zero,.L7
	.loc 1 103 22
	fsw	fa0,%lo(Humidity)(s3)
	.loc 1 98 18
	sb	s4,%lo(good_rep)(s1)
	.loc 1 100 9 is_stmt 1
	.loc 1 102 13
	.loc 1 102 25 is_stmt 0
	fsw	fs0,%lo(Temperature)(s2)
	.loc 1 103 13 is_stmt 1
	.loc 1 104 13
	call	__extendsfdf2
.LVL19:
	fmv.s	fa0,fs0
	sw	a0,8(sp)
	sw	a1,12(sp)
	call	__extendsfdf2
.LVL20:
	lw	a4,8(sp)
	lw	a5,12(sp)
	mv	a2,a0
	lui	a0,%hi(.LC2)
	mv	a3,a1
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL21:
.L8:
	.loc 1 111 9
	.loc 1 111 12 is_stmt 0
	flw	fa5,%lo(Temperature)(s2)
	fgt.s	a5,fa5,fs1
	beq	a5,zero,.L18
	.loc 1 112 13 is_stmt 1
	li	a1,499712
	li	a0,3
	addi	a1,a1,288
	call	LED_Blink
.LVL22:
	.loc 1 113 13
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL23:
.L11:
	.loc 1 119 9
	.loc 1 119 12 is_stmt 0
	flw	fa5,%lo(Humidity)(s3)
	flt.s	a5,fa5,fs2
	beq	a5,zero,.L19
	.loc 1 120 13 is_stmt 1
	li	a1,499712
	addi	a1,a1,288
	li	a0,11
	call	LED_Blink
.LVL24:
.L14:
	.loc 1 128 9
	li	a0,2998272
	addi	a0,a0,1728
	call	bl_timer_delay_us
.LVL25:
	.loc 1 97 9 is_stmt 0
	j	.L15
.L7:
	.loc 1 108 13
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	.loc 1 98 18
	sb	zero,%lo(good_rep)(s1)
	.loc 1 100 9 is_stmt 1
	.loc 1 108 13
	call	printf
.LVL26:
	j	.L8
.L18:
	.loc 1 116 13
.LVL27:
.LBB16:
.LBB17:
	.loc 1 71 5
	li	a1,0
	li	a0,3
	call	bl_gpio_output_set
.LVL28:
	j	.L11
.LVL29:
.L19:
.LBE17:
.LBE16:
	.loc 1 124 13
.LBB18:
.LBB19:
	.loc 1 71 5
	li	a1,0
	li	a0,11
	call	bl_gpio_output_set
.LVL30:
	j	.L14
.LBE19:
.LBE18:
	.cfi_endproc
.LFE12:
	.size	bfl_main, .-bfl_main
	.comm	good_rep,1,1
	.comm	Humidity,4,4
	.comm	Temperature,4,4
	.comm	DHT11_Data,8,4
	.section	.rodata.bfl_main.cst4,"aM",@progbits,4
	.align	2
.LC4:
	.word	1106247680
.LC6:
	.word	1109393408
	.section	.rodata.bfl_main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"***************************************\r\n"
	.zero	2
.LC1:
	.string	"* The Current Room Conditions are:    *\r\n"
	.zero	2
.LC2:
	.string	"DHT Sensor Reading: Temperature = %.2f\302\260C, Humidity = %.2f%%\r\n"
	.zero	1
.LC3:
	.string	"Failed to read from DHT sensor.\n"
	.zero	3
.LC5:
	.string	"Temperature exceeds threshold!\n"
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 9 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/dht_lib.h"
	.file 11 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 12 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 13 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 14 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd90
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x6
	.4byte	.LASF121
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0xb6
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xaf
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x10e
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xbb
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x10e
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x11e
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x142
	.byte	0xf
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xec
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x11e
	.byte	0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x15a
	.byte	0x10
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1cc
	.byte	0xf
	.4byte	.LASF26
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1d2
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x172
	.byte	0xc
	.4byte	0x14e
	.4byte	0x1e2
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x265
	.byte	0xf
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2aa
	.byte	0xf
	.4byte	.LASF42
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2aa
	.byte	0
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2aa
	.byte	0x80
	.byte	0x13
	.4byte	.LASF44
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x14e
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF45
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x14e
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x8f
	.4byte	0x2ba
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2fd
	.byte	0xf
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2fd
	.byte	0
	.byte	0xf
	.4byte	.LASF47
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x303
	.byte	0x8
	.byte	0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x265
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2ba
	.byte	0xc
	.4byte	0x313
	.4byte	0x313
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x319
	.byte	0x14
	.byte	0x10
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x342
	.byte	0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x342
	.byte	0
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67
	.byte	0x10
	.4byte	.LASF52
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x48b
	.byte	0x11
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x342
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x31a
	.byte	0x10
	.byte	0xf
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x603
	.byte	0x20
	.byte	0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x627
	.byte	0x24
	.byte	0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x64b
	.byte	0x28
	.byte	0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x665
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x31a
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x342
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x66b
	.byte	0x40
	.byte	0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x67b
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x31a
	.byte	0x44
	.byte	0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xc8
	.byte	0x50
	.byte	0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4a9
	.byte	0x54
	.byte	0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x166
	.byte	0x58
	.byte	0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x142
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xe0
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0x5fd
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4b4
	.byte	0x8
	.4byte	0x4a9
	.byte	0x17
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5fd
	.byte	0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x4
	.byte	0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6d7
	.byte	0x8
	.byte	0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6d7
	.byte	0xc
	.byte	0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8d7
	.byte	0x14
	.byte	0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ec
	.byte	0x34
	.byte	0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8fd
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1cc
	.byte	0x40
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1cc
	.byte	0x48
	.byte	0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x903
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5fd
	.byte	0x54
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8b2
	.byte	0x58
	.byte	0x19
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2fd
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2ba
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x914
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x698
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x920
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x7
	.byte	0x4
	.4byte	0x48b
	.byte	0x15
	.4byte	0xe0
	.4byte	0x627
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xa9
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x609
	.byte	0x15
	.4byte	0xd4
	.4byte	0x64b
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xd4
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x62d
	.byte	0x15
	.4byte	0x25
	.4byte	0x665
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x651
	.byte	0xc
	.4byte	0x67
	.4byte	0x67b
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x68b
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x348
	.byte	0x1a
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6d1
	.byte	0x18
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6d1
	.byte	0
	.byte	0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x698
	.byte	0x7
	.byte	0x4
	.4byte	0x68b
	.byte	0x1a
	.4byte	.LASF95
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x716
	.byte	0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x716
	.byte	0
	.byte	0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x716
	.byte	0x6
	.byte	0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6e
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x6e
	.4byte	0x726
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x83b
	.byte	0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5fd
	.byte	0x4
	.byte	0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x83b
	.byte	0x8
	.byte	0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1e2
	.byte	0x24
	.byte	0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x88
	.byte	0x50
	.byte	0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6dd
	.byte	0x58
	.byte	0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x142
	.byte	0x68
	.byte	0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x142
	.byte	0x70
	.byte	0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x142
	.byte	0x78
	.byte	0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x84b
	.byte	0x80
	.byte	0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x85b
	.byte	0x88
	.byte	0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x142
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x142
	.byte	0xac
	.byte	0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x142
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x142
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x142
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x84b
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x85b
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x86b
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x892
	.byte	0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x892
	.byte	0
	.byte	0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8a2
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x342
	.4byte	0x8a2
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x8b2
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8d7
	.byte	0x1d
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x726
	.byte	0x1d
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x86b
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x8e7
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF147
	.byte	0x7
	.byte	0x4
	.4byte	0x8e7
	.byte	0x1f
	.4byte	0x8fd
	.byte	0x16
	.4byte	0x4a9
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f2
	.byte	0x7
	.byte	0x4
	.4byte	0x1cc
	.byte	0x1f
	.4byte	0x914
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x91a
	.byte	0x7
	.byte	0x4
	.4byte	0x909
	.byte	0xc
	.4byte	0x68b
	.4byte	0x930
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4a9
	.byte	0x20
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4af
	.byte	0x6
	.4byte	.LASF124
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF125
	.byte	0x9
	.byte	0x7c
	.byte	0xf
	.4byte	0x319
	.byte	0xc
	.4byte	0x96d
	.4byte	0x96d
	.byte	0x21
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x973
	.byte	0x7
	.byte	0x4
	.4byte	0x956
	.byte	0x6
	.4byte	.LASF126
	.byte	0x9
	.byte	0x84
	.byte	0x1c
	.4byte	0x962
	.byte	0xe
	.byte	0x8
	.byte	0xa
	.byte	0x5
	.byte	0x9
	.4byte	0x9a9
	.byte	0xf
	.4byte	.LASF127
	.byte	0xa
	.byte	0x7
	.byte	0x8
	.4byte	0x9a9
	.byte	0
	.byte	0xf
	.4byte	.LASF128
	.byte	0xa
	.byte	0x8
	.byte	0x8
	.4byte	0x9a9
	.byte	0x4
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF129
	.byte	0x4
	.4byte	.LASF130
	.byte	0xa
	.byte	0x9
	.byte	0x2
	.4byte	0x985
	.byte	0x22
	.4byte	.LASF131
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x9b0
	.byte	0x5
	.byte	0x3
	.4byte	DHT11_Data
	.byte	0x22
	.4byte	.LASF127
	.byte	0x1
	.byte	0x38
	.byte	0x7
	.4byte	0x9a9
	.byte	0x5
	.byte	0x3
	.4byte	Temperature
	.byte	0x22
	.4byte	.LASF128
	.byte	0x1
	.byte	0x38
	.byte	0x14
	.4byte	0x9a9
	.byte	0x5
	.byte	0x3
	.4byte	Humidity
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	good_rep
	.byte	0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc9
	.byte	0x24
	.4byte	0xc9d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0xa59
	.byte	0x25
	.4byte	0xcb6
	.4byte	.LLST8
	.byte	0x25
	.4byte	0xcaa
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LVL28
	.4byte	0xd3f
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
	.4byte	0xc9d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.4byte	0xa8e
	.byte	0x28
	.4byte	0xcb6
	.byte	0
	.byte	0x28
	.4byte	0xcaa
	.byte	0xb
	.byte	0x26
	.4byte	.LVL30
	.4byte	0xd3f
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
	.byte	0x29
	.4byte	.LVL12
	.4byte	0xd4b
	.4byte	0xac0
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
	.byte	0x29
	.4byte	.LVL13
	.4byte	0xd57
	.4byte	0xad7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x29
	.4byte	.LVL14
	.4byte	0xd57
	.4byte	0xaee
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x29
	.4byte	.LVL15
	.4byte	0xd57
	.4byte	0xb05
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x29
	.4byte	.LVL16
	.4byte	0xd63
	.4byte	0xb18
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x2a
	.4byte	.LVL17
	.4byte	0xcc3
	.byte	0x29
	.4byte	.LVL18
	.4byte	0xd6f
	.4byte	0xb38
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	DHT11_Data
	.byte	0
	.byte	0x29
	.4byte	.LVL21
	.4byte	0xd57
	.4byte	0xb4f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL22
	.4byte	0xbc9
	.4byte	0xb6b
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
	.byte	0x29
	.4byte	.LVL23
	.4byte	0xd57
	.4byte	0xb82
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x29
	.4byte	.LVL24
	.4byte	0xbc9
	.4byte	0xb9e
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
	.byte	0x29
	.4byte	.LVL25
	.4byte	0xd7b
	.4byte	0xbb5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xc
	.4byte	0x2dc6c0
	.byte	0
	.byte	0x26
	.4byte	.LVL26
	.4byte	0xd57
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF135
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xc9d
	.byte	0x2c
	.string	"pin"
	.byte	0x1
	.byte	0x4b
	.byte	0x18
	.4byte	0x5b
	.4byte	.LLST2
	.byte	0x2d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x4b
	.byte	0x26
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x2e
	.4byte	0xc9d
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0xc3b
	.byte	0x25
	.4byte	0xcb6
	.4byte	.LLST4
	.byte	0x25
	.4byte	0xcaa
	.4byte	.LLST5
	.byte	0x26
	.4byte	.LVL7
	.4byte	0xd3f
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
	.4byte	0xc9d
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x4f
	.byte	0x5
	.4byte	0xc77
	.byte	0x25
	.4byte	0xcb6
	.4byte	.LLST6
	.byte	0x25
	.4byte	0xcaa
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LVL9
	.4byte	0xd3f
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
	.byte	0x29
	.4byte	.LVL8
	.4byte	0xd7b
	.4byte	0xc8b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL11
	.4byte	0xd7b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF149
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.byte	0x1
	.4byte	0xcc3
	.byte	0x31
	.string	"pin"
	.byte	0x1
	.byte	0x44
	.byte	0x1b
	.4byte	0x5b
	.byte	0x32
	.4byte	.LASF134
	.byte	0x1
	.byte	0x44
	.byte	0x28
	.4byte	0x5b
	.byte	0
	.byte	0x2b
	.4byte	.LASF136
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xd10
	.byte	0x29
	.4byte	.LVL0
	.4byte	0xd87
	.4byte	0xcf6
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
	.byte	0x2f
	.4byte	.LVL1
	.4byte	0xd87
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
	.byte	0
	.byte	0x33
	.4byte	0xc9d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xd3f
	.byte	0x25
	.4byte	0xcaa
	.4byte	.LLST0
	.byte	0x25
	.4byte	0xcb6
	.4byte	.LLST1
	.byte	0x34
	.4byte	.LVL3
	.4byte	0xd3f
	.byte	0
	.byte	0x35
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xb
	.byte	0x2e
	.byte	0x5
	.byte	0x35
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x26
	.byte	0x5
	.byte	0x35
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xd
	.byte	0xc8
	.byte	0x5
	.byte	0x35
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xa
	.byte	0xd
	.byte	0x6
	.byte	0x35
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xe
	.byte	0x22
	.byte	0x6
	.byte	0x35
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x2c
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
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
	.byte	0x96,0x42
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"_ind"
.LASF143:
	.string	"bl_gpio_enable_output"
.LASF42:
	.string	"_fnargs"
.LASF95:
	.string	"_rand48"
.LASF75:
	.string	"_emergency"
.LASF141:
	.string	"DHT_GetData"
.LASF87:
	.string	"_atexit0"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF121:
	.string	"TrapNetCounter"
.LASF11:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF147:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF15:
	.string	"_off_t"
.LASF60:
	.string	"_close"
.LASF1:
	.string	"signed char"
.LASF125:
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
.LASF134:
	.string	"state"
.LASF3:
	.string	"long int"
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
.LASF4:
	.string	"long long int"
.LASF135:
	.string	"LED_Blink"
.LASF12:
	.string	"BaseType_t"
.LASF85:
	.string	"_cvtbuf"
.LASF64:
	.string	"_offset"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_mbrlen_state"
.LASF48:
	.string	"_fns"
.LASF28:
	.string	"_sign"
.LASF122:
	.string	"_impure_ptr"
.LASF73:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF118:
	.string	"_nextf"
.LASF57:
	.string	"_read"
.LASF31:
	.string	"__tm"
.LASF19:
	.string	"__wchb"
.LASF124:
	.string	"SystemCoreClock"
.LASF130:
	.string	"DHT_DataTypedef"
.LASF72:
	.string	"_stdout"
.LASF84:
	.string	"_cvtlen"
.LASF10:
	.string	"long unsigned int"
.LASF54:
	.string	"_file"
.LASF126:
	.string	"intCbfArra"
.LASF131:
	.string	"DHT11_Data"
.LASF65:
	.string	"_data"
.LASF93:
	.string	"_niobs"
.LASF104:
	.string	"_rand_next"
.LASF110:
	.string	"_signal_buf"
.LASF101:
	.string	"_asctime_buf"
.LASF80:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF128:
	.string	"Humidity"
.LASF43:
	.string	"_dso_handle"
.LASF149:
	.string	"LED_SetState"
.LASF66:
	.string	"_lock"
.LASF97:
	.string	"_mult"
.LASF58:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF119:
	.string	"_nmalloc"
.LASF29:
	.string	"_wds"
.LASF146:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF78:
	.string	"__sdidinit"
.LASF103:
	.string	"_gamma_signgam"
.LASF14:
	.string	"wint_t"
.LASF140:
	.string	"DHT_init"
.LASF129:
	.string	"float"
.LASF83:
	.string	"_freelist"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF142:
	.string	"bl_timer_delay_us"
.LASF35:
	.string	"__tm_mday"
.LASF5:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF94:
	.string	"_iobs"
.LASF117:
	.string	"_h_errno"
.LASF25:
	.string	"_flock_t"
.LASF39:
	.string	"__tm_yday"
.LASF138:
	.string	"bl_uart_init"
.LASF49:
	.string	"__sbuf"
.LASF68:
	.string	"_flags2"
.LASF91:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF52:
	.string	"__sFILE"
.LASF67:
	.string	"_mbstate"
.LASF106:
	.string	"_mblen_state"
.LASF74:
	.string	"_inc"
.LASF137:
	.string	"bl_gpio_output_set"
.LASF148:
	.string	"bfl_main"
.LASF79:
	.string	"__cleanup"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF27:
	.string	"_maxwds"
.LASF144:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF96:
	.string	"_seed"
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
.LASF13:
	.string	"char"
.LASF63:
	.string	"_blksize"
.LASF51:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF133:
	.string	"delay_us"
.LASF44:
	.string	"_fntypes"
.LASF6:
	.string	"uint8_t"
.LASF26:
	.string	"_next"
.LASF100:
	.string	"_strtok_last"
.LASF8:
	.string	"short unsigned int"
.LASF98:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF123:
	.string	"_global_impure_ptr"
.LASF9:
	.string	"uint32_t"
.LASF99:
	.string	"_unused_rand"
.LASF127:
	.string	"Temperature"
.LASF92:
	.string	"_glue"
.LASF132:
	.string	"good_rep"
.LASF17:
	.string	"_ssize_t"
.LASF109:
	.string	"_l64a_buf"
.LASF88:
	.string	"_sig_func"
.LASF69:
	.string	"_reent"
.LASF62:
	.string	"_nbuf"
.LASF120:
	.string	"_unused"
.LASF40:
	.string	"__tm_isdst"
.LASF102:
	.string	"_localtime_buf"
.LASF33:
	.string	"__tm_min"
.LASF105:
	.string	"_r48"
.LASF107:
	.string	"_mbtowc_state"
.LASF82:
	.string	"_p5s"
.LASF145:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
.LASF77:
	.string	"_locale"
.LASF136:
	.string	"LED_Init"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
