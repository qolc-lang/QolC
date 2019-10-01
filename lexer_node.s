	.file	"lexer_node.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
.LC0:
	.ascii "typeToPush to push is : %s\12\0"
.LC1:
	.ascii "keyword\0"
.LC2:
	.ascii "number\0"
.LC3:
	.ascii "identifier\0"
.LC4:
	.ascii "hexadecimal number\0"
.LC5:
	.ascii "string\0"
.LC6:
	.ascii "character\0"
.LC7:
	.ascii "operator\0"
	.text
	.globl	pushForLex
	.def	pushForLex;	.scl	2;	.type	32;	.endef
	.seh_proc	pushForLex
pushForLex:
.LFB9:
	.file 1 "./src/lexer_node.c"
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$272, %rsp
	.seh_stackalloc	272
	.cfi_def_cfa_offset 288
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 160
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%r8, -88(%rbp)
	.loc 1 7 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 136(%rbp)
	xorl	%ecx, %ecx
	.loc 1 9 0
	leaq	-64(%rbp), %rax
	movl	$200, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 11 0
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	.loc 1 13 0
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L2
	.loc 1 15 0
	leaq	-64(%rbp), %rax
	movabsq	$3198807458411275627, %rcx
	movq	%rcx, (%rax)
	movb	$0, 8(%rax)
	jmp	.L3
.L2:
	.loc 1 17 0
	movq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L4
	.loc 1 19 0
	leaq	-64(%rbp), %rax
	movabsq	$12510678743872878, %rcx
	movq	%rcx, (%rax)
	jmp	.L3
