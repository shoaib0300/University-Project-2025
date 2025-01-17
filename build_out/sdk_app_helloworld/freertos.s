	.file	"freertos.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vAssertCalled,"ax",@progbits
	.align	1
	.globl	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
.LFB4:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/freertos.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 3
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 11 21
	sw	zero,12(sp)
	.loc 1 13 3 is_stmt 1
 #APP
# 13 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/freertos.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 15 3
	.loc 1 15 8 is_stmt 0
 #NO_APP
	li	a5,1
.L2:
	.loc 1 15 32
	lw	a4,12(sp)
	.loc 1 15 8
	bne	a4,a5,.L3
	.loc 1 18 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 16 5 is_stmt 1
 #APP
# 16 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/freertos.c" 1
	NOP
# 0 "" 2
 #NO_APP
	j	.L2
	.cfi_endproc
.LFE4:
	.size	vAssertCalled, .-vAssertCalled
	.section	.text.vApplicationGetIdleTaskMemory,"ax",@progbits
	.align	1
	.globl	vApplicationGetIdleTaskMemory
	.type	vApplicationGetIdleTaskMemory, @function
vApplicationGetIdleTaskMemory:
.LFB5:
	.loc 1 21 1
	.cfi_startproc
.LVL0:
	.loc 1 25 4
	.loc 1 26 4
	.loc 1 30 5
	.loc 1 30 27 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 33 4 is_stmt 1
	.loc 1 33 28 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	sw	a5,0(a1)
	.loc 1 38 5 is_stmt 1
	.loc 1 38 27 is_stmt 0
	li	a5,96
	sw	a5,0(a2)
	.loc 1 39 1
	ret
	.cfi_endproc
.LFE5:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.globl	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LFB6:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 46 4
	.loc 1 47 4
	.loc 1 51 5
	.loc 1 51 28 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,0(a0)
	.loc 1 54 5 is_stmt 1
	.loc 1 54 30 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	sw	a5,0(a1)
	.loc 1 59 5 is_stmt 1
	.loc 1 59 28 is_stmt 0
	li	a5,400
	sw	a5,0(a2)
	.loc 1 60 1
	ret
	.cfi_endproc
.LFE6:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.vApplicationIdleHook,"ax",@progbits
	.align	1
	.globl	vApplicationIdleHook
	.type	vApplicationIdleHook, @function
vApplicationIdleHook:
.LFB7:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
	.loc 1 64 3
	lui	a5,%hi(.LANCHOR4)
	lw	a5,%lo(.LANCHOR4)(a5)
	.loc 1 65 1 is_stmt 0
	ret
	.cfi_endproc
.LFE7:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.globl	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB8:
	.loc 1 68 1 is_stmt 1
	.cfi_startproc
	.loc 1 69 3
	.loc 1 68 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 69 3
	call	xPortGetFreeHeapSize
.LVL2:
	mv	a1,a0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
.L9:
	.loc 1 70 3 is_stmt 1 discriminator 1
	.loc 1 70 14 discriminator 1
	j	.L9
	.cfi_endproc
.LFE8:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.globl	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB9:
	.loc 1 74 1
	.cfi_startproc
.LVL4:
	.loc 1 75 3
	lui	a0,%hi(.LC1)
.LVL5:
	.loc 1 74 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 75 3
	addi	a0,a0,%lo(.LC1)
	.loc 1 74 1
	sw	a1,12(sp)
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 75 3
	call	printf
.LVL6:
	.loc 1 76 3 is_stmt 1
	lw	a1,12(sp)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL7:
.L12:
	.loc 1 77 3 discriminator 1
	.loc 1 77 14 discriminator 1
	j	.L12
	.cfi_endproc
.LFE9:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.globl	uxTopUsedPriority
	.section	.bss.uxIdleTaskStack.2391,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uxIdleTaskStack.2391, @object
	.size	uxIdleTaskStack.2391, 384
uxIdleTaskStack.2391:
	.zero	384
	.section	.bss.uxTimerTaskStack.2398,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	uxTimerTaskStack.2398, @object
	.size	uxTimerTaskStack.2398, 1600
