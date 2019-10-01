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
	subq	$288, %rsp
	.seh_stackalloc	288
	.cfi_def_cfa_offset 304
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 176
	.seh_endprologue
	movq	%rcx, 176(%rbp)
	.loc 1 7 0
	movl	$216, %ecx
	call	malloc
	movq	%rax, 136(%rbp)
	.loc 1 8 0
	movl	$0, 156(%rbp)
	.loc 1 9 0
	movl	$0, 152(%rbp)
	.loc 1 15 0
	leaq	16(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 16 0
	leaq	-96(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 18 0
	movq	176(%rbp), %rax
	movq	%rax, 144(%rbp)
	.loc 1 21 0
	movq	144(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 23 0
	jmp	.L2
.L9:
	.loc 1 24 0
	movl	156(%rbp), %eax
	movl	%eax, 132(%rbp)
	.loc 1 25 0
	movq	144(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	strtok
	movq	%rax, 120(%rbp)
	.loc 1 26 0
	movq	120(%rbp), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 28 0
	leaq	16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L3
	.loc 1 29 0
	leaq	-96(%rbp), %rax
	movl	$2567207, (%rax)
	.loc 1 30 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 120(%rbp)
	.loc 1 31 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 120(%rbp)
	.loc 1 32 0
	movq	144(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 33 0
	leaq	-96(%rbp), %r8
	leaq	16(%rbp), %rcx
	movl	132(%rbp), %edx
	movq	136(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push_parseList
	.loc 1 34 0
	leaq	16(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 35 0
	leaq	-96(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 36 0
	addl	$1, 156(%rbp)
	.loc 1 37 0
	jmp	.L2
.L3:
	.loc 1 40 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 120(%rbp)
	.loc 1 42 0
	cmpq	$0, 120(%rbp)
	je	.L4
	.loc 1 43 0
	movq	120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L5
.L4:
	.loc 1 46 0
	leaq	16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	.loc 1 47 0
	leaq	-96(%rbp), %rax
	movl	$661543975, (%rax)
	movb	$0, 4(%rax)
	jmp	.L5
.L6:
	.loc 1 50 0
	movl	$1, 152(%rbp)
.L5:
	.loc 1 54 0
	cmpl	$0, 152(%rbp)
	jne	.L11
	.loc 1 58 0
	leaq	.LC0(%rip), %rdx
	movl	$0, %ecx
	call	strtok
	movq	%rax, 120(%rbp)
	.loc 1 60 0
	movq	144(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 61 0
	leaq	-96(%rbp), %r8
	leaq	16(%rbp), %rcx
	movl	132(%rbp), %edx
	movq	136(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push_parseList
	.loc 1 62 0
	leaq	16(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 63 0
	leaq	-96(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 64 0
	addl	$1, 156(%rbp)
.L2:
	.loc 1 23 0
	cmpq	$0, 144(%rbp)
	jne	.L9
	jmp	.L8
.L11:
	.loc 1 55 0
	nop
.L8:
	.loc 1 67 0
	movq	136(%rbp), %rax
	.loc 1 68 0
	addq	$288, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -280
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
	jne	.L13
	.loc 1 77 0
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 78 0
	movq	16(%rbp), %rcx
	call	free
	.loc 1 79 0
	movl	-12(%rbp), %eax
	jmp	.L14
.L13:
	.loc 1 82 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 83 0
	jmp	.L15
.L16:
	.loc 1 84 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -8(%rbp)
.L15:
	.loc 1 83 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L16
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
.L14:
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
	jmp	.L18
.L19:
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
.L18:
	.loc 1 101 0
	cmpq	$0, -8(%rbp)
	jne	.L19
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
	jmp	.L21
.L22:
	.loc 1 116 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -8(%rbp)
.L21:
	.loc 1 115 0
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L22
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
	.long	0xef2
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -fPIC -funsigned-char -fasynchronous-unwind-tables\0"
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
	.long	0x128
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x14b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x178
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x158
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x11c
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x17a
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x11c
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x10c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x1ed
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1ba
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x1ed
	.byte	0
	.uleb128 0x9
	.long	0xd1
	.long	0x1fd
	.uleb128 0xa
	.long	0x128
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x226
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x105
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1c9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x1fd
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x169
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x10c
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2b7
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2b7
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x105
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x105
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x105
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x105
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2bd
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x257
	.uleb128 0x9
	.long	0x248
	.long	0x2cd
	.uleb128 0xa
	.long	0x128
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x37b
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x105
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x105
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x105
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x105
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x105
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x105
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x105
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x105
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x105
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3d1
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3d1
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3d1
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x248
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x248
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0x3e1
	.uleb128 0xa
	.long	0x128
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x428
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x428
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x105
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x42e
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x37b
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x3e1
	.uleb128 0x9
	.long	0x43e
	.long	0x43e
	.uleb128 0xa
	.long	0x128
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x444
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x471
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x471
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x105
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xd1
	.uleb128 0x14
	.long	0x1aa
	.long	0x495
	.uleb128 0x15
	.long	0x495
	.uleb128 0x15
	.long	0x178
	.uleb128 0x15
	.long	0x63f
	.uleb128 0x15
	.long	0x13d
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4a0
	.uleb128 0x4
	.long	0x495
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x63f
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x105
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8ca
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8ca
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8ca
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x105
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xb8c
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x105
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xba8
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x105
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbb9
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2b7
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x105
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2b7
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbbf
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x105
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x63f
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb62
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x428
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x3e1
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbd0
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x886
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xbdc
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x14b
	.uleb128 0xe
	.byte	0x8
	.long	0x477
	.uleb128 0x14
	.long	0x1aa
	.long	0x669
	.uleb128 0x15
	.long	0x495
	.uleb128 0x15
	.long	0x178
	.uleb128 0x15
	.long	0x669
	.uleb128 0x15
	.long	0x13d
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x153
	.uleb128 0xe
	.byte	0x8
	.long	0x64b
	.uleb128 0x14
	.long	0x18a
	.long	0x693
	.uleb128 0x15
	.long	0x495
	.uleb128 0x15
	.long	0x178
	.uleb128 0x15
	.long	0x18a
	.uleb128 0x15
	.long	0x105
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x675
	.uleb128 0x14
	.long	0x105
	.long	0x6ad
	.uleb128 0x15
	.long	0x495
	.uleb128 0x15
	.long	0x178
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x699
	.uleb128 0x9
	.long	0xd1
	.long	0x6c3
	.uleb128 0xa
	.long	0x128
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xd1
	.long	0x6d3
	.uleb128 0xa
	.long	0x128
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x853
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x471
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x105
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x105
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0xe2
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0xe2
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x445
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x105
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x495
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x178
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x645
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x66f
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x693
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6ad
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x445
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x471
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x105
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6b3
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6c3
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x445
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x105
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x105
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x17a
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x871
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x238
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x226
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x199
	.long	0x871
	.uleb128 0x15
	.long	0x495
	.uleb128 0x15
	.long	0x178
	.uleb128 0x15
	.long	0x199
	.uleb128 0x15
	.long	0x105
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x853
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6d3
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8c4
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8c4
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x105
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8ca
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x886
	.uleb128 0xe
	.byte	0x8
	.long	0x877
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x90e
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x90e
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x90e
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0xef
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0xef
	.long	0x91e
	.uleb128 0xa
	.long	0x128
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xacb
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x10c
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x63f
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xacb
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2cd
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x105
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xadb
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8d0
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x226
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x226
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x226
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xaf5
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb05
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x105
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x226
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x226
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x226
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x226
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x226
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x105
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x14b
	.long	0xadb
	.uleb128 0xa
	.long	0x128
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x14b
	.long	0xb05
	.uleb128 0xa
	.long	0x128
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x14b
	.long	0xb15
	.uleb128 0xa
	.long	0x128
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb42
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb42
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb52
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x471
	.long	0xb52
	.uleb128 0xa
	.long	0x128
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x10c
	.long	0xb62
	.uleb128 0xa
	.long	0x128
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xb8c
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x91e
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb15
	.byte	0
	.uleb128 0x9
	.long	0x14b
	.long	0xb9c
	.uleb128 0xa
	.long	0x128
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xb9c
	.uleb128 0x1f
	.long	0xbb9
	.uleb128 0x15
	.long	0x495
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbae
	.uleb128 0xe
	.byte	0x8
	.long	0x2b7
	.uleb128 0x1f
	.long	0xbd0
	.uleb128 0x15
	.long	0x105
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbd6
	.uleb128 0xe
	.byte	0x8
	.long	0xbc5
	.uleb128 0x9
	.long	0x877
	.long	0xbec
	.uleb128 0xa
	.long	0x128
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x495
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x49b
	.uleb128 0x9
	.long	0x153
	.long	0xc26
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc1b
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc26
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xa0
	.byte	0x7
	.byte	0x6
	.long	0xc62
	.uleb128 0xc
	.ascii "token\0"
	.byte	0x7
	.byte	0x8
	.long	0xc62
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x9
	.long	0xc72
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.long	0x14b
	.long	0xc72
	.uleb128 0xa
	.long	0x128
	.byte	0x95
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc3a
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x7
	.byte	0xa
	.long	0xc3a
	.uleb128 0x23
	.secrel32	.LASF2
	.byte	0xd8
	.byte	0x8
	.byte	0x6
	.long	0xcc4
	.uleb128 0xc
	.ascii "pos\0"
	.byte	0x8
	.byte	0x8
	.long	0x105
	.byte	0
	.uleb128 0xc
	.ascii "type\0"
	.byte	0x8
	.byte	0x9
	.long	0xcc4
	.byte	0x4
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0xa
	.long	0xcc4
	.byte	0x68
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0xb
	.long	0xcd4
	.byte	0xd0
	.byte	0
	.uleb128 0x9
	.long	0x14b
	.long	0xcd4
	.uleb128 0xa
	.long	0x128
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc83
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xc
	.long	0xc83
	.uleb128 0x25
	.ascii "push_parseList\0"
	.byte	0x1
	.byte	0x71
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd58
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x71
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "pos\0"
	.byte	0x1
	.byte	0x71
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "type\0"
	.byte	0x1
	.byte	0x71
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.ascii "value\0"
	.byte	0x1
	.byte	0x71
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x72
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xcda
	.uleb128 0x25
	.ascii "print_parseStateList\0"
	.byte	0x1
	.byte	0x60
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xdbc
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x60
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x61
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "counter\0"
	.byte	0x1
	.byte	0x62
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.ascii "removeLast\0"
	.byte	0x1
	.byte	0x49
	.long	0x105
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xe13
	.uleb128 0x26
	.ascii "head\0"
	.byte	0x1
	.byte	0x49
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.ascii "retval\0"
	.byte	0x1
	.byte	0x4a
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x52
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.ascii "make_parse_stateList\0"
	.byte	0x1
	.byte	0x6
	.long	0xd58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xeef
	.uleb128 0x26
	.ascii "tokens\0"
	.byte	0x1
	.byte	0x6
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.ascii "my_parse_state\0"
	.byte	0x1
	.byte	0x7
	.long	0xd58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.ascii "counter\0"
	.byte	0x1
	.byte	0x8
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.ascii "flagTwice\0"
	.byte	0x1
	.byte	0x9
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "theSplit\0"
	.byte	0x1
	.byte	0xa
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.ascii "thePos\0"
	.byte	0x1
	.byte	0xb
	.long	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.ascii "theType\0"
	.byte	0x1
	.byte	0xc
	.long	0xcc4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.ascii "theValue\0"
	.byte	0x1
	.byte	0xd
	.long	0xcc4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x27
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x12
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc78
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
	.def	free;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
