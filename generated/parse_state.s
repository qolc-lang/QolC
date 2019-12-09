	.file	"parse_state.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
.LC0:
	.ascii ",\0"
.LC1:
	.ascii "comma\0"
.LC2:
	.ascii "end of command\0"
	.text
	.globl	make_parse_stateList
	.def	make_parse_stateList;	.scl	2;	.type	32;	.endef
	.seh_proc	make_parse_stateList
make_parse_stateList:
.LFB9:
	.file 1 "./src/parse_state.c"
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$320, %rsp
	.seh_stackalloc	320
	.cfi_def_cfa_offset 336
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 208
	.seh_endprologue
	movq	%rcx, -88(%rbp)
	.loc 1 6 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 184(%rbp)
	xorl	%ecx, %ecx
	.loc 1 7 0
	movl	$216, %ecx
	call	malloc
	movq	%rax, -48(%rbp)
	.loc 1 8 0
	movl	$0, -68(%rbp)
	.loc 1 9 0
	movl	$0, -64(%rbp)
	.loc 1 15 0
	leaq	-32(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 16 0
	leaq	80(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 18 0
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 21 0
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 23 0
	jmp	.L2
.L9:
	.loc 1 24 0
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	.loc 1 25 0
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	strtok
	movq	%rax, -40(%rbp)
	.loc 1 26 0
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 28 0
	leaq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L3
	.loc 1 29 0
	leaq	80(%rbp), %rax
	movl	$2567207, (%rax)
	.loc 1 30 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, -40(%rbp)
	.loc 1 31 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, -40(%rbp)
	.loc 1 32 0
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 33 0
	leaq	80(%rbp), %r8
	leaq	-32(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push_parseList
	.loc 1 34 0
	leaq	-32(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 35 0
	leaq	80(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 36 0
	addl	$1, -68(%rbp)
	.loc 1 37 0
	jmp	.L2
.L3:
	.loc 1 40 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, -40(%rbp)
	.loc 1 42 0
	cmpq	$0, -40(%rbp)
	je	.L4
	.loc 1 43 0
	movq	-40(%rbp), %rdx
	leaq	80(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L5
.L4:
	.loc 1 46 0
	leaq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	.loc 1 47 0
	leaq	80(%rbp), %rax
	movl	$661543975, (%rax)
	movb	$0, 4(%rax)
	jmp	.L5
.L6:
	.loc 1 50 0
	movl	$1, -64(%rbp)
.L5:
	.loc 1 54 0
	cmpl	$0, -64(%rbp)
	jne	.L12
	.loc 1 58 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, -40(%rbp)
	.loc 1 60 0
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 61 0
	leaq	80(%rbp), %r8
	leaq	-32(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push_parseList
	.loc 1 62 0
	leaq	-32(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 63 0
	leaq	80(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 64 0
	addl	$1, -68(%rbp)
.L2:
	.loc 1 23 0
	cmpq	$0, -56(%rbp)
	jne	.L9
	jmp	.L8
.L12:
	.loc 1 55 0
	nop
.L8:
	.loc 1 67 0
	movq	-48(%rbp), %rax
	.loc 1 68 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	184(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	.L11
	call	__stack_chk_fail
.L11:
	addq	$320, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -312
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	removeLast
	.def	removeLast;	.scl	2;	.type	32;	.endef
	.seh_proc	removeLast
removeLast:
.LFB10:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 74 0
	movl	$0, -12(%rbp)
	.loc 1 76 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	.loc 1 77 0
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 78 0
	movq	16(%rbp), %rcx
	call	free
	.loc 1 79 0
	movl	-12(%rbp), %eax
	jmp	.L15
.L14:
	.loc 1 82 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 83 0
	jmp	.L16
.L17:
	.loc 1 84 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -8(%rbp)
.L16:
	.loc 1 83 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	.loc 1 87 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 88 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 89 0
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
	.loc 1 90 0
	movl	-12(%rbp), %eax
.L15:
	.loc 1 91 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "Counter-Position %d : %d\12\0"
.LC4:
	.ascii "Counter-Type %d : %s\12\0"
.LC5:
	.ascii "Counter-Value %d : %s\12\0"
	.text
	.globl	print_parseStateList
	.def	print_parseStateList;	.scl	2;	.type	32;	.endef
	.seh_proc	print_parseStateList
print_parseStateList:
.LFB11:
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 97 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 98 0
	movl	$0, -12(%rbp)
	.loc 1 101 0
	jmp	.L19
.L20:
	.loc 1 102 0
	addl	$1, -12(%rbp)
	.loc 1 103 0
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	.loc 1 104 0
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	.loc 1 105 0
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
	.loc 1 106 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -8(%rbp)
.L19:
	.loc 1 101 0
	cmpq	$0, -8(%rbp)
	jne	.L20
	.loc 1 108 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	push_parseList
	.def	push_parseList;	.scl	2;	.type	32;	.endef
	.seh_proc	push_parseList
push_parseList:
.LFB12:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 114 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 115 0
	jmp	.L22
.L23:
	.loc 1 116 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -8(%rbp)
.L22:
	.loc 1 115 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	.loc 1 118 0
	movl	$216, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 208(%rax)
	.loc 1 119 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 120 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	leaq	4(%rax), %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 121 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	leaq	104(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 122 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	$0, 208(%rax)
	.loc 1 123 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "./src/../inc/lexer_node.h"
	.file 8 "./src/../inc/parse_state.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xf1f
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/parse_state.c\0"
	.ascii "/cygdrive/c/Users/User/Documents/QolC\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x2
	.byte	0xd8
	.long	0x14e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x171
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x19e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x17e
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x142
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x1a0
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x142
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x132
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x213
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1e0
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x213
	.byte	0
	.uleb128 0x9
	.long	0xf7
	.long	0x223
	.uleb128 0xa
	.long	0x14e
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x24c
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x12b
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x223
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x18f
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x132
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2dd
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2dd
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x12b
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12b
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x12b
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12b
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2e3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x27d
	.uleb128 0x9
	.long	0x26e
	.long	0x2f3
	.uleb128 0xa
	.long	0x14e
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x3a1
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x12b
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x12b
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x12b
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x12b
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x12b
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x12b
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x12b
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x12b
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x12b
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3f7
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3f7
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3f7
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x26e
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x26e
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x19e
	.long	0x407
	.uleb128 0xa
	.long	0x14e
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x44e
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x44e
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x12b
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x454
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x3a1
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x407
	.uleb128 0x9
	.long	0x464
	.long	0x464
	.uleb128 0xa
	.long	0x14e
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x46a
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x497
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x497
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x12b
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf7
	.uleb128 0x14
	.long	0x1d0
	.long	0x4bb
	.uleb128 0x15
	.long	0x4bb
	.uleb128 0x15
	.long	0x19e
	.uleb128 0x15
	.long	0x665
	.uleb128 0x15
	.long	0x163
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4c6
	.uleb128 0x4
	.long	0x4bb
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x665
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x12b
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8f0
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8f0
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8f0
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x12b
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbb2
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x12b
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbce
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x12b
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbdf
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2dd
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x12b
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2dd
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbe5
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x12b
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x665
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb88
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x44e
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x407
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbf6
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8ac
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xc02
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x171
	.uleb128 0xe
	.byte	0x8
	.long	0x49d
	.uleb128 0x14
	.long	0x1d0
	.long	0x68f
	.uleb128 0x15
	.long	0x4bb
	.uleb128 0x15
	.long	0x19e
	.uleb128 0x15
	.long	0x68f
	.uleb128 0x15
	.long	0x163
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x179
	.uleb128 0xe
	.byte	0x8
	.long	0x671
	.uleb128 0x14
	.long	0x1b0
	.long	0x6b9
	.uleb128 0x15
	.long	0x4bb
	.uleb128 0x15
	.long	0x19e
	.uleb128 0x15
	.long	0x1b0
	.uleb128 0x15
	.long	0x12b
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x69b
	.uleb128 0x14
	.long	0x12b
	.long	0x6d3
	.uleb128 0x15
	.long	0x4bb
	.uleb128 0x15
	.long	0x19e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6bf
	.uleb128 0x9
	.long	0xf7
	.long	0x6e9
	.uleb128 0xa
	.long	0x14e
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xf7
	.long	0x6f9
	.uleb128 0xa
	.long	0x14e
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x879
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x497
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x12b
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x12b
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x108
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x108
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x46b
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x12b
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4bb
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x19e
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x66b
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x695
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b9
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6d3
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x46b
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x497
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x12b
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d9
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e9
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x46b
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x12b
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x12b
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x1a0
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x897
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x25e
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x24c
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1bf
	.long	0x897
	.uleb128 0x15
	.long	0x4bb
	.uleb128 0x15
	.long	0x19e
	.uleb128 0x15
	.long	0x1bf
	.uleb128 0x15
	.long	0x12b
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x879
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f9
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8ea
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8ea
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x12b
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8f0
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8ac
	.uleb128 0xe
	.byte	0x8
	.long	0x89d
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x934
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x934
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x934
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x115
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x115
	.long	0x944
	.uleb128 0xa
	.long	0x14e
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaf1
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x132
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x665
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaf1
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2f3
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x12b
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xb01
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8f6
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x24c
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x24c
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x24c
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb1b
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb2b
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x12b
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x24c
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x24c
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x24c
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x24c
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x24c
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x12b
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x171
	.long	0xb01
	.uleb128 0xa
	.long	0x14e
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x171
	.long	0xb2b
	.uleb128 0xa
	.long	0x14e
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x171
	.long	0xb3b
	.uleb128 0xa
	.long	0x14e
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb68
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb68
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb78
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x497
	.long	0xb78
	.uleb128 0xa
	.long	0x14e
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x132
	.long	0xb88
	.uleb128 0xa
	.long	0x14e
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbb2
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x944
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb3b
	.byte	0
	.uleb128 0x9
	.long	0x171
	.long	0xbc2
	.uleb128 0xa
	.long	0x14e
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbc2
	.uleb128 0x1f
	.long	0xbdf
	.uleb128 0x15
	.long	0x4bb
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbd4
	.uleb128 0xe
	.byte	0x8
	.long	0x2dd
	.uleb128 0x1f
	.long	0xbf6
	.uleb128 0x15
	.long	0x12b
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbfc
	.uleb128 0xe
	.byte	0x8
	.long	0xbeb
	.uleb128 0x9
	.long	0x89d
	.long	0xc12
	.uleb128 0xa
	.long	0x14e
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4bb
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4c1
	.uleb128 0x9
	.long	0x179
	.long	0xc4c
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc41
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc4c
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xa0
	.byte	0x7
	.byte	0x6
	.long	0xc88
	.uleb128 0xc
	.ascii "token\0"
	.byte	0x7
	.byte	0x8
	.long	0xc88
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x9
	.long	0xc98
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.long	0x171
	.long	0xc98
	.uleb128 0xa
	.long	0x14e
	.byte	0x95
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc60
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x7
	.byte	0xa
	.long	0xc60
	.uleb128 0x23
	.secrel32	.LASF2
	.byte	0xd8
	.byte	0x8
	.byte	0x6
	.long	0xcea
	.uleb128 0xc
	.ascii "pos\0"
	.byte	0x8
	.byte	0x8
	.long	0x12b
	.byte	0
	.uleb128 0xc
	.ascii "type\0"
	.byte	0x8
	.byte	0x9
	.long	0xcea
	.byte	0x4
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0xa
	.long	0xcea
	.byte	0x68
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0xb
	.long	0xcfa
	.byte	0xd0
	.byte	0
	.uleb128 0x9
	.long	0x171
	.long	0xcfa
	.uleb128 0xa
	.long	0x14e
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xca9
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xc
	.long	0xca9
	.uleb128 0x25
	.ascii "push_parseList\0"
	.byte	0x1
	.byte	0x71
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7e
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x71
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "pos\0"
	.byte	0x1
	.byte	0x71
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "type\0"
	.byte	0x1
	.byte	0x71
	.long	0x665
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.ascii "value\0"
	.byte	0x1
	.byte	0x71
	.long	0x665
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x72
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xd00
	.uleb128 0x25
	.ascii "print_parseStateList\0"
	.byte	0x1
	.byte	0x60
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xde2
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x60
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x61
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "counter\0"
	.byte	0x1
	.byte	0x62
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.ascii "removeLast\0"
	.byte	0x1
	.byte	0x49
	.long	0x12b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xe39
	.uleb128 0x26
	.ascii "head\0"
	.byte	0x1
	.byte	0x49
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.ascii "retval\0"
	.byte	0x1
	.byte	0x4a
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x52
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.ascii "make_parse_stateList\0"
	.byte	0x1
	.byte	0x6
	.long	0xd7e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1c
	.uleb128 0x26
	.ascii "tokens\0"
	.byte	0x1
	.byte	0x6
	.long	0xf1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x28
	.ascii "my_parse_state\0"
	.byte	0x1
	.byte	0x7
	.long	0xd7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.ascii "counter\0"
	.byte	0x1
	.byte	0x8
	.long	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.ascii "flagTwice\0"
	.byte	0x1
	.byte	0x9
	.long	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.ascii "theSplit\0"
	.byte	0x1
	.byte	0xa
	.long	0x665
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.ascii "thePos\0"
	.byte	0x1
	.byte	0xb
	.long	0x12b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x28
	.ascii "theType\0"
	.byte	0x1
	.byte	0xc
	.long	0xcea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.ascii "theValue\0"
	.byte	0x1
	.byte	0xd
	.long	0xcea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x12
	.long	0xf1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc9e
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF3:
	.ascii "current\0"
.LASF2:
	.ascii "parse_state\0"
.LASF1:
	.ascii "lexer_node\0"
.LASF0:
	.ascii "_on_exit_args\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	strtok;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