uxTimerTaskStack.2398:
	.zero	1600
	.section	.bss.xIdleTaskTCB.2390,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xIdleTaskTCB.2390, @object
	.size	xIdleTaskTCB.2390, 96
xIdleTaskTCB.2390:
	.zero	96
	.section	.bss.xTimerTaskTCB.2397,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xTimerTaskTCB.2397, @object
	.size	xTimerTaskTCB.2397, 96
xTimerTaskTCB.2397:
	.zero	96
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"malloc failed, currently left memory in bytes: %d\r\n"
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Stack overflow checked\r\n"
	.zero	3
.LC2:
	.string	"Task name: %s\r\n"
	.section	.sdata.uxTopUsedPriority,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	uxTopUsedPriority, @object
	.size	uxTopUsedPriority, 4
uxTopUsedPriority:
	.word	31
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 5 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 8 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 9 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 10 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 11 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcbb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
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
	.4byte	0x86
	.byte	0x5
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3e
	.byte	0x12
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x7
	.4byte	.LASF144
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0xa2
	.byte	0x8
	.4byte	.LASF19
	.byte	0x14
	.byte	0x4
	.2byte	0x414
	.byte	0x8
	.4byte	0xfd
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x419
	.byte	0x10
	.4byte	0xba
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x41a
	.byte	0xb
	.4byte	0xfd
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	0x94
	.4byte	0x10d
	.byte	0xb
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x41f
	.byte	0x22
	.4byte	0xd2
	.byte	0x8
	.4byte	.LASF20
	.byte	0x60
	.byte	0x4
	.2byte	0x447
	.byte	0x10
	.4byte	0x1c3
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x449
	.byte	0xb
	.4byte	0x94
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x44d
	.byte	0x16
	.4byte	0x1c3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x44e
	.byte	0x11
	.4byte	0xae
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x44f
	.byte	0xb
	.4byte	0x94
	.byte	0x30
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x450
	.byte	0xd
	.4byte	0x1d3
	.byte	0x34
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x455
	.byte	0x15
	.4byte	0xae
	.byte	0x44
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x458
	.byte	0x15
	.4byte	0x1e3
	.byte	0x48
	.byte	0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x45b
	.byte	0x15
	.4byte	0x1e3
	.byte	0x50
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x46a
	.byte	0x12
	.4byte	0x75
	.byte	0x58
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x46b
	.byte	0x11
	.4byte	0x5b
	.byte	0x5c
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x46e
	.byte	0x11
	.4byte	0x5b
	.byte	0x5d
	.byte	0
	.byte	0xa
	.4byte	0x10d
	.4byte	0x1d3
	.byte	0xb
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	0x5b
	.4byte	0x1e3
	.byte	0xb
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0xa
	.4byte	0xae
	.4byte	0x1f3
	.byte	0xb
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x477
	.byte	0x3
	.4byte	0x11a
	.byte	0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x46
	.byte	0x25
	.4byte	0x20c
	.byte	0xd
	.byte	0x4
	.4byte	0x212
	.byte	0xe
	.4byte	.LASF142
	.byte	0xd
	.byte	0x4
	.4byte	0x224
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.byte	0xf
	.4byte	0x21d
	.byte	0xd
	.byte	0x4
	.4byte	0x96
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF36
	.byte	0x7
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF37
	.byte	0x7
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF38
	.byte	0x7
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x10
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.byte	0x3
	.4byte	0x282
	.byte	0x11
	.4byte	.LASF39
	.byte	0x7
	.byte	0xa7
	.byte	0xc
	.4byte	0x22f
	.byte	0x11
	.4byte	.LASF40
	.byte	0x7
	.byte	0xa8
	.byte	0x13
	.4byte	0x282
	.byte	0
	.byte	0xa
	.4byte	0x67
	.4byte	0x292
	.byte	0xb
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0x12
	.byte	0x8
	.byte	0x7
	.byte	0xa2
	.byte	0x9
	.4byte	0x2b6
	.byte	0x13
	.4byte	.LASF41
	.byte	0x7
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0xa9
	.byte	0x5
	.4byte	0x260
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0xaa
	.byte	0x3
	.4byte	0x292
	.byte	0x4
	.4byte	.LASF44
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x86
	.byte	0x4
	.4byte	.LASF45
	.byte	0x9
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF46
	.byte	0x8
	.byte	0x23
	.byte	0x1b
	.4byte	0x2ce
	.byte	0x14
	.4byte	.LASF47
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.byte	0x8
	.4byte	0x340
	.byte	0x13
	.4byte	.LASF48
	.byte	0x8
	.byte	0x36
	.byte	0x13
	.4byte	0x340
	.byte	0
	.byte	0x15
	.string	"_k"
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x13
	.4byte	.LASF49
	.byte	0x8
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0x13
	.4byte	.LASF50
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0x13
	.4byte	.LASF51
	.byte	0x8
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x15
	.string	"_x"
	.byte	0x8
	.byte	0x38
	.byte	0xb
	.4byte	0x346
	.byte	0x14
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x2e6
	.byte	0xa
	.4byte	0x2c2
	.4byte	0x356
	.byte	0xb
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF52
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x3d9
	.byte	0x13
	.4byte	.LASF53
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x13
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x13
	.4byte	.LASF55
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x13
	.4byte	.LASF56
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0x13
	.4byte	.LASF57
	.byte	0x8
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x13
	.4byte	.LASF58
	.byte	0x8
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0x13
	.4byte	.LASF59
	.byte	0x8
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x13
	.4byte	.LASF60
	.byte	0x8
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF61
	.byte	0x8
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x16
	.4byte	.LASF62
	.2byte	0x108
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.4byte	0x41e
	.byte	0x13
	.4byte	.LASF63
	.byte	0x8
	.byte	0x50
	.byte	0x9
	.4byte	0x41e
	.byte	0
	.byte	0x13
	.4byte	.LASF64
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0x41e
	.byte	0x80
	.byte	0x17
	.4byte	.LASF65
	.byte	0x8
	.byte	0x53
	.byte	0xa
	.4byte	0x2c2
	.2byte	0x100
	.byte	0x17
	.4byte	.LASF66
	.byte	0x8
	.byte	0x56
	.byte	0xa
	.4byte	0x2c2
	.2byte	0x104
	.byte	0
	.byte	0xa
	.4byte	0x94
	.4byte	0x42e
	.byte	0xb
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x190
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.4byte	0x471
	.byte	0x13
	.4byte	.LASF48
	.byte	0x8
	.byte	0x63
	.byte	0x12
	.4byte	0x471
	.byte	0
	.byte	0x13
	.4byte	.LASF68
	.byte	0x8
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0x13
	.4byte	.LASF69
	.byte	0x8
	.byte	0x66
	.byte	0x9
	.4byte	0x477
	.byte	0x8
	.byte	0x13
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.byte	0x1e
	.4byte	0x3d9
	.byte	0x88
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x42e
	.byte	0xa
	.4byte	0x487
	.4byte	0x487
	.byte	0xb
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x48d
	.byte	0x18
	.byte	0x14
	.4byte	.LASF70
	.byte	0x8
	.byte	0x8
	.byte	0x7a
	.byte	0x8
	.4byte	0x4b6
	.byte	0x13
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7b
	.byte	0x11
	.4byte	0x4b6
	.byte	0
	.byte	0x13
	.4byte	.LASF72
	.byte	0x8
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x67
	.byte	0x14
	.4byte	.LASF73
	.byte	0x68
	.byte	0x8
	.byte	0xba
	.byte	0x8
	.4byte	0x5ff
	.byte	0x15
	.string	"_p"
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0x4b6
	.byte	0
	.byte	0x15
	.string	"_r"
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x15
	.string	"_w"
	.byte	0x8
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x13
	.4byte	.LASF74
	.byte	0x8
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0x13
	.4byte	.LASF75
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0x15
	.string	"_bf"
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x48e
	.byte	0x10
	.byte	0x13
	.4byte	.LASF76
	.byte	0x8
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x13
	.4byte	.LASF77
	.byte	0x8
	.byte	0xc8
	.byte	0xa
	.4byte	0x94
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF78
	.byte	0x8
	.byte	0xca
	.byte	0xe
	.4byte	0x777
	.byte	0x20
	.byte	0x13
	.4byte	.LASF79
	.byte	0x8
	.byte	0xcc
	.byte	0xe
	.4byte	0x79b
	.byte	0x24
	.byte	0x13
	.4byte	.LASF80
	.byte	0x8
	.byte	0xcf
	.byte	0xd
	.4byte	0x7bf
	.byte	0x28
	.byte	0x13
	.4byte	.LASF81
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0x7d9
	.byte	0x2c
	.byte	0x15
	.string	"_ub"
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x48e
	.byte	0x30
	.byte	0x15
	.string	"_up"
	.byte	0x8
	.byte	0xd4
	.byte	0x12
	.4byte	0x4b6
	.byte	0x38
	.byte	0x15
	.string	"_ur"
	.byte	0x8
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0x13
	.4byte	.LASF82
	.byte	0x8
	.byte	0xd8
	.byte	0x11
	.4byte	0x7df
	.byte	0x40
	.byte	0x13
	.4byte	.LASF83
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x7ef
	.byte	0x43
	.byte	0x15
	.string	"_lb"
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x48e
	.byte	0x44
	.byte	0x13
	.4byte	.LASF84
	.byte	0x8
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0x13
	.4byte	.LASF85
	.byte	0x8
	.byte	0xe0
	.byte	0xa
	.4byte	0x23c
	.byte	0x50
	.byte	0x13
	.4byte	.LASF86
	.byte	0x8
	.byte	0xe3
	.byte	0x12
	.4byte	0x61d
	.byte	0x54
	.byte	0x13
	.4byte	.LASF87
	.byte	0x8
	.byte	0xe7
	.byte	0xc
	.4byte	0x2da
	.byte	0x58
	.byte	0x13
	.4byte	.LASF88
	.byte	0x8
	.byte	0xe9
	.byte	0xe
	.4byte	0x2b6
	.byte	0x5c
	.byte	0x13
	.4byte	.LASF89
	.byte	0x8
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x19
	.4byte	0x254
	.4byte	0x61d
	.byte	0x1a
	.4byte	0x61d
	.byte	0x1a
	.4byte	0x94
	.byte	0x1a
	.4byte	0x771
	.byte	0x1a
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x628
	.byte	0xf
	.4byte	0x61d
	.byte	0x1b
	.4byte	.LASF90
	.2byte	0x428
	.byte	0x8
	.2byte	0x265
	.byte	0x8
	.4byte	0x771
	.byte	0x9
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x9
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x26c
	.byte	0xb
	.4byte	0x84b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x26c
	.byte	0x14
	.4byte	0x84b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x84b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x9
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x26f
	.byte	0x8
	.4byte	0xa4b
	.byte	0x14
	.byte	0x9
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x9
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x273
	.byte	0x16
	.4byte	0xa60
	.byte	0x34
	.byte	0x9
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x9
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x277
	.byte	0xa
	.4byte	0xa71
	.byte	0x3c
	.byte	0x9
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x27a
	.byte	0x13
	.4byte	0x340
	.byte	0x40
	.byte	0x9
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x9
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x27c
	.byte	0x13
	.4byte	0x340
	.byte	0x48
	.byte	0x9
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x27d
	.byte	0x14
	.4byte	0xa77
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x9
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x281
	.byte	0x9
	.4byte	0x771
	.byte	0x54
	.byte	0x9
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x2a4
	.byte	0x7
	.4byte	0xa26
	.byte	0x58
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x471
	.2byte	0x148
	.byte	0x1c
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x42e
	.2byte	0x14c
	.byte	0x1c
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x2ad
	.byte	0xc
	.4byte	0xa88
	.2byte	0x2dc
	.byte	0x1c
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x80c
	.2byte	0x2e0
	.byte	0x1c
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x2b4
	.byte	0xa
	.4byte	0xa94
	.2byte	0x2ec
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x21d
	.byte	0xd
	.byte	0x4
	.4byte	0x5ff
	.byte	0x19
	.4byte	0x254
	.4byte	0x79b
	.byte	0x1a
	.4byte	0x61d
	.byte	0x1a
	.4byte	0x94
	.byte	0x1a
	.4byte	0x217
	.byte	0x1a
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x77d
	.byte	0x19
	.4byte	0x248
	.4byte	0x7bf
	.byte	0x1a
	.4byte	0x61d
	.byte	0x1a
	.4byte	0x94
	.byte	0x1a
	.4byte	0x248
	.byte	0x1a
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x7a1
	.byte	0x19
	.4byte	0x25
	.4byte	0x7d9
	.byte	0x1a
	.4byte	0x61d
	.byte	0x1a
	.4byte	0x94
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x7c5
	.byte	0xa
	.4byte	0x67
	.4byte	0x7ef
	.byte	0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	0x67
	.4byte	0x7ff
	.byte	0xb
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x124
	.byte	0x18
	.4byte	0x4bc
	.byte	0x8
	.4byte	.LASF113
	.byte	0xc
	.byte	0x8
	.2byte	0x128
	.byte	0x8
	.4byte	0x845
	.byte	0x9
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x12a
	.byte	0x11
	.4byte	0x845
	.byte	0
	.byte	0x9
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x9
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x12c
	.byte	0xb
	.4byte	0x84b
	.byte	0x8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x80c
	.byte	0xd
	.byte	0x4
	.4byte	0x7ff
	.byte	0x8
	.4byte	.LASF116
	.byte	0xe
	.byte	0x8
	.2byte	0x144
	.byte	0x8
	.4byte	0x88a
	.byte	0x9
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x145
	.byte	0x12
	.4byte	0x88a
	.byte	0
	.byte	0x9
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x146
	.byte	0x12
	.4byte	0x88a
	.byte	0x6
	.byte	0x9
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x147
	.byte	0x12
	.4byte	0x6e
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	0x6e
	.4byte	0x89a
	.byte	0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1d
	.byte	0xd0
	.byte	0x8
	.2byte	0x285
	.byte	0x7
	.4byte	0x9af
	.byte	0x9
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x9
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x288
	.byte	0x12
	.4byte	0x771
	.byte	0x4
	.byte	0x9
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x289
	.byte	0x10
	.4byte	0x9af
	.byte	0x8
	.byte	0x9
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x28a
	.byte	0x17
	.4byte	0x356
	.byte	0x24
	.byte	0x9
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x9
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x8d
	.byte	0x50
	.byte	0x9
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x851
	.byte	0x58
	.byte	0x9
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x28e
	.byte	0x16
	.4byte	0x2b6
	.byte	0x68
	.byte	0x9
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x28f
	.byte	0x16
	.4byte	0x2b6
	.byte	0x70
	.byte	0x9
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x290
	.byte	0x16
	.4byte	0x2b6
	.byte	0x78
	.byte	0x9
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x291
	.byte	0x10
	.4byte	0x9bf
	.byte	0x80
	.byte	0x9
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x292
	.byte	0x10
	.4byte	0x9cf
	.byte	0x88
	.byte	0x9
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x9
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x294
	.byte	0x16
	.4byte	0x2b6
	.byte	0xa4
	.byte	0x9
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x295
	.byte	0x16
	.4byte	0x2b6
	.byte	0xac
	.byte	0x9
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x296
	.byte	0x16
	.4byte	0x2b6
	.byte	0xb4
	.byte	0x9
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x297
	.byte	0x16
	.4byte	0x2b6
	.byte	0xbc
	.byte	0x9
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x298
	.byte	0x16
	.4byte	0x2b6
	.byte	0xc4
	.byte	0x9
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xa
	.4byte	0x21d
	.4byte	0x9bf
	.byte	0xb
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xa
	.4byte	0x21d
	.4byte	0x9cf
	.byte	0xb
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0x21d
	.4byte	0x9df
	.byte	0xb
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1d
	.byte	0xf0
	.byte	0x8
	.2byte	0x29e
	.byte	0x7
	.4byte	0xa06
	.byte	0x9
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0xa06
	.byte	0
	.byte	0x9
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x2a2
	.byte	0x18
	.4byte	0xa16
	.byte	0x78
	.byte	0
	.byte	0xa
	.4byte	0x4b6
	.4byte	0xa16
	.byte	0xb
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xa
	.4byte	0x2c
	.4byte	0xa26
	.byte	0xb
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x8
	.2byte	0x283
	.byte	0x3
	.4byte	0xa4b
	.byte	0x1f
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x29a
	.byte	0xb
	.4byte	0x89a
	.byte	0x1f
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x9df
	.byte	0
	.byte	0xa
	.4byte	0x21d
	.4byte	0xa5b
	.byte	0xb
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0xe
	.4byte	.LASF143
	.byte	0xd
	.byte	0x4
	.4byte	0xa5b
	.byte	0x20
	.4byte	0xa71
	.byte	0x1a
	.4byte	0x61d
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0xa66
	.byte	0xd
	.byte	0x4
	.4byte	0x340
	.byte	0x20
	.4byte	0xa88
	.byte	0x1a
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0xa8e
	.byte	0xd
	.byte	0x4
	.4byte	0xa7d
	.byte	0xa
	.4byte	0x7ff
	.4byte	0xaa4
	.byte	0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x21
	.4byte	.LASF145
	.byte	0x8
	.2byte	0x333
	.byte	0x17
	.4byte	0x61d
	.byte	0x21
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x334
	.byte	0x1d
	.4byte	0x623
	.byte	0x22
	.4byte	.LASF147
	.byte	0x1
	.byte	0x7
	.byte	0x13
	.4byte	0x81
	.byte	0x5
	.byte	0x3
	.4byte	uxTopUsedPriority
	.byte	0x23
	.4byte	.LASF150
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb38
	.byte	0x24
	.4byte	.LASF148
	.byte	0x1
	.byte	0x49
	.byte	0x31
	.4byte	0x200
	.4byte	.LLST0
	.byte	0x24
	.4byte	.LASF149
	.byte	0x1
	.byte	0x49
	.byte	0x3e
	.4byte	0x771
	.4byte	.LLST1
	.byte	0x25
	.4byte	.LVL6
	.4byte	0xca6
	.4byte	0xb1d
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x27
	.4byte	.LVL7
	.4byte	0xca6
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF151
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6b
	.byte	0x28
	.4byte	.LVL2
	.4byte	0xcb2
	.byte	0x27
	.4byte	.LVL3
	.4byte	0xca6
	.byte	0x26
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF171
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF152
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe2
	.byte	0x2a
	.4byte	.LASF153
	.byte	0x1
	.byte	0x29
	.byte	0x34
	.4byte	0xbe2
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2a
	.byte	0x11
	.4byte	0xbee
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2a
	.byte	0x34
	.4byte	0xbf4
	.byte	0x1
	.byte	0x5c
	.byte	0x2b
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2e
	.byte	0x18
	.4byte	0x1f3
	.byte	0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.2397
	.byte	0x2b
	.4byte	.LASF157
	.byte	0x1
	.byte	0x2f
	.byte	0x17
	.4byte	0xbfa
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.2398
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0xbe8
	.byte	0xd
	.byte	0x4
	.4byte	0x1f3
	.byte	0xd
	.byte	0x4
	.4byte	0x229
	.byte	0xd
	.byte	0x4
	.4byte	0x75
	.byte	0xa
	.4byte	0x96
	.4byte	0xc0b
	.byte	0x2c
	.4byte	0x2c
	.2byte	0x18f
	.byte	0
	.byte	0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xc70
	.byte	0x2a
	.4byte	.LASF159
	.byte	0x1
	.byte	0x14
	.byte	0x33
	.4byte	0xbe2
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.4byte	.LASF160
	.byte	0x1
	.byte	0x14
	.byte	0x57
	.4byte	0xbee
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.4byte	.LASF161
	.byte	0x1
	.byte	0x14
	.byte	0x79
	.4byte	0xbf4
	.byte	0x1
	.byte	0x5c
	.byte	0x2b
	.4byte	.LASF162
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.4byte	0x1f3
	.byte	0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.2390
	.byte	0x2b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x1a
	.byte	0x17
	.4byte	0xc70
	.byte	0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.2391
	.byte	0
	.byte	0xa
	.4byte	0x96
	.4byte	0xc80
	.byte	0xb
	.4byte	0x2c
	.byte	0x5f
	.byte	0
	.byte	0x23
	.4byte	.LASF164
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xca6
	.byte	0x2b
	.4byte	.LASF165
	.byte	0x1
	.byte	0xb
	.byte	0x15
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x2d
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xb
	.byte	0x94
	.byte	0x8
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"StaticTask_t"
.LASF149:
	.string	"pcTaskName"
