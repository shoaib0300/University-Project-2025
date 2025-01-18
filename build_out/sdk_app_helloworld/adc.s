	.file	"adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.read_humidity,"ax",@progbits
	.align	1
	.globl	read_humidity
	.type	read_humidity, @function
read_humidity:
.LFB28:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.c"
	.loc 1 39 42
	.cfi_startproc
.LVL0:
	.loc 1 41 3
	.loc 1 39 42 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 39 42
	mv	s0,a0
	.loc 1 41 21
	call	rand
.LVL1:
	.loc 1 42 3 is_stmt 1
	.loc 1 41 28 is_stmt 0
	li	a5,5
	rem	a0,a0,a5
.LVL2:
	.loc 1 48 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 42 18
	addi	a0,a0,36
	.loc 1 42 13
	sb	a0,0(s0)
	.loc 1 45 3 is_stmt 1
	.loc 1 47 3
	.loc 1 48 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	read_humidity, .-read_humidity
	.section	.text.read_temperature,"ax",@progbits
	.align	1
	.globl	read_temperature
	.type	read_temperature, @function
read_temperature:
.LFB29:
	.loc 1 51 48 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 53 3
	.loc 1 51 48 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 51 48
	mv	s0,a0
	.loc 1 53 21
	call	rand
.LVL5:
	.loc 1 54 3 is_stmt 1
	.loc 1 53 28 is_stmt 0
	li	a5,3
	rem	a0,a0,a5
.LVL6:
	.loc 1 57 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 54 21
	addi	a0,a0,25
	.loc 1 54 16
	sb	a0,0(s0)
	.loc 1 56 3 is_stmt 1
	.loc 1 57 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL7:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	read_temperature, .-read_temperature
	.section	.text.convert_to_binary,"ax",@progbits
	.align	1
	.globl	convert_to_binary
	.type	convert_to_binary, @function
