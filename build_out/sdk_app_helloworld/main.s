	.file	"main.c"
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
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB31:
	.file 2 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
	.loc 2 28 1
	.cfi_startproc
	.loc 2 33 3
	li	a5,1998848
	.loc 2 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 2 33 3
	addi	a5,a5,1152
	li	a4,255
	li	a3,255
	li	a2,7
	li	a1,16
	li	a0,0
	.loc 2 28 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 2 33 3
	call	bl_uart_init
.LVL31:
	.loc 2 36 3 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	vPortDefineHeapRegions
.LVL32:
	.loc 2 39 3
	.loc 2 40 3
	.loc 2 43 3
	.loc 2 46 3
	lui	a6,%hi(.LANCHOR1)
	lui	a5,%hi(led_stack.4806)
	lui	a1,%hi(.LC6)
	lui	a0,%hi(task_led)
	addi	a6,a6,%lo(.LANCHOR1)
	addi	a5,a5,%lo(led_stack.4806)
	li	a4,15
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(task_led)
	call	xTaskCreateStatic
.LVL33:
	.loc 2 57 3
	.loc 2 58 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 57 3
	tail	vTaskStartScheduler
.LVL34:
	.cfi_endproc
.LFE31:
	.size	bfl_main, .-bfl_main
	.section	.bss.led_stack.4806,"aw",@nobits
	.align	2
	.type	led_stack.4806, @object
	.size	led_stack.4806, 2048
led_stack.4806:
	.zero	2048
	.section	.bss.led_task.4807,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	led_task.4807, @object
	.size	led_task.4807, 96
led_task.4807:
	.zero	96
	.section	.data.xHeapRegions,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xHeapRegions, @object
	.size	xHeapRegions, 32