.LASF167:
	.string	"xPortGetFreeHeapSize"
.LASF161:
	.string	"pulIdleTaskStackSize"
.LASF62:
	.string	"_on_exit_args"
.LASF27:
	.string	"uxDummy10"
.LASF28:
	.string	"uxDummy12"
.LASF129:
	.string	"_wctomb_state"
.LASF142:
	.string	"tskTaskControlBlock"
.LASF126:
	.string	"_r48"
.LASF165:
	.string	"ulSetTo1ToExitFunction"
.LASF131:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"StackType_t"
.LASF76:
	.string	"_lbfsize"
.LASF74:
	.string	"_flags"
.LASF91:
	.string	"_errno"
.LASF31:
	.string	"uxDummy20"
.LASF156:
	.string	"xTimerTaskTCB"
.LASF45:
	.string	"_LOCK_RECURSIVE_T"
.LASF78:
	.string	"_read"
.LASF133:
	.string	"_mbrlen_state"
.LASF171:
	.string	"vApplicationIdleHook"
.LASF93:
	.string	"_stdout"
.LASF37:
	.string	"_fpos_t"
.LASF69:
	.string	"_fns"
.LASF77:
	.string	"_cookie"
.LASF47:
	.string	"_Bigint"
.LASF59:
	.string	"__tm_wday"