.L4:
	.loc 1 21 0
	movq	-80(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 23 0
	leaq	-64(%rbp), %rax
	movabsq	$7594873770396181609, %rdx
	movq	%rdx, (%rax)
	movl	$2912869, 8(%rax)
	jmp	.L3
.L5:
	.loc 1 25 0
	movq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	.loc 1 27 0
	leaq	-64(%rbp), %rax
	movabsq	$7594024878483203432, %rdx
	movabsq	$7092454104029225325, %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movl	$2912869, 16(%rax)
	jmp	.L3
.L6:
	.loc 1 29 0
	movq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	.loc 1 31 0
	leaq	-64(%rbp), %rax
	movabsq	$12498622888440947, %rcx
	movq	%rcx, (%rax)
	jmp	.L3
.L7:
	.loc 1 33 0
	movq	-80(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	.loc 1 35 0
	leaq	-64(%rbp), %rax
	movabsq	$7310577365311121507, %rdx
	movq	%rdx, (%rax)
	movw	$11378, 8(%rax)
	movb	$0, 10(%rax)
	jmp	.L3
.L8:
	.loc 1 37 0
	movq	-80(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L3
	.loc 1 39 0
	leaq	-64(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movw	$44, 8(%rax)
.L3:
	.loc 1 43 0
	cmpq	$0, -72(%rbp)
	je	.L9
	.loc 1 44 0
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	jmp	.L10
.L9:
	.loc 1 46 0
	leaq	-64(%rbp), %rax
	movabsq	$7142821636480462437, %rdx
	movq	%rdx, (%rax)
	movl	$1634561391, 8(%rax)
	movw	$25710, 12(%rax)
	movb	$0, 14(%rax)
.L10:
	.loc 1 47 0
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 48 0
	nop
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	136(%rbp), %rcx
	xorq	(%rax), %rcx
	je	.L11
	call	__stack_chk_fail
	nop
.L11:
	addq	$272, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -264
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "w\0"
	.align 8
.LC9:
	.ascii "Error opening output file file!\0"
	.align 8
.LC10:
	.ascii "Press 1 if you want to print the results on the console\12or any number if you want to print on the file.\0"
.LC11:
	.ascii "%d\0"
.LC12:
	.ascii "counter-%d : %s\12\0"
.LC13:
	.ascii "%s\12\0"
	.text
	.globl	print_lexerList
	.def	print_lexerList;	.scl	2;	.type	32;	.endef
	.seh_proc	print_lexerList
print_lexerList:
.LFB10:
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	subq	$312, %rsp
	.seh_stackalloc	312
	.cfi_def_cfa_offset 336
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 208
	.seh_endprologue
	movq	%rcx, -88(%rbp)
	movq	%rdx, -96(%rbp)
	.loc 1 53 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, 168(%rbp)
	xorl	%edi, %edi
	.loc 1 54 0
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 1 55 0
	movl	$0, -68(%rbp)
	.loc 1 60 0
	leaq	16(%rbp), %rax
	movl	$150, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 61 0
	leaq	-48(%rbp), %rax
	movl	$50, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 63 0
	movq	-96(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -56(%rbp)
	.loc 1 64 0
	cmpq	$0, -56(%rbp)
	jne	.L13
	.loc 1 66 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 67 0
	movl	$1, %ecx
	call	exit
.L13:
	.loc 1 70 0
	movl	$10, %ecx
	call	putchar
	.loc 1 71 0
	leaq	.LC10(%rip), %rcx
	call	puts
	.loc 1 72 0
	leaq	-72(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rcx
	call	scanf
	.loc 1 74 0
	jmp	.L14
.L17:
	.loc 1 75 0
	addl	$1, -68(%rbp)
	.loc 1 76 0
	movl	-72(%rbp), %eax
	cmpl	$1, %eax
	jne	.L15
	.loc 1 77 0
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC12(%rip), %rcx
	call	printf
	jmp	.L16
.L15:
	.loc 1 79 0
	movl	-68(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 80 0
	leaq	16(%rbp), %rax
	movabsq	$3274791429795573603, %rdi
	movq	%rdi, (%rax)
	movb	$0, 8(%rax)
	.loc 1 81 0
	leaq	-48(%rbp), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	.loc 1 82 0
	leaq	16(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	$2112032, (%rax)
	.loc 1 83 0
	movq	-64(%rbp), %rdx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	.loc 1 84 0
	leaq	16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	fprintf
.L16:
	.loc 1 86 0
	movq	-64(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)
.L14:
	.loc 1 74 0
	cmpq	$0, -64(%rbp)
	jne	.L17
	.loc 1 89 0
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 90 0
	nop
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	168(%rbp), %rdi
	xorq	(%rax), %rdi
	je	.L18
	call	__stack_chk_fail
	nop
.L18:
	addq	$312, %rsp
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -296
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.globl	push_lexerList
	.def	push_lexerList;	.scl	2;	.type	32;	.endef
	.seh_proc	push_lexerList
push_lexerList:
.LFB11:
	.loc 1 95 0
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
	.loc 1 96 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 97 0
	jmp	.L20
.L21:
	.loc 1 98 0
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
.L20:
	.loc 1 97 0
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	.loc 1 100 0
	movl	$160, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	.loc 1 101 0
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 102 0
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	$0, 152(%rax)
	.loc 1 103 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/ctype.h"
	.file 8 "./src/../inc/lexer_node.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xe5f
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/lexer_node.c\0"
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
	.long	0x14d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x170
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x19d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x17d
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x141
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x19f
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x141
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x131
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x212
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1df
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x212
	.byte	0
	.uleb128 0x9
	.long	0xf6
	.long	0x222
	.uleb128 0xa
	.long	0x14d
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x24b
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x12a
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1ee
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x222
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x18e
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x131
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2dc
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2dc
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x12a
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12a
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x12a
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12a
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2e2
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x27c
	.uleb128 0x9
	.long	0x26d
	.long	0x2f2
	.uleb128 0xa
	.long	0x14d
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x3a0
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x12a
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x12a
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x12a
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x12a
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x12a
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x12a
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x12a
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x12a
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x12a
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3f6
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3f6
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3f6
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x26d
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x26d
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x19d
	.long	0x406
	.uleb128 0xa
	.long	0x14d
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x44d
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x44d
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x12a
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x453
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x3a0
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x406
	.uleb128 0x9
	.long	0x463
	.long	0x463
	.uleb128 0xa
	.long	0x14d
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x469
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x496
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x496
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x12a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf6
	.uleb128 0x14
	.long	0x1cf
	.long	0x4ba
	.uleb128 0x15
	.long	0x4ba
	.uleb128 0x15
	.long	0x19d
	.uleb128 0x15
	.long	0x664
	.uleb128 0x15
	.long	0x162
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4c5
	.uleb128 0x4
	.long	0x4ba
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x664
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x12a
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8ef
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8ef
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8ef
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x12a
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbb1
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x12a
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbcd
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x12a
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbde
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2dc
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x12a
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2dc
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbe4
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x12a
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x664
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb87
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x44d
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x406
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbf5
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8ab
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xc01
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x170
	.uleb128 0xe
	.byte	0x8
	.long	0x49c
	.uleb128 0x14
	.long	0x1cf
	.long	0x68e
	.uleb128 0x15
	.long	0x4ba
	.uleb128 0x15
	.long	0x19d
	.uleb128 0x15
	.long	0x68e
	.uleb128 0x15
	.long	0x162
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x178
	.uleb128 0xe
	.byte	0x8
	.long	0x670
	.uleb128 0x14
	.long	0x1af
	.long	0x6b8
	.uleb128 0x15
	.long	0x4ba
	.uleb128 0x15
	.long	0x19d
	.uleb128 0x15
	.long	0x1af
	.uleb128 0x15
	.long	0x12a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x69a
	.uleb128 0x14
	.long	0x12a
	.long	0x6d2
	.uleb128 0x15
	.long	0x4ba
	.uleb128 0x15
	.long	0x19d
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6be
	.uleb128 0x9
	.long	0xf6
	.long	0x6e8
	.uleb128 0xa
	.long	0x14d
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xf6
	.long	0x6f8
	.uleb128 0xa
	.long	0x14d
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x878
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x496
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x12a
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x12a
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x107
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x107
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x46a
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x12a
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4ba
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x19d
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x66a
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x694
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b8
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6d2
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x46a
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x496
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x12a
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d8
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e8
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x46a
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x12a
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x12a
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x19f
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x896
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x25d
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x24b
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1be
	.long	0x896
	.uleb128 0x15
	.long	0x4ba
	.uleb128 0x15
	.long	0x19d
	.uleb128 0x15
	.long	0x1be
	.uleb128 0x15
	.long	0x12a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x878
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f8
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8e9
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8e9
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x12a
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8ef
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8ab
	.uleb128 0xe
	.byte	0x8
	.long	0x89c
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x933
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x933
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x933
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x114
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x114
	.long	0x943
	.uleb128 0xa
	.long	0x14d
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaf0
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x131
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x664
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaf0
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2f2
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x12a
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xb00
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8f5
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x24b
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x24b
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x24b
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb1a
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb2a
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x12a
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x24b
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x24b
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x24b
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x24b
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x24b
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x12a
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x170
	.long	0xb00
	.uleb128 0xa
	.long	0x14d
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x170
	.long	0xb2a
	.uleb128 0xa
	.long	0x14d
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x170
	.long	0xb3a
	.uleb128 0xa
	.long	0x14d
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb67
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb67
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb77
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x496
	.long	0xb77
	.uleb128 0xa
	.long	0x14d
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x131
	.long	0xb87
	.uleb128 0xa
	.long	0x14d
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbb1
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x943
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb3a
	.byte	0
	.uleb128 0x9
	.long	0x170
	.long	0xbc1
	.uleb128 0xa
	.long	0x14d
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbc1
	.uleb128 0x1f
	.long	0xbde
	.uleb128 0x15
	.long	0x4ba
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbd3
	.uleb128 0xe
	.byte	0x8
	.long	0x2dc
	.uleb128 0x1f
	.long	0xbf5
	.uleb128 0x15
	.long	0x12a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbfb
	.uleb128 0xe
	.byte	0x8
	.long	0xbea
	.uleb128 0x9
	.long	0x89c
	.long	0xc11
	.uleb128 0xa
	.long	0x14d
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4ba
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4c0
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x6
	.byte	0x42
	.long	0x89c
	.uleb128 0x9
	.long	0x178
	.long	0xc57
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc4c
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x7
	.byte	0xae
	.long	0xc57
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xa0
	.byte	0x8
	.byte	0x6
	.long	0xc93
	.uleb128 0xc
	.ascii "token\0"
	.byte	0x8
	.byte	0x8
	.long	0xc93
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0x9
	.long	0xca3
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.long	0x170
	.long	0xca3
	.uleb128 0xa
	.long	0x14d
	.byte	0x95
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc6b
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x8
	.byte	0xa
	.long	0xc6b
	.uleb128 0x25
	.ascii "push_lexerList\0"
	.byte	0x1
	.byte	0x5f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0e
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x5f
	.long	0xd0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "token\0"
	.byte	0x1
	.byte	0x5f
	.long	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "current\0"
	.byte	0x1
	.byte	0x60
	.long	0xd0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xca9
	.uleb128 0x25
	.ascii "print_lexerList\0"
	.byte	0x1
	.byte	0x35
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xdca
	.uleb128 0x26
	.ascii "node\0"
	.byte	0x1
	.byte	0x35
	.long	0xd0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x26
	.ascii "fileName\0"
	.byte	0x1
	.byte	0x35
	.long	0x664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.ascii "current\0"
	.byte	0x1
	.byte	0x36
	.long	0xd0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x27
	.ascii "counter\0"
	.byte	0x1
	.byte	0x37
	.long	0x12a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x27
	.ascii "option\0"
	.byte	0x1
	.byte	0x38
	.long	0x12a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x27
	.ascii "text\0"
	.byte	0x1
	.byte	0x39
	.long	0xc93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.ascii "num_str\0"
	.byte	0x1
	.byte	0x3a
	.long	0xdca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x27
	.ascii "f\0"
	.byte	0x1
	.byte	0x3f
	.long	0xdda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x9
	.long	0x170
	.long	0xdda
	.uleb128 0xa
	.long	0x14d
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc40
	.uleb128 0x25
	.ascii "pushForLex\0"
	.byte	0x1
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xe56
	.uleb128 0x26
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x6
	.long	0x664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.ascii "typeToPush\0"
	.byte	0x1
	.byte	0x6
	.long	0x664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.ascii "myNode\0"
	.byte	0x1
	.byte	0x6
	.long	0xd0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.ascii "temp_buffer\0"
	.byte	0x1
	.byte	0x8
	.long	0xe56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x28
	.long	0x170
	.uleb128 0xa
	.long	0x14d
	.byte	0xc7
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
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
.LASF1:
	.ascii "lexer_node\0"
.LASF0:
	.ascii "_on_exit_args\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