xHeapRegions:
	.word	_heap_start
	.word	_heap_size
	.word	_heap_wifi_start
	.word	_heap_wifi_size
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.bfl_main.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"led"
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
	.file 3 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 5 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 7 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 8 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 9 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 10 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 11 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 12 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 13 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 14 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_uart.h"
	.file 15 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 16 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 17 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF179
	.byte	0xc
	.4byte	.LASF180
	.4byte	.LASF181
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x59
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x73
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x8d
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x3e
	.byte	0x12
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0x81
	.byte	0x6
	.4byte	.LASF146
	.byte	0x5
	.byte	0x54
	.byte	0x13
	.4byte	0xa9
	.byte	0x7
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x10
	.4byte	0x101
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0x7c
	.byte	0xe
	.4byte	0x101
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7d
	.byte	0xc
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x7e
	.byte	0x3
	.4byte	0xd9
	.byte	0xa
	.4byte	.LASF21
	.byte	0x14
	.byte	0x7
	.2byte	0x414
	.byte	0x8
	.4byte	0x13e
	.byte	0xb
	.4byte	.LASF22
	.byte	0x7
	.2byte	0x419
	.byte	0x10
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x41a
	.byte	0xb
	.4byte	0x13e
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	0x9b
	.4byte	0x14e
	.byte	0xd
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0xe
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x41f
	.byte	0x22
	.4byte	0x113
	.byte	0xa
	.4byte	.LASF25
	.byte	0x60
	.byte	0x7
	.2byte	0x447
	.byte	0x10
	.4byte	0x204
	.byte	0xb
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x449
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x44d
	.byte	0x16
	.4byte	0x204
	.byte	0x4
	.byte	0xb
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x44e
	.byte	0x11
	.4byte	0xb5
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x44f
	.byte	0xb
	.4byte	0x9b
	.byte	0x30
	.byte	0xb
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x450
	.byte	0xd
	.4byte	0x214
	.byte	0x34
	.byte	0xb
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x455
	.byte	0x15
	.4byte	0xb5
	.byte	0x44
	.byte	0xb
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x458
	.byte	0x15
	.4byte	0x224
	.byte	0x48
	.byte	0xb
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x45b
	.byte	0x15
	.4byte	0x224
	.byte	0x50
	.byte	0xb
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x46a
	.byte	0x12
	.4byte	0x81
	.byte	0x58
	.byte	0xb
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x46b
	.byte	0x11
	.4byte	0x67
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF36
	.byte	0x7
	.2byte	0x46e
	.byte	0x11
	.4byte	0x67
	.byte	0x5d
	.byte	0
	.byte	0xc
	.4byte	0x14e
	.4byte	0x214
	.byte	0xd
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x224
	.byte	0xd
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	0xb5
	.4byte	0x234
	.byte	0xd
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x477
	.byte	0x3
	.4byte	0x15b
	.byte	0x9
	.byte	0x4
	.4byte	0x24e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF38
	.byte	0xf
	.4byte	0x247
	.byte	0xe
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.byte	0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.byte	0xa5
	.byte	0x3
	.4byte	0x2a6
	.byte	0x11
	.4byte	.LASF43
	.byte	0x8
	.byte	0xa7
	.byte	0xc
	.4byte	0x253
	.byte	0x11
	.4byte	.LASF44
	.byte	0x8
	.byte	0xa8
	.byte	0x13
	.4byte	0x2a6
	.byte	0
	.byte	0xc
	.4byte	0x73
	.4byte	0x2b6
	.byte	0xd
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x12
	.byte	0x8
	.byte	0x8
	.byte	0xa2
	.byte	0x9
	.4byte	0x2da
	.byte	0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0xa9
	.byte	0x5
	.4byte	0x284
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0xaa
	.byte	0x3
	.4byte	0x2b6
	.byte	0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x16
	.byte	0x17
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF49
	.byte	0xa
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF50
	.byte	0x9
	.byte	0x23
	.byte	0x1b
	.4byte	0x2f2
	.byte	0x7
	.4byte	.LASF51
	.byte	0x18
	.byte	0x9
	.byte	0x34
	.byte	0x8
	.4byte	0x364
	.byte	0x8
	.4byte	.LASF52
	.byte	0x9
	.byte	0x36
	.byte	0x13
	.4byte	0x364
	.byte	0
	.byte	0x13
	.string	"_k"
	.byte	0x9
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x8
	.4byte	.LASF53
	.byte	0x9
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0x8
	.4byte	.LASF54
	.byte	0x9
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0x8
	.4byte	.LASF55
	.byte	0x9
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x13
	.string	"_x"
	.byte	0x9
	.byte	0x38
	.byte	0xb
	.4byte	0x36a
	.byte	0x14
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x30a
	.byte	0xc
	.4byte	0x2e6
	.4byte	0x37a
	.byte	0xd
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF56
	.byte	0x24
	.byte	0x9
	.byte	0x3c
	.byte	0x8
	.4byte	0x3fd
	.byte	0x8
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x8
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x8
	.4byte	.LASF59
	.byte	0x9
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x8
	.4byte	.LASF60
	.byte	0x9
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0x8
	.4byte	.LASF61
	.byte	0x9
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x8
	.4byte	.LASF62
	.byte	0x9
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0x8
	.4byte	.LASF63
	.byte	0x9
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x8
	.4byte	.LASF64
	.byte	0x9
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF65
	.byte	0x9
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x14
	.4byte	.LASF66
	.2byte	0x108
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.4byte	0x442
	.byte	0x8
	.4byte	.LASF67
	.byte	0x9
	.byte	0x50
	.byte	0x9
	.4byte	0x442
	.byte	0
	.byte	0x8
	.4byte	.LASF68
	.byte	0x9
	.byte	0x51
	.byte	0x9
	.4byte	0x442
	.byte	0x80
	.byte	0x15
	.4byte	.LASF69
	.byte	0x9
	.byte	0x53
	.byte	0xa
	.4byte	0x2e6
	.2byte	0x100
	.byte	0x15
	.4byte	.LASF70
	.byte	0x9
	.byte	0x56
	.byte	0xa
	.4byte	0x2e6
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x9b
	.4byte	0x452
	.byte	0xd
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x14
	.4byte	.LASF71
	.2byte	0x190
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.4byte	0x495
	.byte	0x8
	.4byte	.LASF52
	.byte	0x9
	.byte	0x63
	.byte	0x12
	.4byte	0x495
	.byte	0
	.byte	0x8
	.4byte	.LASF72
	.byte	0x9
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0x8
	.4byte	.LASF73
	.byte	0x9
	.byte	0x66
	.byte	0x9
	.4byte	0x49b
	.byte	0x8
	.byte	0x8
	.4byte	.LASF66
	.byte	0x9
	.byte	0x67
	.byte	0x1e
	.4byte	0x3fd
	.byte	0x88
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x452
	.byte	0xc
	.4byte	0x4ab
	.4byte	0x4ab
	.byte	0xd
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x4b1
	.byte	0x16
	.byte	0x7
	.4byte	.LASF74
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.byte	0x8
	.4byte	0x4da
	.byte	0x8
	.4byte	.LASF75
	.byte	0x9
	.byte	0x7b
	.byte	0x11
	.4byte	0x4da
	.byte	0
	.byte	0x8
	.4byte	.LASF76
	.byte	0x9
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x73
	.byte	0x7
	.4byte	.LASF77
	.byte	0x68
	.byte	0x9
	.byte	0xba
	.byte	0x8
	.4byte	0x623
	.byte	0x13
	.string	"_p"
	.byte	0x9
	.byte	0xbb
	.byte	0x12
	.4byte	0x4da
	.byte	0
	.byte	0x13
	.string	"_r"
	.byte	0x9
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x13
	.string	"_w"
	.byte	0x9
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x8
	.4byte	.LASF78
	.byte	0x9
	.byte	0xbe
	.byte	0x9
	.4byte	0x46
	.byte	0xc
	.byte	0x8
	.4byte	.LASF79
	.byte	0x9
	.byte	0xbf
	.byte	0x9
	.4byte	0x46
	.byte	0xe
	.byte	0x13
	.string	"_bf"
	.byte	0x9
	.byte	0xc0
	.byte	0x11
	.4byte	0x4b2
	.byte	0x10
	.byte	0x8
	.4byte	.LASF80
	.byte	0x9
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x8
	.4byte	.LASF81
	.byte	0x9
	.byte	0xc8
	.byte	0xa
	.4byte	0x9b
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF82
	.byte	0x9
	.byte	0xca
	.byte	0xe
	.4byte	0x79b
	.byte	0x20
	.byte	0x8
	.4byte	.LASF83
	.byte	0x9
	.byte	0xcc
	.byte	0xe
	.4byte	0x7bf
	.byte	0x24
	.byte	0x8
	.4byte	.LASF84
	.byte	0x9
	.byte	0xcf
	.byte	0xd
	.4byte	0x7e3
	.byte	0x28
	.byte	0x8
	.4byte	.LASF85
	.byte	0x9
	.byte	0xd0
	.byte	0x9
	.4byte	0x7fd
	.byte	0x2c
	.byte	0x13
	.string	"_ub"
	.byte	0x9
	.byte	0xd3
	.byte	0x11
	.4byte	0x4b2
	.byte	0x30
	.byte	0x13
	.string	"_up"
	.byte	0x9
	.byte	0xd4
	.byte	0x12
	.4byte	0x4da
	.byte	0x38
	.byte	0x13
	.string	"_ur"
	.byte	0x9
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0x8
	.4byte	.LASF86
	.byte	0x9
	.byte	0xd8
	.byte	0x11
	.4byte	0x803
	.byte	0x40
	.byte	0x8
	.4byte	.LASF87
	.byte	0x9
	.byte	0xd9
	.byte	0x11
	.4byte	0x813
	.byte	0x43
	.byte	0x13
	.string	"_lb"
	.byte	0x9
	.byte	0xdc
	.byte	0x11
	.4byte	0x4b2
	.byte	0x44
	.byte	0x8
	.4byte	.LASF88
	.byte	0x9
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0x8
	.4byte	.LASF89
	.byte	0x9
	.byte	0xe0
	.byte	0xa
	.4byte	0x260
	.byte	0x50
	.byte	0x8
	.4byte	.LASF90
	.byte	0x9
	.byte	0xe3
	.byte	0x12
	.4byte	0x641
	.byte	0x54
	.byte	0x8
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe7
	.byte	0xc
	.4byte	0x2fe
	.byte	0x58
	.byte	0x8
	.4byte	.LASF92
	.byte	0x9
	.byte	0xe9
	.byte	0xe
	.4byte	0x2da
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF93
	.byte	0x9
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	0x278
	.4byte	0x641
	.byte	0x18
	.4byte	0x641
	.byte	0x18
	.4byte	0x9b
	.byte	0x18
	.4byte	0x795
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x64c
	.byte	0xf
	.4byte	0x641
	.byte	0x19
	.4byte	.LASF94
	.2byte	0x428
	.byte	0x9
	.2byte	0x265
	.byte	0x8
	.4byte	0x795
	.byte	0xb
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x26c
	.byte	0xb
	.4byte	0x86f
	.byte	0x4
	.byte	0xb
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x26c
	.byte	0x14
	.4byte	0x86f
	.byte	0x8
	.byte	0xb
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x86f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xb
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x26f
	.byte	0x8
	.4byte	0xa6f
	.byte	0x14
	.byte	0xb
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0xb
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x273
	.byte	0x16
	.4byte	0xa84
	.byte	0x34
	.byte	0xb
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0xb
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x277
	.byte	0xa
	.4byte	0xa95
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x27a
	.byte	0x13
	.4byte	0x364
	.byte	0x40
	.byte	0xb
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0xb
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x27c
	.byte	0x13
	.4byte	0x364
	.byte	0x48
	.byte	0xb
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x27d
	.byte	0x14
	.4byte	0xa9b
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0xb
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x281
	.byte	0x9
	.4byte	0x795
	.byte	0x54
	.byte	0xb
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x2a4
	.byte	0x7
	.4byte	0xa4a
	.byte	0x58
	.byte	0x1a
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x495
	.2byte	0x148
	.byte	0x1a
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x452
	.2byte	0x14c
	.byte	0x1a
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x2ad
	.byte	0xc
	.4byte	0xaac
	.2byte	0x2dc
	.byte	0x1a
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x830
	.2byte	0x2e0
	.byte	0x1a
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x2b4
	.byte	0xa
	.4byte	0xab8
	.2byte	0x2ec
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x247
	.byte	0x9
	.byte	0x4
	.4byte	0x623
	.byte	0x17
	.4byte	0x278
	.4byte	0x7bf
	.byte	0x18
	.4byte	0x641
	.byte	0x18
	.4byte	0x9b
	.byte	0x18
	.4byte	0x241
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x7a1
	.byte	0x17
	.4byte	0x26c
	.4byte	0x7e3
	.byte	0x18
	.4byte	0x641
	.byte	0x18
	.4byte	0x9b
	.byte	0x18
	.4byte	0x26c
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x7c5
	.byte	0x17
	.4byte	0x25
	.4byte	0x7fd
	.byte	0x18
	.4byte	0x641
	.byte	0x18
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x7e9
	.byte	0xc
	.4byte	0x73
	.4byte	0x813
	.byte	0xd
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x73
	.4byte	0x823
	.byte	0xd
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x124
	.byte	0x18
	.4byte	0x4e0
	.byte	0xa
	.4byte	.LASF117
	.byte	0xc
	.byte	0x9
	.2byte	0x128
	.byte	0x8
	.4byte	0x869
	.byte	0xb
	.4byte	.LASF52
	.byte	0x9
	.2byte	0x12a
	.byte	0x11
	.4byte	0x869
	.byte	0
	.byte	0xb
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x12c
	.byte	0xb
	.4byte	0x86f
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x830
	.byte	0x9
	.byte	0x4
	.4byte	0x823
	.byte	0xa
	.4byte	.LASF120
	.byte	0xe
	.byte	0x9
	.2byte	0x144
	.byte	0x8
	.4byte	0x8ae
	.byte	0xb
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x145
	.byte	0x12
	.4byte	0x8ae
	.byte	0
	.byte	0xb
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x146
	.byte	0x12
	.4byte	0x8ae
	.byte	0x6
	.byte	0xb
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x147
	.byte	0x12
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x7a
	.4byte	0x8be
	.byte	0xd
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x9
	.2byte	0x285
	.byte	0x7
	.4byte	0x9d3
	.byte	0xb
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x287
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0xb
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x288
	.byte	0x12
	.4byte	0x795
	.byte	0x4
	.byte	0xb
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x289
	.byte	0x10
	.4byte	0x9d3
	.byte	0x8
	.byte	0xb
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x28a
	.byte	0x17
	.4byte	0x37a
	.byte	0x24
	.byte	0xb
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0xb
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x94
	.byte	0x50
	.byte	0xb
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x875
	.byte	0x58
	.byte	0xb
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x28e
	.byte	0x16
	.4byte	0x2da
	.byte	0x68
	.byte	0xb
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x28f
	.byte	0x16
	.4byte	0x2da
	.byte	0x70
	.byte	0xb
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x290
	.byte	0x16
	.4byte	0x2da
	.byte	0x78
	.byte	0xb
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x291
	.byte	0x10
	.4byte	0x9e3
	.byte	0x80
	.byte	0xb
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x292
	.byte	0x10
	.4byte	0x9f3
	.byte	0x88
	.byte	0xb
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0xb
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x294
	.byte	0x16
	.4byte	0x2da
	.byte	0xa4
	.byte	0xb
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x295
	.byte	0x16
	.4byte	0x2da
	.byte	0xac
	.byte	0xb
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x296
	.byte	0x16
	.4byte	0x2da
	.byte	0xb4
	.byte	0xb
	.4byte	.LASF140
	.byte	0x9
	.2byte	0x297
	.byte	0x16
	.4byte	0x2da
	.byte	0xbc
	.byte	0xb
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x298
	.byte	0x16
	.4byte	0x2da
	.byte	0xc4
	.byte	0xb
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0x247
	.4byte	0x9e3
	.byte	0xd
	.4byte	0x38
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0x247
	.4byte	0x9f3
	.byte	0xd
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0x247
	.4byte	0xa03
	.byte	0xd
	.4byte	0x38
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x9
	.2byte	0x29e
	.byte	0x7
	.4byte	0xa2a
	.byte	0xb
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0xa2a
	.byte	0
	.byte	0xb
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x2a2
	.byte	0x18
	.4byte	0xa3a
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x4da
	.4byte	0xa3a
	.byte	0xd
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x38
	.4byte	0xa4a
	.byte	0xd
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x9
	.2byte	0x283
	.byte	0x3
	.4byte	0xa6f
	.byte	0x1d
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x29a
	.byte	0xb
	.4byte	0x8be
	.byte	0x1d
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x2a3
	.byte	0xb
	.4byte	0xa03
	.byte	0
	.byte	0xc
	.4byte	0x247
	.4byte	0xa7f
	.byte	0xd
	.4byte	0x38
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF182
	.byte	0x9
	.byte	0x4
	.4byte	0xa7f
	.byte	0x1f
	.4byte	0xa95
	.byte	0x18
	.4byte	0x641
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xa8a
	.byte	0x9
	.byte	0x4
	.4byte	0x364
	.byte	0x1f
	.4byte	0xaac
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xab2
	.byte	0x9
	.byte	0x4
	.4byte	0xaa1
	.byte	0xc
	.4byte	0x823
	.4byte	0xac8
	.byte	0xd
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x333
	.byte	0x17
	.4byte	0x641
	.byte	0x20
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x334
	.byte	0x1d
	.4byte	0x647
	.byte	0x6
	.4byte	.LASF149
	.byte	0xb
	.byte	0x8
	.byte	0x11
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF150
	.byte	0xc
	.byte	0x7c
	.byte	0xf
	.4byte	0x4b1
	.byte	0xc
	.4byte	0xb05
	.4byte	0xb05
	.byte	0x21
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xb0b
	.byte	0x9
	.byte	0x4
	.4byte	0xaee
	.byte	0x6
	.4byte	.LASF151
	.byte	0xc
	.byte	0x84
	.byte	0x1c
	.4byte	0xafa
	.byte	0x6
	.4byte	.LASF152
	.byte	0xd
	.byte	0x67
	.byte	0xe
	.4byte	0x795
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF153
	.byte	0x6
	.4byte	.LASF154
	.byte	0x2
	.byte	0xb
	.byte	0x10
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF155
	.byte	0x2
	.byte	0xc
	.byte	0x10
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF156
	.byte	0x2
	.byte	0xd
	.byte	0x10
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF157
	.byte	0x2
	.byte	0xe
	.byte	0x10
	.4byte	0x67
	.byte	0xc
	.4byte	0x107
	.4byte	0xb70
	.byte	0xd
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x22
	.4byte	.LASF158
	.byte	0x2
	.byte	0x10
	.byte	0x15
	.4byte	0xb60
	.byte	0x5
	.byte	0x3
	.4byte	xHeapRegions
	.byte	0x23
	.4byte	.LASF161
	.byte	0x2
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0xc5b
	.byte	0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0x27
	.byte	0x16
	.4byte	0xc5b
	.byte	0x5
	.byte	0x3
	.4byte	led_stack.4806
	.byte	0x22
	.4byte	.LASF160
	.byte	0x2
	.byte	0x28
	.byte	0x17
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	led_task.4807
	.byte	0x24
	.4byte	.LASF183
	.byte	0x2
	.byte	0x2b
	.byte	0xf
	.4byte	0xbce
	.byte	0x18
	.4byte	0x9b
	.byte	0
	.byte	0x25
	.4byte	.LVL31
	.4byte	0xe45
	.4byte	0xc00
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x26
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0x26
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x26
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x26
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0xc
	.4byte	0x1e8480
	.byte	0
	.byte	0x25
	.4byte	.LVL32
	.4byte	0xe51
	.4byte	0xc17
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x25
	.4byte	.LVL33
	.4byte	0xe5d
	.4byte	0xc51
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x26
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x26
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x26
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x26
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	led_stack.4806
	.byte	0x26
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x27
	.4byte	.LVL34
	.4byte	0xe6a
	.byte	0
	.byte	0xc
	.4byte	0x9d
	.4byte	0xc6c
	.byte	0x28
	.4byte	0x38
	.2byte	0x1ff
	.byte	0
	.byte	0x23
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xcee
	.byte	0x29
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.byte	0x21
	.4byte	0x81
	.4byte	.LLST4
	.byte	0x2a
	.string	"a"
	.byte	0x1
	.byte	0x3c
	.byte	0x7
	.4byte	0xcee
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x25
	.4byte	.LVL11
	.4byte	0xe77
	.4byte	0xcc3
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2c
	.4byte	.LVL14
	.4byte	0xe77
	.4byte	0xcda
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2d
	.4byte	.LVL19
	.4byte	0xe77
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x25
	.4byte	0xcfe
	.byte	0xd
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x2e
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x67
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xd42
	.byte	0x2f
	.4byte	.LASF163
	.byte	0x1
	.byte	0x33
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST2
	.byte	0x30
	.4byte	.LASF164
	.byte	0x1
	.byte	0x35
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x31
	.4byte	.LVL5
	.4byte	0xe83
	.byte	0
	.byte	0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x67
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xd86
	.byte	0x2f
	.4byte	.LASF167
	.byte	0x1
	.byte	0x27
	.byte	0x20
	.4byte	0x101
	.4byte	.LLST0
	.byte	0x30
	.4byte	.LASF164
	.byte	0x1
	.byte	0x29
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x31
	.4byte	.LVL1
	.4byte	0xe83
	.byte	0
	.byte	0x23
	.4byte	.LASF168
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xe45
	.byte	0x2f
	.4byte	.LASF169
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x9b
	.4byte	.LLST6
	.byte	0x25
	.4byte	.LVL22
	.4byte	0xe77
	.4byte	0xdc3
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL23
	.4byte	0xe8f
	.4byte	0xdd6
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x25
	.4byte	.LVL24
	.4byte	0xe77
	.4byte	0xded
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x25
	.4byte	.LVL25
	.4byte	0xe9b
	.4byte	0xe02
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x31
	.4byte	.LVL26
	.4byte	0xea8
	.byte	0x25
	.4byte	.LVL27
	.4byte	0xe77
	.4byte	0xe22
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x31
	.4byte	.LVL28
	.4byte	0xea8
	.byte	0x31
	.4byte	.LVL29
	.4byte	0xc6c
	.byte	0x2d
	.4byte	.LVL30
	.4byte	0xe9b
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xe
	.byte	0x26
	.byte	0x5
	.byte	0x32
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x6
	.byte	0x8b
	.byte	0x6
	.byte	0x33
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x1be
	.byte	0x12
	.byte	0x33
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xf
	.2byte	0x497
	.byte	0x6
	.byte	0x32
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x10
	.byte	0xc8
	.byte	0x5
	.byte	0x32
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xd
	.byte	0x90
	.byte	0x5
	.byte	0x32
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x11
	.byte	0x11
	.byte	0x6
	.byte	0x33
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xf
	.2byte	0x2f6
	.byte	0x6
	.byte	0x32
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x11
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
	.byte	0x4
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
	.byte	0x8
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xf
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.4byte	0x3c
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF174:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF72:
	.string	"_ind"