convert_to_binary:
.LFB30:
	.loc 1 59 36 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 60 3
	.loc 1 61 3
	.loc 1 59 36 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	ra,140(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 61 9
	li	s0,0
.LVL9:
.L6:
	.loc 1 61 3 discriminator 1
	bne	a0,zero,.L7
	.loc 1 65 3 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL10:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL11:
	.loc 1 66 3
	.loc 1 66 9 is_stmt 0
	addi	s0,s0,-1
.LVL12:
	.loc 1 66 3
	li	s1,-1
	.loc 1 67 5
	lui	s2,%hi(.LC1)
.L8:
	.loc 1 66 3 discriminator 1
	bne	s0,s1,.L9
	.loc 1 69 3 is_stmt 1
	.loc 1 70 1 is_stmt 0
	lw	s0,136(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL13:
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	.loc 1 69 3
	lui	a0,%hi(.LC2)
	.loc 1 70 1
	.loc 1 69 3
	addi	a0,a0,%lo(.LC2)
	.loc 1 70 1
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	.loc 1 69 3
	tail	printf
.LVL14:
.L7:
	.cfi_restore_state
	.loc 1 62 5 is_stmt 1 discriminator 3
	.loc 1 62 10 is_stmt 0 discriminator 3
	slli	a5,s0,2
	.loc 1 62 14 discriminator 3
	andi	a4,a0,1
	.loc 1 62 10 discriminator 3
	add	a5,sp,a5
	sw	a4,0(a5)
	.loc 1 63 5 is_stmt 1 discriminator 3
	.loc 1 63 7 is_stmt 0 discriminator 3
	srli	a0,a0,1
.LVL15:
	.loc 1 61 22 discriminator 3
	addi	s0,s0,1
.LVL16:
	j	.L6
.LVL17:
.L9:
	.loc 1 67 5 is_stmt 1 discriminator 3
	slli	a5,s0,2
	add	a5,sp,a5
	lw	a1,0(a5)
	addi	a0,s2,%lo(.LC1)
	.loc 1 66 25 is_stmt 0 discriminator 3
	addi	s0,s0,-1
.LVL18:
	.loc 1 67 5 discriminator 3
	call	printf
.LVL19:
	j	.L8
	.cfi_endproc
.LFE30:
	.size	convert_to_binary, .-convert_to_binary
	.section	.text.task_adc,"ax",@progbits
	.align	1
	.globl	task_adc
	.type	task_adc, @function
task_adc:
.LFB27:
	.loc 1 17 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 18 3
	lui	a0,%hi(.LC3)
.LVL21:
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 18 3
	addi	a0,a0,%lo(.LC3)
	.loc 1 17 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 18 3
	call	printf
.LVL22:
	.loc 1 21 3 is_stmt 1
	li	a0,4
	call	init_adc
.LVL23:
	.loc 1 23 3
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL24:
	.loc 1 26 3
	li	a0,2000
	.loc 1 32 5 is_stmt 0
	li	s0,4096
	.loc 1 26 3
	call	vTaskDelay
.LVL25:
	.loc 1 30 5
	lui	s1,%hi(.LC5)
	.loc 1 32 5
	addi	s0,s0,904
.L12:
	.loc 1 29 3 is_stmt 1 discriminator 1
	.loc 1 30 5 discriminator 1
	call	read_adc
.LVL26:
	mv	a1,a0
	addi	a0,s1,%lo(.LC5)
	call	printf
.LVL27:
	.loc 1 31 5 discriminator 1
	call	read_adc
.LVL28:
	call	convert_to_binary
.LVL29:
	.loc 1 32 5 discriminator 1
	mv	a0,s0
	call	vTaskDelay
.LVL30:
	j	.L12
	.cfi_endproc
.LFE27:
	.size	task_adc, .-task_adc
	.section	.rodata.convert_to_binary.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\nBinary of Given Number is="
.LC1:
	.string	"%d"
	.zero	1
.LC2:
	.string	"\r\n"
	.section	.rodata.task_adc.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"ADC task started\r\n"
	.zero	1
.LC4:
	.string	"ADC initialized\r\n"
	.zero	2
.LC5:
	.string	"\nCurrent value of digitized analog signal: %lu\r\n"
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 10 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 11 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.h"
	.file 13 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF122
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x5b
	.byte	0x7
	.byte	0x4
	.4byte	0xc8
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x8
	.4byte	0xc1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x120
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xcd
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x120
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x130
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x154
	.byte	0xf
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xfe
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x130
	.byte	0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x16c
	.byte	0x10
	.4byte	.LASF31
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1de
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1de
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF30
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
	.4byte	0x1e4
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x184
	.byte	0xc
	.4byte	0x160
	.4byte	0x1f4
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF32
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x277
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2bc
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2bc
	.byte	0
	.byte	0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2bc
	.byte	0x80
	.byte	0x13
	.4byte	.LASF45
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x160
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF46
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x160
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x8f
	.4byte	0x2cc
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF47
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x30f
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x30f
	.byte	0
	.byte	0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x315
	.byte	0x8
	.byte	0xf
	.4byte	.LASF42
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x277
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2cc
	.byte	0xc
	.4byte	0x325
	.4byte	0x325
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x32b
	.byte	0x14
	.byte	0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x354
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x354
	.byte	0
	.byte	0xf
	.4byte	.LASF52
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
	.4byte	.LASF53
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x49d
	.byte	0x11
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x354
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
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xf
	.4byte	.LASF55
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
	.4byte	0x32c
	.byte	0x10
	.byte	0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x615
	.byte	0x20
	.byte	0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x639
	.byte	0x24
	.byte	0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x65d
	.byte	0x28
	.byte	0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x677
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x32c
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x354
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x67d
	.byte	0x40
	.byte	0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x68d
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x32c
	.byte	0x44
	.byte	0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xda
	.byte	0x50
	.byte	0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4bb
	.byte	0x54
	.byte	0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x178
	.byte	0x58
	.byte	0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x154
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xf2
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0x60f
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4c6
	.byte	0x8
	.4byte	0x4bb
	.byte	0x17
	.4byte	.LASF70
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x60f
	.byte	0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e9
	.byte	0x4
	.byte	0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e9
	.byte	0x8
	.byte	0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e9
	.byte	0xc
	.byte	0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e9
	.byte	0x14
	.byte	0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8fe
	.byte	0x34
	.byte	0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x90f
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1de
	.byte	0x40
	.byte	0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1de
	.byte	0x48
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x915
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x60f
	.byte	0x54
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8c4
	.byte	0x58
	.byte	0x19
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x30f
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2cc
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x926
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6aa
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x932
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc1
	.byte	0x7
	.byte	0x4
	.4byte	0x49d
	.byte	0x15
	.4byte	0xf2
	.4byte	0x639
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xbb
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x61b
	.byte	0x15
	.4byte	0xe6
	.4byte	0x65d
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xe6
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x63f
	.byte	0x15
	.4byte	0x25
	.4byte	0x677
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x663
	.byte	0xc
	.4byte	0x67
	.4byte	0x68d
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x69d
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x35a
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6e3
	.byte	0x18
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6e3
	.byte	0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6e9
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x6aa
	.byte	0x7
	.byte	0x4
	.4byte	0x69d
	.byte	0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x728
	.byte	0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x728
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x728
	.byte	0x6
	.byte	0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6e
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x6e
	.4byte	0x738
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x84d
	.byte	0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x60f
	.byte	0x4
	.byte	0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x84d
	.byte	0x8
	.byte	0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1f4
	.byte	0x24
	.byte	0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x88
	.byte	0x50
	.byte	0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6ef
	.byte	0x58
	.byte	0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x154
	.byte	0x68
	.byte	0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x154
	.byte	0x70
	.byte	0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x154
	.byte	0x78
	.byte	0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x85d
	.byte	0x80
	.byte	0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x86d
	.byte	0x88
	.byte	0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x154
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x154
	.byte	0xac
	.byte	0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x154
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x154
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x154
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x85d
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x86d
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x87d
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8a4
	.byte	0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8a4
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8b4
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x354
	.4byte	0x8b4
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x8c4
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e9
	.byte	0x1d
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x738
	.byte	0x1d
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x87d
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x8f9
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF146
	.byte	0x7
	.byte	0x4
	.4byte	0x8f9
	.byte	0x1f
	.4byte	0x90f
	.byte	0x16
	.4byte	0x4bb
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x904
	.byte	0x7
	.byte	0x4
	.4byte	0x1de
	.byte	0x1f
	.4byte	0x926
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x92c
	.byte	0x7
	.byte	0x4
	.4byte	0x91b
	.byte	0xc
	.4byte	0x69d
	.4byte	0x942
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4bb
	.byte	0x20
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4c1
	.byte	0x6
	.4byte	.LASF125
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x60f
	.byte	0x6
	.4byte	.LASF126
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF127
	.byte	0xa
	.byte	0x7c
	.byte	0xf
	.4byte	0x32b
	.byte	0xc
	.4byte	0x98b
	.4byte	0x98b
	.byte	0x21
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x991
	.byte	0x7
	.byte	0x4
	.4byte	0x974
	.byte	0x6
	.4byte	.LASF128
	.byte	0xa
	.byte	0x84
	.byte	0x1c
	.4byte	0x980
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF129
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2c
	.byte	0x23
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.byte	0x21
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x24
	.string	"a"
	.byte	0x1
	.byte	0x3c
	.byte	0x7
	.4byte	0xa2c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x26
	.4byte	.LVL11
	.4byte	0xb83
	.4byte	0xa01
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x28
	.4byte	.LVL14
	.4byte	0xb83
	.4byte	0xa18
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL19
	.4byte	0xb83
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x25
	.4byte	0xa3c
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x2a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xa80
	.byte	0x2b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x33
	.byte	0x23
	.4byte	0xb5
	.4byte	.LLST2
	.byte	0x2c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x35
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x2d
	.4byte	.LVL5
	.4byte	0xb8f
	.byte	0
	.byte	0x2a
	.4byte	.LASF133
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xac4
	.byte	0x2b
	.4byte	.LASF134
	.byte	0x1
	.byte	0x27
	.byte	0x20
	.4byte	0xb5
	.4byte	.LLST0
	.byte	0x2c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x29
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x2d
	.4byte	.LVL1
	.4byte	0xb8f
	.byte	0
	.byte	0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xb83
	.byte	0x2b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x8f
	.4byte	.LLST6
	.byte	0x26
	.4byte	.LVL22
	.4byte	0xb83
	.4byte	0xb01
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL23
	.4byte	0xb9b
	.4byte	0xb14
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x26
	.4byte	.LVL24
	.4byte	0xb83
	.4byte	0xb2b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x26
	.4byte	.LVL25
	.4byte	0xba7
	.4byte	0xb40
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x2d
	.4byte	.LVL26
	.4byte	0xbb4
	.byte	0x26
	.4byte	.LVL27
	.4byte	0xb83
	.4byte	0xb60
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2d
	.4byte	.LVL28
	.4byte	0xbb4
	.byte	0x2d
	.4byte	.LVL29
	.4byte	0x9aa
	.byte	0x29
	.4byte	.LVL30
	.4byte	0xba7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.byte	0x90
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0x11
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xd
	.2byte	0x2f6
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xc
	.byte	0x12
	.byte	0xa
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
	.byte	0x24
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
	.byte	0x18
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x33
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF138:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"_fnargs"
.LASF96:
	.string	"_rand48"
.LASF76:
	.string	"_emergency"
.LASF88:
	.string	"_atexit0"
.LASF141:
	.string	"vTaskDelay"
.LASF116:
	.string	"_wcrtomb_state"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF122:
	.string	"TrapNetCounter"
.LASF11:
	.string	"long long unsigned int"
.LASF56:
	.string	"_lbfsize"
.LASF146:
	.string	"__locale_t"
.LASF114:
	.string	"_mbrtowc_state"
.LASF109:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF16:
	.string	"_off_t"
.LASF61:
	.string	"_close"
.LASF1:
	.string	"signed char"
.LASF127:
	.string	"intCallback_Type"
.LASF136:
	.string	"task_adc"
.LASF51:
	.string	"_base"
.LASF35:
	.string	"__tm_hour"
.LASF91:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF57:
	.string	"_cookie"
.LASF90:
	.string	"__sglue"
.LASF3:
	.string	"long int"
.LASF54:
	.string	"_flags"
.LASF46:
	.string	"_is_cxa"
.LASF72:
	.string	"_stdin"
.LASF62:
	.string	"_ubuf"
.LASF82:
	.string	"_result_k"
.LASF4:
	.string	"long long int"
.LASF12:
	.string	"BaseType_t"
.LASF86:
	.string	"_cvtbuf"
.LASF65:
	.string	"_offset"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF113:
	.string	"_mbrlen_state"
.LASF49:
	.string	"_fns"
.LASF29:
	.string	"_sign"
.LASF123:
	.string	"_impure_ptr"
.LASF74:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF133:
	.string	"read_humidity"
.LASF119:
	.string	"_nextf"
.LASF58:
	.string	"_read"
.LASF32:
	.string	"__tm"
.LASF20:
	.string	"__wchb"
.LASF126:
	.string	"SystemCoreClock"
.LASF73:
	.string	"_stdout"
.LASF85:
	.string	"_cvtlen"
.LASF10:
	.string	"long unsigned int"
.LASF55:
	.string	"_file"
.LASF139:
	.string	"rand"
.LASF137:
	.string	"pvParameters"
.LASF66:
	.string	"_data"
.LASF94:
	.string	"_niobs"
.LASF105:
	.string	"_rand_next"
.LASF134:
	.string	"humidity"
.LASF111:
	.string	"_signal_buf"
.LASF102:
	.string	"_asctime_buf"
.LASF81:
	.string	"_result"
.LASF19:
	.string	"__wch"
.LASF144:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.c"
.LASF44:
	.string	"_dso_handle"
.LASF87:
	.string	"_new"
.LASF67:
	.string	"_lock"
.LASF98:
	.string	"_mult"
.LASF59:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF120:
	.string	"_nmalloc"
.LASF131:
	.string	"fluctuation"
.LASF13:
	.string	"TickType_t"
.LASF128:
	.string	"intCbfArra"
.LASF37:
	.string	"__tm_mon"
.LASF47:
	.string	"_atexit"
.LASF125:
	.string	"suboptarg"
.LASF79:
	.string	"__sdidinit"
.LASF104:
	.string	"_gamma_signgam"
.LASF15:
	.string	"wint_t"
.LASF145:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF129:
	.string	"float"
.LASF84:
	.string	"_freelist"
.LASF23:
	.string	"_mbstate_t"
.LASF25:
	.string	"_LOCK_RECURSIVE_T"
.LASF5:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF95:
	.string	"_iobs"
.LASF118:
	.string	"_h_errno"
.LASF40:
	.string	"__tm_yday"
.LASF50:
	.string	"__sbuf"
.LASF69:
	.string	"_flags2"
.LASF92:
	.string	"__FILE"
.LASF53:
	.string	"__sFILE"
.LASF68:
	.string	"_mbstate"
.LASF107:
	.string	"_mblen_state"
.LASF75:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF140:
	.string	"init_adc"
.LASF80:
	.string	"__cleanup"
.LASF77:
	.string	"_unspecified_locale_info"
.LASF142:
	.string	"read_adc"
.LASF28:
	.string	"_maxwds"
.LASF143:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"_seed"
.LASF21:
	.string	"__count"
.LASF22:
	.string	"__value"
.LASF60:
	.string	"_seek"
.LASF39:
	.string	"__tm_wday"
.LASF17:
	.string	"_fpos_t"
.LASF135:
	.string	"convert_to_binary"
.LASF130:
	.string	"temperature"
.LASF71:
	.string	"_errno"
.LASF14:
	.string	"char"
.LASF64:
	.string	"_blksize"
.LASF52:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"_fntypes"
.LASF6:
	.string	"uint8_t"
.LASF132:
	.string	"read_temperature"
.LASF27:
	.string	"_next"
.LASF101:
	.string	"_strtok_last"
.LASF70:
	.string	"_reent"
.LASF8:
	.string	"short unsigned int"
.LASF99:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF112:
	.string	"_getdate_err"
.LASF124:
	.string	"_global_impure_ptr"
.LASF9:
	.string	"uint32_t"
.LASF100:
	.string	"_unused_rand"
.LASF30:
	.string	"_wds"
.LASF93:
	.string	"_glue"
.LASF18:
	.string	"_ssize_t"
.LASF110:
	.string	"_l64a_buf"
.LASF89:
	.string	"_sig_func"
.LASF26:
	.string	"_flock_t"
.LASF63:
	.string	"_nbuf"
.LASF121:
	.string	"_unused"
.LASF41:
	.string	"__tm_isdst"
.LASF103:
	.string	"_localtime_buf"
.LASF34:
	.string	"__tm_min"
.LASF106:
	.string	"_r48"
.LASF108:
	.string	"_mbtowc_state"
.LASF83:
	.string	"_p5s"
.LASF78:
	.string	"_locale"
.LASF36:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