.LASF101:
	.string	"_result"
.LASF9:
	.string	"uint32_t"
.LASF55:
	.string	"__tm_hour"
.LASF41:
	.string	"__count"
.LASF54:
	.string	"__tm_min"
.LASF145:
	.string	"_impure_ptr"
.LASF139:
	.string	"_nextf"
.LASF116:
	.string	"_rand48"
.LASF102:
	.string	"_result_k"
.LASF11:
	.string	"long long unsigned int"
.LASF122:
	.string	"_asctime_buf"
.LASF73:
	.string	"__sFILE"
.LASF51:
	.string	"_wds"
.LASF112:
	.string	"__FILE"
.LASF85:
	.string	"_offset"
.LASF96:
	.string	"_emergency"
.LASF144:
	.string	"TrapNetCounter"
.LASF53:
	.string	"__tm_sec"
.LASF60:
	.string	"__tm_yday"
.LASF95:
	.string	"_inc"
.LASF68:
	.string	"_ind"
.LASF18:
	.string	"StaticListItem_t"
.LASF48:
	.string	"_next"
.LASF135:
	.string	"_mbsrtowcs_state"
.LASF123:
	.string	"_localtime_buf"
.LASF17:
	.string	"pvDummy3"
.LASF23:
	.string	"uxDummy5"