.LASF67:
	.string	"_fnargs"
.LASF3:
	.string	"size_t"
.LASF120:
	.string	"_rand48"
.LASF100:
	.string	"_emergency"
.LASF21:
	.string	"xSTATIC_LIST_ITEM"
.LASF112:
	.string	"_atexit0"
.LASF177:
	.string	"vTaskDelay"
.LASF140:
	.string	"_wcrtomb_state"
.LASF141:
	.string	"_wcsrtombs_state"
.LASF146:
	.string	"TrapNetCounter"
.LASF12:
	.string	"long long unsigned int"
.LASF80:
	.string	"_lbfsize"
.LASF182:
	.string	"__locale_t"
.LASF161:
	.string	"bfl_main"
.LASF138:
	.string	"_mbrtowc_state"
.LASF133:
	.string	"_wctomb_state"
.LASF57:
	.string	"__tm_sec"
.LASF40:
	.string	"_off_t"
.LASF85:
	.string	"_close"
.LASF1:
	.string	"signed char"
.LASF150:
	.string	"intCallback_Type"
.LASF168:
	.string	"task_adc"
.LASF75:
	.string	"_base"
.LASF59:
	.string	"__tm_hour"
.LASF115:
	.string	"__sf"
.LASF66:
	.string	"_on_exit_args"
