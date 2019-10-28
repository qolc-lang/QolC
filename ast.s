	.file	"ast.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	decl_create
	.def	decl_create;	.scl	2;	.type	32;	.endef
	.seh_proc	decl_create
decl_create:
.LFB9:
	.file 1 "./src/ast.c"
	.loc 1 6 0
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
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 7 0
	movl	$136, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 8 0
	movq	-8(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 9 0
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	.loc 1 10 0
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 104(%rax)
	.loc 1 11 0
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 112(%rax)
	.loc 1 12 0
	movq	-8(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 120(%rax)
	.loc 1 13 0
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	.loc 1 14 0
	movq	-8(%rbp), %rax
	.loc 1 15 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	stmt_create
	.def	stmt_create;	.scl	2;	.type	32;	.endef
	.seh_proc	stmt_create
stmt_create:
.LFB10:
	.loc 1 20 0
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
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 21 0
	movl	$72, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 22 0
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 23 0
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 24 0
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 25 0
	movq	-8(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 26 0
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 27 0
	movq	-8(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 1 28 0
	movq	-8(%rbp), %rax
	movq	64(%rbp), %rdx
	movq	%rdx, 48(%rax)
	.loc 1 29 0
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	.loc 1 30 0
	movq	-8(%rbp), %rax
	movl	80(%rbp), %edx
	movl	%edx, 64(%rax)
	.loc 1 31 0
	movq	-8(%rbp), %rax
	.loc 1 32 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.globl	expr_create
	.def	expr_create;	.scl	2;	.type	32;	.endef
	.seh_proc	expr_create
expr_create:
.LFB11:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	48(%rbp), %eax
	movb	%al, -20(%rbp)
	.loc 1 38 0
	movl	$56, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 39 0
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 40 0
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 41 0
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 42 0
	movq	-8(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 1 43 0
	movq	-8(%rbp), %rax
	movzbl	-20(%rbp), %edx
	movb	%dl, 44(%rax)
	.loc 1 44 0
	movl	$100, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 45 0
	cmpq	$0, 56(%rbp)
	je	.L6
	.loc 1 46 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
.L6:
	.loc 1 47 0
	movq	-8(%rbp), %rax
	movl	64(%rbp), %edx
	movl	%edx, 48(%rax)
	.loc 1 48 0
	movq	-8(%rbp), %rax
	.loc 1 49 0
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	type_create
	.def	type_create;	.scl	2;	.type	32;	.endef
	.seh_proc	type_create
type_create:
.LFB12:
	.loc 1 54 0
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
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 1 55 0
	movl	$24, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 56 0
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 57 0
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 58 0
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 59 0
	movq	-8(%rbp), %rax
	.loc 1 60 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.globl	expr_create_string
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.seh_proc	expr_create_string
expr_create_string:
.LFB13:
	.loc 1 65 0
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
	.loc 1 66 0
	movl	$56, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 67 0
	movq	-8(%rbp), %rax
	movl	$10, (%rax)
	.loc 1 68 0
	movl	$100, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 69 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	.loc 1 70 0
	movq	-8(%rbp), %rax
	.loc 1 71 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "./src/../inc/ast.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x163d
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/ast.c\0"
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
	.long	0x146
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x169
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x196
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x176
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x13a
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x198
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x13a
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x12a
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x20b
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1d8
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x20b
	.byte	0
	.uleb128 0x9
	.long	0xef
	.long	0x21b
	.uleb128 0xa
	.long	0x146
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x244
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x123
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1e7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x21b
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x187
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x12a
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2d5
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2d5
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x123
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x123
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x123
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x123
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2db
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x275
	.uleb128 0x9
	.long	0x266
	.long	0x2eb
	.uleb128 0xa
	.long	0x146
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x399
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x123
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x123
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x123
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x123
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x123
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x123
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x123
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x123
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3ef
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3ef
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3ef
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x266
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x266
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x196
	.long	0x3ff
	.uleb128 0xa
	.long	0x146
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x446
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x446
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x44c
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x399
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x3ff
	.uleb128 0x9
	.long	0x45c
	.long	0x45c
	.uleb128 0xa
	.long	0x146
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x462
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x48f
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x48f
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xef
	.uleb128 0x14
	.long	0x1c8
	.long	0x4b3
	.uleb128 0x15
	.long	0x4b3
	.uleb128 0x15
	.long	0x196
	.uleb128 0x15
	.long	0x65d
	.uleb128 0x15
	.long	0x15b
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4be
	.uleb128 0x4
	.long	0x4b3
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x65d
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x123
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8e8
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8e8
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8e8
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x123
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbaa
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x123
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbc6
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x123
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbd7
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2d5
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x123
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2d5
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbdd
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x123
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x65d
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb80
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x446
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x3ff
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbee
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8a4
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xbfa
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x169
	.uleb128 0xe
	.byte	0x8
	.long	0x495
	.uleb128 0x14
	.long	0x1c8
	.long	0x687
	.uleb128 0x15
	.long	0x4b3
	.uleb128 0x15
	.long	0x196
	.uleb128 0x15
	.long	0x687
	.uleb128 0x15
	.long	0x15b
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x171
	.uleb128 0xe
	.byte	0x8
	.long	0x669
	.uleb128 0x14
	.long	0x1a8
	.long	0x6b1
	.uleb128 0x15
	.long	0x4b3
	.uleb128 0x15
	.long	0x196
	.uleb128 0x15
	.long	0x1a8
	.uleb128 0x15
	.long	0x123
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x693
	.uleb128 0x14
	.long	0x123
	.long	0x6cb
	.uleb128 0x15
	.long	0x4b3
	.uleb128 0x15
	.long	0x196
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6b7
	.uleb128 0x9
	.long	0xef
	.long	0x6e1
	.uleb128 0xa
	.long	0x146
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xef
	.long	0x6f1
	.uleb128 0xa
	.long	0x146
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x871
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x48f
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x123
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x123
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x100
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x100
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x463
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x123
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4b3
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x196
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x663
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x68d
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b1
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6cb
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x463
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x48f
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x123
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d1
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e1
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x463
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x123
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x123
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x198
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x88f
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x256
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x244
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1b7
	.long	0x88f
	.uleb128 0x15
	.long	0x4b3
	.uleb128 0x15
	.long	0x196
	.uleb128 0x15
	.long	0x1b7
	.uleb128 0x15
	.long	0x123
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x871
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f1
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8e2
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8e2
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x123
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8e8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8a4
	.uleb128 0xe
	.byte	0x8
	.long	0x895
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x92c
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x92c
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x92c
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x10d
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x10d
	.long	0x93c
	.uleb128 0xa
	.long	0x146
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xae9
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x12a
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x65d
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xae9
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2eb
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x123
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xaf9
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8ee
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x244
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x244
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x244
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb13
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb23
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x123
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x244
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x244
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x244
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x244
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x244
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x123
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x169
	.long	0xaf9
	.uleb128 0xa
	.long	0x146
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x169
	.long	0xb23
	.uleb128 0xa
	.long	0x146
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x169
	.long	0xb33
	.uleb128 0xa
	.long	0x146
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb60
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb60
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb70
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x48f
	.long	0xb70
	.uleb128 0xa
	.long	0x146
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x12a
	.long	0xb80
	.uleb128 0xa
	.long	0x146
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbaa
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x93c
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb33
	.byte	0
	.uleb128 0x9
	.long	0x169
	.long	0xbba
	.uleb128 0xa
	.long	0x146
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbba
	.uleb128 0x1f
	.long	0xbd7
	.uleb128 0x15
	.long	0x4b3
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbcc
	.uleb128 0xe
	.byte	0x8
	.long	0x2d5
	.uleb128 0x1f
	.long	0xbee
	.uleb128 0x15
	.long	0x123
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbf4
	.uleb128 0xe
	.byte	0x8
	.long	0xbe3
	.uleb128 0x9
	.long	0x895
	.long	0xc0a
	.uleb128 0xa
	.long	0x146
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4b3
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4b9
	.uleb128 0x9
	.long	0x171
	.long	0xc44
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc39
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc44
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12a
	.byte	0x7
	.byte	0x9
	.long	0xeea
	.uleb128 0x24
	.ascii "TYPE_VOID\0"
	.byte	0
	.uleb128 0x24
	.ascii "TYPE_BOOLEAN\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "TYPE_CHARACTER\0"
	.byte	0x2
	.uleb128 0x24
	.ascii "TYPE_INTEGER\0"
	.byte	0x3
	.uleb128 0x24
	.ascii "TYPE_STRING\0"
	.byte	0x4
	.uleb128 0x24
	.ascii "TYPE_FLOAT\0"
	.byte	0x5
	.uleb128 0x24
	.ascii "TYPE_FLOAT_POINTER\0"
	.byte	0x6
	.uleb128 0x24
	.ascii "TYPE_INT_POINTER\0"
	.byte	0x7
	.uleb128 0x24
	.ascii "TYPE_CHAR_POINTER\0"
	.byte	0x8
	.uleb128 0x24
	.ascii "TYPE_STRING_POINTER\0"
	.byte	0x9
	.uleb128 0x24
	.ascii "TYPE_VOID_POINTER\0"
	.byte	0xa
	.uleb128 0x24
	.ascii "TYPE_FUNCTION\0"
	.byte	0xb
	.uleb128 0x24
	.ascii "TYPE_HEXNUM\0"
	.byte	0xc
	.uleb128 0x24
	.ascii "TYPE_STRUCT\0"
	.byte	0xd
	.uleb128 0x24
	.ascii "TYPE_ENUM\0"
	.byte	0xe
	.uleb128 0x24
	.ascii "TYPE_UNION\0"
	.byte	0xf
	.uleb128 0x24
	.ascii "TYPE_VOID_ARRAY\0"
	.byte	0x10
	.uleb128 0x24
	.ascii "TYPE_BOOLEAN_ARRAY\0"
	.byte	0x11
	.uleb128 0x24
	.ascii "TYPE_CHAR_ARRAY\0"
	.byte	0x12
	.uleb128 0x24
	.ascii "TYPE_INTEGER_ARRAY\0"
	.byte	0x13
	.uleb128 0x24
	.ascii "TYPE_STRING_ARRAY\0"
	.byte	0x14
	.uleb128 0x24
	.ascii "TYPE_FLOAT_ARRAY\0"
	.byte	0x15
	.uleb128 0x24
	.ascii "TYPE_STRUCT_ARRAY\0"
	.byte	0x16
	.uleb128 0x24
	.ascii "TYPE_ENUM_ARRAY\0"
	.byte	0x17
	.uleb128 0x24
	.ascii "TYPE_UNION_ARRAY\0"
	.byte	0x18
	.uleb128 0x24
	.ascii "TYPE_FLOAT_POINTER_ARRAY\0"
	.byte	0x19
	.uleb128 0x24
	.ascii "TYPE_INT_POINTER_ARRAY\0"
	.byte	0x1a
	.uleb128 0x24
	.ascii "TYPE_CHAR_POINTER_ARRAY\0"
	.byte	0x1b
	.uleb128 0x24
	.ascii "TYPE_STRING_POINTER_ARRAY\0"
	.byte	0x1c
	.uleb128 0x24
	.ascii "TYPE_VOID_POINTER_ARRAY\0"
	.byte	0x1d
	.uleb128 0x24
	.ascii "TYPE_STRUCT_POINTER_ARRAY\0"
	.byte	0x1e
	.uleb128 0x24
	.ascii "TYPE_ENUM_POINTER_ARRAY\0"
	.byte	0x1f
	.uleb128 0x24
	.ascii "TYPE_UNION_POINTER_ARRAY\0"
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.ascii "type_t\0"
	.byte	0x7
	.byte	0x2b
	.long	0xc58
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.long	0xf31
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x2e
	.long	0xeea
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x7
	.byte	0x2f
	.long	0xf31
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x7
	.byte	0x30
	.long	0xf6e
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xef8
	.uleb128 0x26
	.secrel32	.LASF2
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.long	0xf6e
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x35
	.long	0x65d
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x36
	.long	0xf80
	.byte	0x8
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x37
	.long	0xf6e
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf37
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x7
	.byte	0x31
	.long	0xef8
	.uleb128 0xe
	.byte	0x8
	.long	0xf74
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0x7
	.byte	0x38
	.long	0xf37
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12a
	.byte	0x7
	.byte	0x3e
	.long	0x10be
	.uleb128 0x24
	.ascii "EXPR_ADD\0"
	.byte	0
	.uleb128 0x24
	.ascii "EXPR_SUB\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "EXPR_MUL\0"
	.byte	0x2
	.uleb128 0x24
	.ascii "EXPR_DIV\0"
	.byte	0x3
	.uleb128 0x24
	.ascii "EXPR_ADD_ASSIGNMENT\0"
	.byte	0x4
	.uleb128 0x24
	.ascii "EXPR_SUB_ASSIGNMENT\0"
	.byte	0x5
	.uleb128 0x24
	.ascii "EXPR_MUL_ASSIGNMENT\0"
	.byte	0x6
	.uleb128 0x24
	.ascii "EXPR_DIV_ASSIGNMENT\0"
	.byte	0x7
	.uleb128 0x24
	.ascii "EXPR_INCREMENT\0"
	.byte	0x8
	.uleb128 0x24
	.ascii "EXPR_DECREMENT\0"
	.byte	0x9
	.uleb128 0x24
	.ascii "EXPR_STRING_LITERAL\0"
	.byte	0xa
	.uleb128 0x24
	.ascii "EXPR_BIGGER_CMP\0"
	.byte	0xb
	.uleb128 0x24
	.ascii "EXPR_BIGGEROREQ_CMP\0"
	.byte	0xc
	.uleb128 0x24
	.ascii "EXPR_SMALLER_CMP\0"
	.byte	0xd
	.uleb128 0x24
	.ascii "EXPR_SMALLEROREQ_CMP\0"
	.byte	0xe
	.uleb128 0x24
	.ascii "EXPR_EQUAL_CMP\0"
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.ascii "expr_t\0"
	.byte	0x7
	.byte	0x4f
	.long	0xf91
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x7
	.byte	0x51
	.long	0x1143
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x52
	.long	0x10be
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x7
	.byte	0x53
	.long	0x1143
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x7
	.byte	0x54
	.long	0x1143
	.byte	0x10
	.uleb128 0x25
	.secrel32	.LASF3
	.byte	0x7
	.byte	0x55
	.long	0x65d
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x7
	.byte	0x56
	.long	0x65d
	.byte	0x20
	.uleb128 0x25
	.secrel32	.LASF4
	.byte	0x7
	.byte	0x57
	.long	0x123
	.byte	0x28
	.uleb128 0x25
	.secrel32	.LASF5
	.byte	0x7
	.byte	0x58
	.long	0x169
	.byte	0x2c
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0x7
	.byte	0x59
	.long	0x123
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x10cc
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x7
	.byte	0x5a
	.long	0x10cc
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12a
	.byte	0x7
	.byte	0x5f
	.long	0x1282
	.uleb128 0x24
	.ascii "STMT_DECL\0"
	.byte	0
	.uleb128 0x24
	.ascii "STMT_EXPR\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "STMT_IF_ELSE\0"
	.byte	0x2
	.uleb128 0x24
	.ascii "STMT_FOR\0"
	.byte	0x3
	.uleb128 0x24
	.ascii "STMT_PRINT\0"
	.byte	0x4
	.uleb128 0x24
	.ascii "STMT_IMPORT\0"
	.byte	0x5
	.uleb128 0x24
	.ascii "STMT_LOAD\0"
	.byte	0x6
	.uleb128 0x24
	.ascii "STMT_DELETE\0"
	.byte	0x7
	.uleb128 0x24
	.ascii "STMT_DEFER\0"
	.byte	0x8
	.uleb128 0x24
	.ascii "STMT_ASSERT\0"
	.byte	0x9
	.uleb128 0x24
	.ascii "STMT_RETURN\0"
	.byte	0xa
	.uleb128 0x24
	.ascii "STMT_BREAK\0"
	.byte	0xb
	.uleb128 0x24
	.ascii "STMT_CONTINUE\0"
	.byte	0xc
	.uleb128 0x24
	.ascii "STMT_BLOCK\0"
	.byte	0xd
	.uleb128 0x24
	.ascii "STMT_NEW\0"
	.byte	0xe
	.uleb128 0x24
	.ascii "STMT_SLEEP\0"
	.byte	0xf
	.uleb128 0x24
	.ascii "STMT_MAIN\0"
	.byte	0x10
	.uleb128 0x24
	.ascii "STMT_SCAN\0"
	.byte	0x11
	.uleb128 0x24
	.ascii "STMT_CAST\0"
	.byte	0x12
	.uleb128 0x24
	.ascii "STMT_WHILE\0"
	.byte	0x13
	.uleb128 0x24
	.ascii "STMT_ARRAYADD\0"
	.byte	0x14
	.uleb128 0x24
	.ascii "STMT_EACH\0"
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.ascii "stmt_t\0"
	.byte	0x7
	.byte	0x76
	.long	0x1155
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x48
	.byte	0x7
	.byte	0x78
	.long	0x1323
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x79
	.long	0x1282
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x7
	.byte	0x7a
	.long	0x1376
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x7
	.byte	0x7b
	.long	0x137c
	.byte	0x10
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x7
	.byte	0x7c
	.long	0x137c
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x7
	.byte	0x7d
	.long	0x137c
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x7
	.byte	0x7e
	.long	0x1382
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x7
	.byte	0x7f
	.long	0x1382
	.byte	0x30
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x80
	.long	0x1382
	.byte	0x38
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0x7
	.byte	0x81
	.long	0x123
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x7
	.byte	0x87
	.long	0x1376
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x88
	.long	0x1394
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x89
	.long	0xf80
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x7
	.byte	0x8a
	.long	0x137c
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x7
	.byte	0x8b
	.long	0x13a4
	.byte	0x78
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x8c
	.long	0x1376
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1323
	.uleb128 0xe
	.byte	0x8
	.long	0x1149
	.uleb128 0xe
	.byte	0x8
	.long	0x1290
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x7
	.byte	0x82
	.long	0x1290
	.uleb128 0x9
	.long	0x169
	.long	0x13a4
	.uleb128 0xa
	.long	0x146
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1388
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x7
	.byte	0x8d
	.long	0x1323
	.uleb128 0x28
	.ascii "expr_create_string\0"
	.byte	0x1
	.byte	0x41
	.long	0x137c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1401
	.uleb128 0x29
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x41
	.long	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "e\0"
	.byte	0x1
	.byte	0x42
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.ascii "type_create\0"
	.byte	0x1
	.byte	0x36
	.long	0xf80
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1468
	.uleb128 0x29
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x36
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.ascii "subtype\0"
	.byte	0x1
	.byte	0x36
	.long	0xf80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.ascii "params\0"
	.byte	0x1
	.byte	0x36
	.long	0x1468
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "t\0"
	.byte	0x1
	.byte	0x37
	.long	0xf80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf86
	.uleb128 0x28
	.ascii "expr_create\0"
	.byte	0x1
	.byte	0x25
	.long	0x137c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1509
	.uleb128 0x29
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x25
	.long	0x10be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.ascii "left\0"
	.byte	0x1
	.byte	0x25
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.ascii "right\0"
	.byte	0x1
	.byte	0x25
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x25
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x25
	.long	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x25
	.long	0x687
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x29
	.secrel32	.LASF6
	.byte	0x1
	.byte	0x25
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2a
	.ascii "e\0"
	.byte	0x1
	.byte	0x26
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.ascii "stmt_create\0"
	.byte	0x1
	.byte	0x14
	.long	0x13a4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x15cb
	.uleb128 0x29
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x14
	.long	0x1282
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.ascii "decl\0"
	.byte	0x1
	.byte	0x14
	.long	0x15cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.ascii "iexpr\0"
	.byte	0x1
	.byte	0x14
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.ascii "theExpr\0"
	.byte	0x1
	.byte	0x14
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.ascii "nexpr\0"
	.byte	0x1
	.byte	0x14
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.ascii "body\0"
	.byte	0x1
	.byte	0x14
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2b
	.ascii "ebody\0"
	.byte	0x1
	.byte	0x14
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2b
	.ascii "next\0"
	.byte	0x1
	.byte	0x14
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x29
	.secrel32	.LASF6
	.byte	0x1
	.byte	0x14
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2a
	.ascii "s\0"
	.byte	0x1
	.byte	0x15
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13aa
	.uleb128 0x2c
	.ascii "decl_create\0"
	.byte	0x1
	.byte	0x6
	.long	0x15cb
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.ascii "name\0"
	.byte	0x1
	.byte	0x6
	.long	0x65d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.ascii "type\0"
	.byte	0x1
	.byte	0x6
	.long	0xf80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.ascii "value\0"
	.byte	0x1
	.byte	0x6
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.ascii "code\0"
	.byte	0x1
	.byte	0x6
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.ascii "d\0"
	.byte	0x1
	.byte	0x7
	.long	0x15cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LASF4:
	.ascii "integer_value\0"
.LASF2:
	.ascii "param_list\0"
.LASF3:
	.ascii "string_literal\0"
.LASF5:
	.ascii "character_value\0"
.LASF1:
	.ascii "kind\0"
.LASF6:
	.ascii "memberOf\0"
.LASF0:
	.ascii "_on_exit_args\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