.LASF26:
	.string	"uxDummy9"
.LASF42:
	.string	"__value"
.LASF103:
	.string	"_p5s"
.LASF137:
	.string	"_wcsrtombs_state"
.LASF127:
	.string	"_mblen_state"
.LASF34:
	.string	"char"
.LASF56:
	.string	"__tm_mday"
.LASF109:
	.string	"_sig_func"
.LASF134:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_atexit0"
.LASF14:
	.string	"UBaseType_t"
.LASF151:
	.string	"vApplicationMallocFailedHook"
.LASF46:
	.string	"_flock_t"
.LASF39:
	.string	"__wch"
.LASF170:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF6:
	.string	"uint8_t"
.LASF81:
	.string	"_close"
.LASF99:
	.string	"__sdidinit"
.LASF154:
	.string	"ppxTimerTaskStackBuffer"
.LASF158:
	.string	"vApplicationGetIdleTaskMemory"
.LASF92:
	.string	"_stdin"
.LASF124:
	.string	"_gamma_signgam"
.LASF21:
	.string	"pxDummy1"
.LASF30:
	.string	"ucDummy19"
.LASF4:
	.string	"long long int"
.LASF24:
	.string	"pxDummy6"
.LASF166:
	.string	"printf"
.LASF71:
	.string	"_base"