.LASF19:
	.string	"HeapRegion_t"
.LASF30:
	.string	"ucDummy7"
.LASF81:
	.string	"_cookie"
.LASF114:
	.string	"__sglue"
.LASF170:
	.string	"bl_uart_init"
.LASF5:
	.string	"long int"
.LASF111:
	.string	"_new"
.LASF78:
	.string	"_flags"
.LASF70:
	.string	"_is_cxa"
.LASF96:
	.string	"_stdin"
.LASF86:
	.string	"_ubuf"
.LASF106:
	.string	"_result_k"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"BaseType_t"
.LASF110:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF139:
	.string	"_mbsrtowcs_state"
.LASF137:
	.string	"_mbrlen_state"
.LASF163:
	.string	"temperature"
.LASF154:
	.string	"_heap_start"
.LASF73:
	.string	"_fns"
.LASF173:
	.string	"vTaskStartScheduler"
.LASF28:
	.string	"uxDummy5"
.LASF147:
	.string	"_impure_ptr"
.LASF98:
	.string	"_stderr"
.LASF31:
	.string	"uxDummy9"
.LASF172:
	.string	"xTaskCreateStatic"
.LASF183:
	.string	"task_led"
.LASF82:
	.string	"_read"
.LASF56:
	.string	"__tm"
.LASF155:
	.string	"_heap_size"
.LASF44:
	.string	"__wchb"
.LASF17:
	.string	"pucStartAddress"
.LASF97:
	.string	"_stdout"
.LASF109:
	.string	"_cvtlen"
.LASF11:
	.string	"long unsigned int"
.LASF79:
	.string	"_file"
.LASF175:
	.string	"rand"
.LASF169:
	.string	"pvParameters"
.LASF90:
	.string	"_data"
.LASF118:
	.string	"_niobs"
.LASF9:
	.string	"short unsigned int"
.LASF13:
	.string	"StackType_t"
.LASF167:
	.string	"humidity"
.LASF135:
	.string	"_signal_buf"
.LASF126:
	.string	"_asctime_buf"
.LASF105:
	.string	"_result"
.LASF43:
	.string	"__wch"
.LASF143:
	.string	"_nextf"
.LASF68:
	.string	"_dso_handle"
.LASF32:
	.string	"uxDummy10"
.LASF33:
	.string	"uxDummy12"
.LASF160:
	.string	"led_task"
.LASF91:
	.string	"_lock"
.LASF122:
	.string	"_mult"
.LASF23:
	.string	"pvDummy3"
.LASF158:
	.string	"xHeapRegions"
.LASF34:
	.string	"ulDummy18"