.LASF164:
	.string	"vAssertCalled"
.LASF104:
	.string	"_freelist"
.LASF118:
	.string	"_mult"
.LASF44:
	.string	"__ULong"
.LASF136:
	.string	"_wcrtomb_state"
.LASF13:
	.string	"BaseType_t"
.LASF75:
	.string	"_file"
.LASF159:
	.string	"ppxIdleTaskTCBBuffer"
.LASF100:
	.string	"__cleanup"
.LASF155:
	.string	"pulTimerTaskStackSize"
.LASF43:
	.string	"_mbstate_t"
.LASF168:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF63:
	.string	"_fnargs"
.LASF61:
	.string	"__tm_isdst"
.LASF33:
	.string	"TaskHandle_t"
.LASF138:
	.string	"_h_errno"
.LASF15:
	.string	"TickType_t"
.LASF148:
	.string	"xTask"
.LASF57:
	.string	"__tm_mon"
.LASF25:
	.string	"ucDummy7"
.LASF79:
	.string	"_write"
.LASF67:
	.string	"_atexit"
.LASF88:
	.string	"_mbstate"
.LASF169:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/freertos.c"
.LASF150:
	.string	"vApplicationStackOverflowHook"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"long int"
.LASF111:
	.string	"__sf"
.LASF50:
	.string	"_sign"