.LASF83:
	.string	"_write"
.LASF62:
	.string	"__tm_year"
.LASF144:
	.string	"_nmalloc"
.LASF22:
	.string	"xDummy2"
.LASF164:
	.string	"fluctuation"
.LASF156:
	.string	"_heap_wifi_start"
.LASF27:
	.string	"xDummy3"
.LASF16:
	.string	"TickType_t"
.LASF47:
	.string	"_mbstate_t"
.LASF151:
	.string	"intCbfArra"
.LASF159:
	.string	"led_stack"
.LASF61:
	.string	"__tm_mon"
.LASF36:
	.string	"uxDummy20"
.LASF71:
	.string	"_atexit"
.LASF152:
	.string	"suboptarg"
.LASF103:
	.string	"__sdidinit"
.LASF128:
	.string	"_gamma_signgam"
.LASF39:
	.string	"wint_t"
.LASF24:
	.string	"StaticListItem_t"
.LASF181:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF149:
	.string	"SystemCoreClock"
.LASF108:
	.string	"_freelist"
.LASF20:
	.string	"HeapRegion"
.LASF49:
	.string	"_LOCK_RECURSIVE_T"
.LASF131:
	.string	"_mblen_state"
.LASF4:
	.string	"int32_t"
.LASF8:
	.string	"unsigned char"
.LASF119:
	.string	"_iobs"
.LASF142:
	.string	"_h_errno"
.LASF64:
	.string	"__tm_yday"
.LASF171:
	.string	"vPortDefineHeapRegions"
.LASF74:
	.string	"__sbuf"
.LASF93:
	.string	"_flags2"
.LASF116:
	.string	"__FILE"
.LASF77:
	.string	"__sFILE"
.LASF92:
	.string	"_mbstate"
.LASF25:
	.string	"xSTATIC_TCB"
.LASF99:
	.string	"_inc"
.LASF165:
	.string	"read_temperature"
.LASF176:
	.string	"init_adc"
.LASF104:
	.string	"__cleanup"
.LASF101:
	.string	"_unspecified_locale_info"
.LASF178:
	.string	"read_adc"
.LASF53:
	.string	"_maxwds"
.LASF179:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF121:
	.string	"_seed"
.LASF45:
	.string	"__count"
.LASF46:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF63:
	.string	"__tm_wday"
.LASF41:
	.string	"_fpos_t"
.LASF162:
	.string	"convert_to_binary"
.LASF153:
	.string	"float"
.LASF95:
	.string	"_errno"
.LASF38:
	.string	"char"
.LASF88:
	.string	"_blksize"
.LASF76:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"_fntypes"
.LASF18:
	.string	"xSizeInBytes"