.LASF147:
	.string	"uxTopUsedPriority"
.LASF86:
	.string	"_data"
.LASF40:
	.string	"__wchb"
.LASF146:
	.string	"_global_impure_ptr"
.LASF153:
	.string	"ppxTimerTaskTCBBuffer"
.LASF58:
	.string	"__tm_year"
.LASF20:
	.string	"xSTATIC_TCB"
.LASF141:
	.string	"_unused"
.LASF107:
	.string	"_new"
.LASF105:
	.string	"_cvtlen"
.LASF49:
	.string	"_maxwds"
.LASF130:
	.string	"_l64a_buf"
.LASF152:
	.string	"vApplicationGetTimerTaskMemory"
.LASF29:
	.string	"ulDummy18"
.LASF19:
	.string	"xSTATIC_LIST_ITEM"
.LASF84:
	.string	"_blksize"
.LASF52:
	.string	"__tm"
.LASF163:
	.string	"uxIdleTaskStack"
.LASF87:
	.string	"_lock"
.LASF10:
	.string	"long unsigned int"
.LASF114:
	.string	"_niobs"
.LASF35:
	.string	"wint_t"
.LASF5:
	.string	"int32_t"
.LASF64:
	.string	"_dso_handle"
.LASF160:
	.string	"ppxIdleTaskStackBuffer"