.LASF26:
	.string	"pxDummy1"
.LASF7:
	.string	"uint8_t"
.LASF54:
	.string	"_sign"
.LASF29:
	.string	"pxDummy6"
.LASF52:
	.string	"_next"
.LASF125:
	.string	"_strtok_last"
.LASF94:
	.string	"_reent"
.LASF157:
	.string	"_heap_wifi_size"
.LASF123:
	.string	"_add"
.LASF166:
	.string	"read_humidity"
.LASF48:
	.string	"__ULong"
.LASF136:
	.string	"_getdate_err"
.LASF148:
	.string	"_global_impure_ptr"
.LASF10:
	.string	"uint32_t"
.LASF124:
	.string	"_unused_rand"
.LASF55:
	.string	"_wds"
.LASF117:
	.string	"_glue"
.LASF35:
	.string	"ucDummy19"
.LASF42:
	.string	"_ssize_t"
.LASF134:
	.string	"_l64a_buf"
.LASF51:
	.string	"_Bigint"
.LASF113:
	.string	"_sig_func"
.LASF50:
	.string	"_flock_t"
.LASF87:
	.string	"_nbuf"
.LASF145:
	.string	"_unused"
.LASF65:
	.string	"__tm_isdst"
.LASF127:
	.string	"_localtime_buf"
.LASF58:
	.string	"__tm_min"
.LASF130:
	.string	"_r48"
.LASF132:
	.string	"_mbtowc_state"
.LASF107:
	.string	"_p5s"
.LASF180:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/main.c"
.LASF102:
	.string	"_locale"
.LASF15:
	.string	"UBaseType_t"
.LASF37:
	.string	"StaticTask_t"
.LASF60:
	.string	"__tm_mday"
.LASF129:
	.string	"_rand_next"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