.LASF106:
	.string	"_cvtbuf"
.LASF7:
	.string	"unsigned char"
.LASF132:
	.string	"_getdate_err"
.LASF119:
	.string	"_add"
.LASF16:
	.string	"xDummy2"
.LASF22:
	.string	"xDummy3"
.LASF70:
	.string	"__sbuf"
.LASF113:
	.string	"_glue"
.LASF110:
	.string	"__sglue"
.LASF121:
	.string	"_strtok_last"
.LASF128:
	.string	"_mbtowc_state"
.LASF98:
	.string	"_locale"
.LASF38:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF115:
	.string	"_iobs"
.LASF90:
	.string	"_reent"
.LASF8:
	.string	"short unsigned int"
.LASF157:
	.string	"uxTimerTaskStack"
.LASF65:
	.string	"_fntypes"
.LASF72:
	.string	"_size"
.LASF36:
	.string	"_off_t"
.LASF83:
	.string	"_nbuf"
.LASF120:
	.string	"_unused_rand"
.LASF97:
	.string	"_unspecified_locale_info"
.LASF89:
	.string	"_flags2"
.LASF66:
	.string	"_is_cxa"
.LASF162:
	.string	"xIdleTaskTCB"
.LASF117:
	.string	"_seed"
.LASF125:
	.string	"_rand_next"
.LASF143:
	.string	"__locale_t"
.LASF80:
	.string	"_seek"
.LASF94:
	.string	"_stderr"
.LASF140:
	.string	"_nmalloc"
.LASF82:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
