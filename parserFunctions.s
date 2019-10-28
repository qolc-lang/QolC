	.file	"parserFunctions.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
.LC0:
	.ascii "identifier\0"
	.text
	.globl	isIdentifierType
	.def	isIdentifierType;	.scl	2;	.type	32;	.endef
	.seh_proc	isIdentifierType
isIdentifierType:
.LFB9:
	.file 1 "./src/parserFunctions.c"
	.loc 1 8 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 9 0
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L2
	.loc 1 9 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L3
.L2:
	.loc 1 9 0 discriminator 2
	movl	$0, %eax
.L3:
	.loc 1 10 0 is_stmt 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "number\0"
	.text
	.globl	isNumberType
	.def	isNumberType;	.scl	2;	.type	32;	.endef
	.seh_proc	isNumberType
isNumberType:
.LFB10:
	.loc 1 15 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 16 0
	leaq	.LC1(%rip), %rdx
	movq	16(%rbp), %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 16 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L6
.L5:
	.loc 1 16 0 discriminator 2
	movl	$0, %eax
.L6:
	.loc 1 17 0 is_stmt 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Going to build import statement with string : %s\12\0"
	.align 8
.LC3:
	.ascii "Going to build load statement with string : %s\12\0"
	.align 8
.LC4:
	.ascii "Going to build print statement with string : %s\12\0"
	.align 8
.LC5:
	.ascii "Going to build sleep statement with string : %s\12\0"
	.align 8
.LC6:
	.ascii "Going to build scan statement with string : %s\12\0"
	.align 8
.LC7:
	.ascii "Going to build delete statement with string : %s\12\0"
	.text
	.globl	BuildSingleExprStatement
	.def	BuildSingleExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildSingleExprStatement
BuildSingleExprStatement:
.LFB11:
	.loc 1 22 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	.loc 1 23 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 26 0
	cmpl	$6, 32(%rbp)
	ja	.L17
	movl	32(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L10(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L10(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L10:
	.long	.L17-.L10
	.long	.L9-.L10
	.long	.L11-.L10
	.long	.L12-.L10
	.long	.L13-.L10
	.long	.L14-.L10
	.long	.L15-.L10
	.text
.L9:
	.loc 1 28 0
	movq	16(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	.loc 1 29 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 30 0
	jmp	.L16
.L11:
	.loc 1 32 0
	movq	16(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	.loc 1 33 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$6, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 34 0
	jmp	.L16
.L12:
	.loc 1 36 0
	movq	16(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	.loc 1 37 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 38 0
	jmp	.L16
.L13:
	.loc 1 40 0
	movq	16(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	.loc 1 41 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$15, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 42 0
	jmp	.L16
.L14:
	.loc 1 44 0
	movq	16(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	.loc 1 45 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$17, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 46 0
	jmp	.L16
.L15:
	.loc 1 48 0
	movq	16(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	call	printf
	.loc 1 49 0
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$7, %ecx
	call	stmt_create
	movq	%rax, -16(%rbp)
	.loc 1 50 0
	jmp	.L16
.L17:
	.loc 1 52 0
	nop
.L16:
	.loc 1 54 0
	movq	-16(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 55 0
	nop
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "parenthesis\0"
	.align 8
.LC9:
	.ascii "Going to build cast statement with string : %s\12\0"
	.align 8
.LC10:
	.ascii "Going to build array_add statement with string : %s\12\0"
	.text
	.globl	BuildDoubleExprStatement
	.def	BuildDoubleExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDoubleExprStatement
BuildDoubleExprStatement:
.LFB12:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$352, %rsp
	.seh_stackalloc	352
	.cfi_def_cfa_offset 368
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 240
	.seh_endprologue
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%r8d, 256(%rbp)
	.loc 1 58 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 216(%rbp)
	xorl	%ecx, %ecx
	.loc 1 62 0
	movq	-40(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 63 0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 64 0
	movq	-40(%rbp), %rax
	addq	$4, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 65 0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 66 0
	movq	-40(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	112(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L19:
	.loc 1 68 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 69 0
	leaq	112(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 71 0
	movl	256(%rbp), %eax
	cmpl	$1, %eax
	je	.L21
	cmpl	$2, %eax
	je	.L22
	.loc 1 81 0
	jmp	.L23
.L21:
	.loc 1 73 0
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rcx
	call	printf
	.loc 1 74 0
	movq	-16(%rbp), %rdx
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$18, %ecx
	call	stmt_create
	movq	%rax, -24(%rbp)
	.loc 1 75 0
	jmp	.L23
.L22:
	.loc 1 77 0
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rcx
	call	printf
	.loc 1 78 0
	movq	-16(%rbp), %rdx
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$20, %ecx
	call	stmt_create
	movq	%rax, -24(%rbp)
	.loc 1 79 0
	nop
.L23:
	.loc 1 83 0
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 84 0
	nop
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	216(%rbp), %rcx
	xorq	(%rax), %rcx
	je	.L24
	call	__stack_chk_fail
	nop
.L24:
	addq	$352, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -344
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "Going to build hexadecimal number declaration statement.\0"
	.align 8
.LC12:
	.ascii "Going to build int declaration statement.\0"
	.align 8
.LC13:
	.ascii "Going to build float declaration statement.\0"
	.align 8
.LC14:
	.ascii "Going to build character declaration statement.\0"
	.align 8
.LC15:
	.ascii "Going to build string declaration statement.\0"
	.align 8
.LC16:
	.ascii "Going to build string pointer declaration statement.\0"
	.align 8
.LC17:
	.ascii "Going to build float pointer declaration statement.\0"
	.align 8
.LC18:
	.ascii "Going to build int pointer declaration statement.\0"
	.align 8
.LC19:
	.ascii "Going to build char pointer declaration statement.\0"
	.align 8
.LC20:
	.ascii "Going to build bool declaration statement.\0"
	.align 8
.LC21:
	.ascii "Going to build void declaration statement.\0"
	.align 8
.LC22:
	.ascii "Going to build int array declaration statement.\0"
	.align 8
.LC23:
	.ascii "Going to build string array declaration statement.\0"
	.align 8
.LC24:
	.ascii "Going to build float array declaration statement.\0"
	.align 8
.LC25:
	.ascii "Going to build void array declaration statement.\0"
	.align 8
.LC26:
	.ascii "Going to build boolean array declaration statement.\0"
	.align 8
.LC27:
	.ascii "Going to build char array declaration statement.\0"
	.align 8
.LC28:
	.ascii "Going to build int pointer array declaration statement.\0"
	.align 8
.LC29:
	.ascii "Going to build string pointer array declaration statement.\0"
	.align 8
.LC30:
	.ascii "Going to build float pointer array declaration statement.\0"
	.align 8
.LC31:
	.ascii "Going to build void pointer array declaration statement.\0"
	.align 8
.LC32:
	.ascii "Going to build char pointer array declaration statement.\0"
	.text
	.globl	BuildDeclarationExprStatement
	.def	BuildDeclarationExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDeclarationExprStatement
BuildDeclarationExprStatement:
.LFB13:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	.loc 1 91 0
	cmpl	$29, 40(%rbp)
	ja	.L58
	movl	40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L28(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L28(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L28:
	.long	.L58-.L28
	.long	.L27-.L28
	.long	.L29-.L28
	.long	.L30-.L28
	.long	.L31-.L28
	.long	.L32-.L28
	.long	.L33-.L28
	.long	.L34-.L28
	.long	.L35-.L28
	.long	.L36-.L28
	.long	.L37-.L28
	.long	.L38-.L28
	.long	.L39-.L28
	.long	.L40-.L28
	.long	.L41-.L28
	.long	.L42-.L28
	.long	.L43-.L28
	.long	.L44-.L28
	.long	.L45-.L28
	.long	.L46-.L28
	.long	.L47-.L28
	.long	.L48-.L28
	.long	.L49-.L28
	.long	.L50-.L28
	.long	.L51-.L28
	.long	.L52-.L28
	.long	.L53-.L28
	.long	.L54-.L28
	.long	.L55-.L28
	.long	.L56-.L28
	.text
.L27:
	.loc 1 93 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 94 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$12, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 95 0
	jmp	.L57
.L29:
	.loc 1 97 0
	leaq	.LC12(%rip), %rcx
	call	puts
	.loc 1 98 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$3, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 99 0
	jmp	.L57
.L30:
	.loc 1 101 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 102 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 103 0
	jmp	.L57
.L31:
	.loc 1 105 0
	leaq	.LC14(%rip), %rcx
	call	puts
	.loc 1 106 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$2, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 107 0
	jmp	.L57
.L32:
	.loc 1 109 0
	leaq	.LC15(%rip), %rcx
	call	puts
	.loc 1 110 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 111 0
	jmp	.L57
.L33:
	.loc 1 113 0
	leaq	.LC16(%rip), %rcx
	call	puts
	.loc 1 114 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 115 0
	jmp	.L57
.L34:
	.loc 1 117 0
	leaq	.LC17(%rip), %rcx
	call	puts
	.loc 1 118 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$6, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 119 0
	jmp	.L57
.L35:
	.loc 1 121 0
	leaq	.LC18(%rip), %rcx
	call	puts
	.loc 1 122 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$7, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 123 0
	jmp	.L57
.L36:
	.loc 1 125 0
	leaq	.LC19(%rip), %rcx
	call	puts
	.loc 1 126 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 127 0
	jmp	.L57
.L37:
	.loc 1 129 0
	leaq	.LC20(%rip), %rcx
	call	puts
	.loc 1 130 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$1, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 131 0
	jmp	.L57
.L38:
	.loc 1 133 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 134 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 135 0
	jmp	.L57
.L39:
	.loc 1 137 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 138 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 139 0
	jmp	.L57
.L40:
	.loc 1 141 0
	leaq	.LC22(%rip), %rcx
	call	puts
	.loc 1 142 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$19, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 143 0
	jmp	.L57
.L41:
	.loc 1 145 0
	leaq	.LC23(%rip), %rcx
	call	puts
	.loc 1 146 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$20, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 147 0
	jmp	.L57
.L42:
	.loc 1 149 0
	leaq	.LC24(%rip), %rcx
	call	puts
	.loc 1 150 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$21, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 151 0
	jmp	.L57
.L43:
	.loc 1 153 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 154 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$16, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 155 0
	jmp	.L57
.L44:
	.loc 1 157 0
	leaq	.LC26(%rip), %rcx
	call	puts
	.loc 1 158 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$17, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 159 0
	jmp	.L57
.L45:
	.loc 1 161 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 162 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$18, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 163 0
	jmp	.L57
.L46:
	.loc 1 165 0
	leaq	.LC28(%rip), %rcx
	call	puts
	.loc 1 166 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$26, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 167 0
	jmp	.L57
.L47:
	.loc 1 169 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 170 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$28, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 171 0
	jmp	.L57
.L48:
	.loc 1 173 0
	leaq	.LC30(%rip), %rcx
	call	puts
	.loc 1 174 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$25, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 175 0
	jmp	.L57
.L49:
	.loc 1 177 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 178 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$29, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 179 0
	jmp	.L57
.L50:
	.loc 1 181 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 182 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$27, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 183 0
	jmp	.L57
.L51:
	.loc 1 185 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 186 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$22, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 187 0
	jmp	.L57
.L52:
	.loc 1 189 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 190 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$30, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 191 0
	jmp	.L57
.L53:
	.loc 1 193 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 194 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$24, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 195 0
	jmp	.L57
.L54:
	.loc 1 197 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 198 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$32, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 199 0
	jmp	.L57
.L55:
	.loc 1 201 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 202 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$23, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 203 0
	jmp	.L57
.L56:
	.loc 1 205 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 206 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$31, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 207 0
	jmp	.L57
.L58:
	.loc 1 209 0
	nop
.L57:
	.loc 1 212 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 213 0
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, -16(%rbp)
	.loc 1 214 0
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdx
	movl	$0, %ecx
	call	stmt_create
	movq	%rax, -8(%rbp)
	.loc 1 215 0
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 216 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "Going to build add assignment expression statement.\0"
	.align 8
.LC34:
	.ascii "Going to build sub assignment expression statement.\0"
	.align 8
.LC35:
	.ascii "Going to build mul assignment expression statement.\0"
	.align 8
.LC36:
	.ascii "Going to build div assignment expression statement.\0"
	.align 8
.LC37:
	.ascii "Going to build bigger expression statement.\0"
	.align 8
.LC38:
	.ascii "Going to build bigger or equal expression statement.\0"
	.align 8
.LC39:
	.ascii "Going to build smaller expression statement.\0"
	.align 8
.LC40:
	.ascii "Going to build smaller or equal expression statement.\0"
	.align 8
.LC41:
	.ascii "Going to build equal expression statement.\0"
	.text
	.globl	BuildAssignAndCompareExprStatement
	.def	BuildAssignAndCompareExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildAssignAndCompareExprStatement
BuildAssignAndCompareExprStatement:
.LFB14:
	.loc 1 219 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	.loc 1 221 0
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 222 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 225 0
	cmpl	$9, 40(%rbp)
	ja	.L72
	movl	40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L62(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L62(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L62:
	.long	.L72-.L62
	.long	.L61-.L62
	.long	.L63-.L62
	.long	.L64-.L62
	.long	.L65-.L62
	.long	.L66-.L62
	.long	.L67-.L62
	.long	.L68-.L62
	.long	.L69-.L62
	.long	.L70-.L62
	.text
.L61:
	.loc 1 227 0
	leaq	.LC33(%rip), %rcx
	call	puts
	.loc 1 228 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$4, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 229 0
	jmp	.L71
.L63:
	.loc 1 231 0
	leaq	.LC34(%rip), %rcx
	call	puts
	.loc 1 232 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$5, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 233 0
	jmp	.L71
.L64:
	.loc 1 235 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 236 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$6, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 237 0
	jmp	.L71
.L65:
	.loc 1 239 0
	leaq	.LC36(%rip), %rcx
	call	puts
	.loc 1 240 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$7, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 241 0
	jmp	.L71
.L66:
	.loc 1 243 0
	leaq	.LC37(%rip), %rcx
	call	puts
	.loc 1 244 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 245 0
	jmp	.L71
.L67:
	.loc 1 247 0
	leaq	.LC38(%rip), %rcx
	call	puts
	.loc 1 248 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 249 0
	jmp	.L71
.L68:
	.loc 1 251 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 252 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 253 0
	jmp	.L71
.L69:
	.loc 1 255 0
	leaq	.LC40(%rip), %rcx
	call	puts
	.loc 1 256 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 257 0
	jmp	.L71
.L70:
	.loc 1 259 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 260 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	.loc 1 261 0
	jmp	.L71
.L72:
	.loc 1 263 0
	nop
.L71:
	.loc 1 266 0
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 267 0
	nop
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC42:
	.ascii "Going to build add declaration statement.\0"
	.text
	.globl	BuildDeclarationStatement
	.def	BuildDeclarationStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDeclarationStatement
BuildDeclarationStatement:
.LFB15:
	.loc 1 270 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 1 271 0
	leaq	.LC42(%rip), %rcx
	call	puts
	.loc 1 272 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 273 0
	movq	-24(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, -16(%rbp)
	.loc 1 274 0
	movq	-16(%rbp), %rax
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdx
	movl	$0, %ecx
	call	stmt_create
	movq	%rax, -8(%rbp)
	.loc 1 275 0
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 276 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.section .rdata,"dr"
.LC43:
	.ascii "Going to build statement new.\0"
	.text
	.globl	BuildNewStatement
	.def	BuildNewStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildNewStatement
BuildNewStatement:
.LFB16:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 1 280 0
	leaq	.LC43(%rip), %rcx
	call	puts
	.loc 1 281 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 16(%rbp)
	.loc 1 282 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 16(%rbp)
	.loc 1 283 0
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 284 0
	movq	16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 285 0
	movq	-24(%rbp), %rdx
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$14, %ecx
	call	stmt_create
	movq	%rax, -8(%rbp)
	.loc 1 286 0
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 287 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.globl	CheckIfMemberOfStatement
	.def	CheckIfMemberOfStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckIfMemberOfStatement
CheckIfMemberOfStatement:
.LFB17:
	.loc 1 289 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 291 0
	movl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.L76
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L77
.L76:
	.loc 1 292 0 is_stmt 1
	movl	4(%rbx), %eax
	cmpl	$1, %eax
	jne	.L78
	.loc 1 292 0 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L77
.L78:
	.loc 1 293 0 is_stmt 1
	movl	8(%rbx), %eax
	cmpl	$1, %eax
	jne	.L79
	.loc 1 293 0 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L77
.L79:
	.loc 1 294 0 is_stmt 1
	movl	12(%rbx), %eax
	cmpl	$1, %eax
	jne	.L80
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	$4, %eax
	jmp	.L77
.L80:
	.loc 1 295 0 is_stmt 1
	movl	16(%rbx), %eax
	cmpl	$1, %eax
	jne	.L81
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	$5, %eax
	jmp	.L77
.L81:
	.loc 1 297 0 is_stmt 1
	movl	$-1, %eax
.L77:
	.loc 1 298 0
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 16
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.globl	ClearFlags
	.def	ClearFlags;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearFlags
ClearFlags:
.LFB18:
	.loc 1 300 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 302 0
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L83
	.loc 1 302 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, (%rax)
.L83:
	.loc 1 303 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L84
	.loc 1 303 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 4(%rax)
.L84:
	.loc 1 304 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L85
	.loc 1 304 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 8(%rax)
.L85:
	.loc 1 305 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jne	.L87
	.loc 1 305 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
.L87:
	.loc 1 306 0 is_stmt 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "pointer symbol\0"
.LC45:
	.ascii "Pointer type array.\0"
.LC46:
	.ascii "The array type : %s\12\0"
.LC47:
	.ascii "end of command\0"
.LC48:
	.ascii "struct\0"
.LC49:
	.ascii "union\0"
.LC50:
	.ascii "enum\0"
	.align 8
.LC51:
	.ascii "The true array type : %d : %s\12\0"
.LC52:
	.ascii "int\0"
.LC53:
	.ascii "string\0"
.LC54:
	.ascii "float\0"
.LC55:
	.ascii "void\0"
.LC56:
	.ascii "bool\0"
.LC57:
	.ascii "char\0"
	.text
	.globl	CheckArrayType
	.def	CheckArrayType;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckArrayType
CheckArrayType:
.LFB19:
	.loc 1 309 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	.loc 1 309 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	.loc 1 310 0
	movl	$0, -56(%rbp)
	.loc 1 311 0
	movl	$0, -52(%rbp)
	.loc 1 314 0
	movq	-72(%rbp), %rax
	addq	$4, %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L89
	.loc 1 316 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 317 0
	movl	$1, -56(%rbp)
.L89:
	.loc 1 319 0
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 1 320 0
	movq	-72(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rcx
	call	printf
	.loc 1 322 0
	movq	-72(%rbp), %rax
	addq	$4, %rax
	leaq	.LC47(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L90
	.loc 1 323 0
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 1 324 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	testq	%rax, %rax
	je	.L91
	.loc 1 326 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 328 0
	leaq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L92
	.loc 1 328 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L92
	.loc 1 328 0 discriminator 2
	movl	$24, -52(%rbp)
	jmp	.L93
.L92:
	.loc 1 329 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L94
	.loc 1 329 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L94
	.loc 1 329 0 discriminator 2
	movl	$25, -52(%rbp)
	jmp	.L93
.L94:
	.loc 1 330 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L95
	.loc 1 330 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L95
	.loc 1 330 0 discriminator 2
	movl	$26, -52(%rbp)
	jmp	.L93
.L95:
	.loc 1 331 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L96
	.loc 1 331 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L96
	.loc 1 331 0 discriminator 2
	movl	$27, -52(%rbp)
	jmp	.L93
.L96:
	.loc 1 332 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L97
	.loc 1 332 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L97
	.loc 1 332 0 discriminator 2
	movl	$28, -52(%rbp)
	jmp	.L93
.L97:
	.loc 1 333 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L93
	.loc 1 333 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L93
	.loc 1 333 0 discriminator 2
	movl	$29, -52(%rbp)
.L93:
	.loc 1 335 0 is_stmt 1
	leaq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC51(%rip), %rcx
	call	printf
	.loc 1 337 0
	movl	-52(%rbp), %eax
	jmp	.L120
.L90:
	.loc 1 340 0
	movq	-72(%rbp), %rax
	addq	$4, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L99
	.loc 1 341 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	testq	%rax, %rax
	je	.L91
	.loc 1 343 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 345 0
	leaq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L100
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L100
	.loc 1 345 0 discriminator 2
	movl	$24, -52(%rbp)
	jmp	.L101
.L100:
	.loc 1 346 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L102
	.loc 1 346 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L102
	.loc 1 346 0 discriminator 2
	movl	$25, -52(%rbp)
	jmp	.L101
.L102:
	.loc 1 347 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L103
	.loc 1 347 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L103
	.loc 1 347 0 discriminator 2
	movl	$26, -52(%rbp)
	jmp	.L101
.L103:
	.loc 1 348 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L104
	.loc 1 348 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L104
	.loc 1 348 0 discriminator 2
	movl	$27, -52(%rbp)
	jmp	.L101
.L104:
	.loc 1 349 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L105
	.loc 1 349 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L105
	.loc 1 349 0 discriminator 2
	movl	$28, -52(%rbp)
	jmp	.L101
.L105:
	.loc 1 350 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 350 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L101
	.loc 1 350 0 discriminator 2
	movl	$29, -52(%rbp)
.L101:
	.loc 1 352 0 is_stmt 1
	leaq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC51(%rip), %rcx
	call	printf
	.loc 1 354 0
	movl	-52(%rbp), %eax
	jmp	.L120
.L99:
	.loc 1 357 0
	movq	-72(%rbp), %rax
	addq	$4, %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L91
	.loc 1 358 0
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 1 359 0
	movl	$1, -56(%rbp)
	.loc 1 360 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	testq	%rax, %rax
	je	.L91
	.loc 1 362 0
	movq	-72(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	SearchSymbolTable_TYPE
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 363 0
	leaq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L106
	.loc 1 363 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L106
	.loc 1 363 0 discriminator 2
	movl	$25, -52(%rbp)
	jmp	.L107
.L106:
	.loc 1 364 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L108
	.loc 1 364 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L108
	.loc 1 364 0 discriminator 2
	movl	$27, -52(%rbp)
	jmp	.L107
.L108:
	.loc 1 365 0 is_stmt 1
	leaq	-48(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L107
	.loc 1 365 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L107
	.loc 1 365 0 discriminator 2
	movl	$29, -52(%rbp)
.L107:
	.loc 1 366 0 is_stmt 1
	leaq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC51(%rip), %rcx
	call	printf
	.loc 1 367 0
	movl	-52(%rbp), %eax
	jmp	.L120
.L91:
	.loc 1 371 0
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L109
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L109
	.loc 1 371 0 discriminator 2
	movl	$13, -52(%rbp)
	jmp	.L110
.L109:
	.loc 1 372 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L111
	.loc 1 372 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L111
	.loc 1 372 0 discriminator 2
	movl	$19, -52(%rbp)
	jmp	.L110
.L111:
	.loc 1 373 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L112
	.loc 1 373 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L112
	.loc 1 373 0 discriminator 2
	movl	$14, -52(%rbp)
	jmp	.L110
.L112:
	.loc 1 374 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L113
	.loc 1 374 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L113
	.loc 1 374 0 discriminator 2
	movl	$20, -52(%rbp)
	jmp	.L110
.L113:
	.loc 1 375 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L114
	.loc 1 375 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L114
	.loc 1 375 0 discriminator 2
	movl	$15, -52(%rbp)
	jmp	.L110
.L114:
	.loc 1 376 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L115
	.loc 1 376 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L115
	.loc 1 376 0 discriminator 2
	movl	$21, -52(%rbp)
	jmp	.L110
.L115:
	.loc 1 377 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L116
	.loc 1 377 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L116
	.loc 1 377 0 discriminator 2
	movl	$16, -52(%rbp)
	jmp	.L110
.L116:
	.loc 1 378 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L110
	.loc 1 378 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L110
	.loc 1 378 0 discriminator 2
	movl	$22, -52(%rbp)
.L110:
	.loc 1 379 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L117
	.loc 1 379 0 is_stmt 0 discriminator 1
	movl	$17, -52(%rbp)
	jmp	.L118
.L117:
	.loc 1 380 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC57(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L119
	.loc 1 380 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L119
	.loc 1 380 0 discriminator 2
	movl	$18, -52(%rbp)
	jmp	.L118
.L119:
	.loc 1 381 0 is_stmt 1
	movq	-72(%rbp), %rax
	addq	$104, %rax
	leaq	.LC57(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L118
	.loc 1 381 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)
	jne	.L118
	.loc 1 381 0 discriminator 2
	movl	$23, -52(%rbp)
.L118:
	.loc 1 383 0 is_stmt 1
	movl	-52(%rbp), %eax
.L120:
	.loc 1 384 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	.L121
	call	__stack_chk_fail
.L121:
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "./src/../inc/../inc/parse_state.h"
	.file 8 "./src/../inc/../inc/ast.h"
	.file 9 "./src/../inc/../inc/command.h"
	.file 10 "./src/../inc/../inc/../inc/symbol_table.h"
	.file 11 "./src/../inc/parserFunctions.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1b2d
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/parserFunctions.c\0"
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
	.long	0x152
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x175
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x1a2
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x182
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x146
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x1a4
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x146
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x136
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x217
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1e4
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x217
	.byte	0
	.uleb128 0x9
	.long	0xfb
	.long	0x227
	.uleb128 0xa
	.long	0x152
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x250
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x12f
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1f3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x227
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x193
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x136
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2e1
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2e1
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12f
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x12f
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x12f
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2e7
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x281
	.uleb128 0x9
	.long	0x272
	.long	0x2f7
	.uleb128 0xa
	.long	0x152
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x3a5
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x12f
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x12f
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x12f
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x12f
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x12f
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x12f
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x12f
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x12f
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3fb
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3fb
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3fb
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x272
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x272
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x1a2
	.long	0x40b
	.uleb128 0xa
	.long	0x152
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x452
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x452
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x458
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x3a5
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x40b
	.uleb128 0x9
	.long	0x468
	.long	0x468
	.uleb128 0xa
	.long	0x152
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x46e
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x49b
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x49b
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x12f
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xfb
	.uleb128 0x14
	.long	0x1d4
	.long	0x4bf
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x1a2
	.uleb128 0x15
	.long	0x669
	.uleb128 0x15
	.long	0x167
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4ca
	.uleb128 0x4
	.long	0x4bf
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x669
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x12f
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8f4
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8f4
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8f4
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x12f
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbb6
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x12f
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbd2
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x12f
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbe3
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2e1
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x12f
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2e1
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbe9
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x12f
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x669
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb8c
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x452
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x40b
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbfa
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8b0
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xc06
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x175
	.uleb128 0xe
	.byte	0x8
	.long	0x4a1
	.uleb128 0x14
	.long	0x1d4
	.long	0x693
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x1a2
	.uleb128 0x15
	.long	0x693
	.uleb128 0x15
	.long	0x167
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x17d
	.uleb128 0xe
	.byte	0x8
	.long	0x675
	.uleb128 0x14
	.long	0x1b4
	.long	0x6bd
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x1a2
	.uleb128 0x15
	.long	0x1b4
	.uleb128 0x15
	.long	0x12f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x69f
	.uleb128 0x14
	.long	0x12f
	.long	0x6d7
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x1a2
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6c3
	.uleb128 0x9
	.long	0xfb
	.long	0x6ed
	.uleb128 0xa
	.long	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xfb
	.long	0x6fd
	.uleb128 0xa
	.long	0x152
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x87d
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x49b
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x12f
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x10c
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x10c
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x46f
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x12f
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4bf
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x1a2
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x66f
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x699
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6bd
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6d7
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x46f
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x49b
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x12f
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6dd
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6ed
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x46f
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x12f
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x12f
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x1a4
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x89b
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x262
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x250
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1c3
	.long	0x89b
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x1a2
	.uleb128 0x15
	.long	0x1c3
	.uleb128 0x15
	.long	0x12f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x87d
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6fd
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8ee
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8ee
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x12f
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8f4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8b0
	.uleb128 0xe
	.byte	0x8
	.long	0x8a1
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x938
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x938
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x938
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x119
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x119
	.long	0x948
	.uleb128 0xa
	.long	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaf5
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x136
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x669
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaf5
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2f7
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x12f
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xb05
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8fa
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x250
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x250
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x250
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb1f
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb2f
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x12f
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x250
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x250
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x250
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x250
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x250
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x12f
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x175
	.long	0xb05
	.uleb128 0xa
	.long	0x152
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x175
	.long	0xb2f
	.uleb128 0xa
	.long	0x152
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x175
	.long	0xb3f
	.uleb128 0xa
	.long	0x152
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb6c
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb6c
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb7c
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x49b
	.long	0xb7c
	.uleb128 0xa
	.long	0x152
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x136
	.long	0xb8c
	.uleb128 0xa
	.long	0x152
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbb6
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x948
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb3f
	.byte	0
	.uleb128 0x9
	.long	0x175
	.long	0xbc6
	.uleb128 0xa
	.long	0x152
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbc6
	.uleb128 0x1f
	.long	0xbe3
	.uleb128 0x15
	.long	0x4bf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbd8
	.uleb128 0xe
	.byte	0x8
	.long	0x2e1
	.uleb128 0x1f
	.long	0xbfa
	.uleb128 0x15
	.long	0x12f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc00
	.uleb128 0xe
	.byte	0x8
	.long	0xbef
	.uleb128 0x9
	.long	0x8a1
	.long	0xc16
	.uleb128 0xa
	.long	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4bf
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4c5
	.uleb128 0x9
	.long	0x17d
	.long	0xc50
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc45
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc50
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xd8
	.byte	0x7
	.byte	0x6
	.long	0xca4
	.uleb128 0xc
	.ascii "pos\0"
	.byte	0x7
	.byte	0x8
	.long	0x12f
	.byte	0
	.uleb128 0xc
	.ascii "type\0"
	.byte	0x7
	.byte	0x9
	.long	0xca4
	.byte	0x4
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x7
	.byte	0xa
	.long	0xca4
	.byte	0x68
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x7
	.byte	0xb
	.long	0xcb4
	.byte	0xd0
	.byte	0
	.uleb128 0x9
	.long	0x175
	.long	0xcb4
	.uleb128 0xa
	.long	0x152
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc64
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0xc
	.long	0xc64
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x136
	.byte	0x8
	.byte	0x9
	.long	0xf57
	.uleb128 0x27
	.ascii "TYPE_VOID\0"
	.byte	0
	.uleb128 0x27
	.ascii "TYPE_BOOLEAN\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "TYPE_CHARACTER\0"
	.byte	0x2
	.uleb128 0x27
	.ascii "TYPE_INTEGER\0"
	.byte	0x3
	.uleb128 0x27
	.ascii "TYPE_STRING\0"
	.byte	0x4
	.uleb128 0x27
	.ascii "TYPE_FLOAT\0"
	.byte	0x5
	.uleb128 0x27
	.ascii "TYPE_FLOAT_POINTER\0"
	.byte	0x6
	.uleb128 0x27
	.ascii "TYPE_INT_POINTER\0"
	.byte	0x7
	.uleb128 0x27
	.ascii "TYPE_CHAR_POINTER\0"
	.byte	0x8
	.uleb128 0x27
	.ascii "TYPE_STRING_POINTER\0"
	.byte	0x9
	.uleb128 0x27
	.ascii "TYPE_VOID_POINTER\0"
	.byte	0xa
	.uleb128 0x27
	.ascii "TYPE_FUNCTION\0"
	.byte	0xb
	.uleb128 0x27
	.ascii "TYPE_HEXNUM\0"
	.byte	0xc
	.uleb128 0x27
	.ascii "TYPE_STRUCT\0"
	.byte	0xd
	.uleb128 0x27
	.ascii "TYPE_ENUM\0"
	.byte	0xe
	.uleb128 0x27
	.ascii "TYPE_UNION\0"
	.byte	0xf
	.uleb128 0x27
	.ascii "TYPE_VOID_ARRAY\0"
	.byte	0x10
	.uleb128 0x27
	.ascii "TYPE_BOOLEAN_ARRAY\0"
	.byte	0x11
	.uleb128 0x27
	.ascii "TYPE_CHAR_ARRAY\0"
	.byte	0x12
	.uleb128 0x27
	.ascii "TYPE_INTEGER_ARRAY\0"
	.byte	0x13
	.uleb128 0x27
	.ascii "TYPE_STRING_ARRAY\0"
	.byte	0x14
	.uleb128 0x27
	.ascii "TYPE_FLOAT_ARRAY\0"
	.byte	0x15
	.uleb128 0x27
	.ascii "TYPE_STRUCT_ARRAY\0"
	.byte	0x16
	.uleb128 0x27
	.ascii "TYPE_ENUM_ARRAY\0"
	.byte	0x17
	.uleb128 0x27
	.ascii "TYPE_UNION_ARRAY\0"
	.byte	0x18
	.uleb128 0x27
	.ascii "TYPE_FLOAT_POINTER_ARRAY\0"
	.byte	0x19
	.uleb128 0x27
	.ascii "TYPE_INT_POINTER_ARRAY\0"
	.byte	0x1a
	.uleb128 0x27
	.ascii "TYPE_CHAR_POINTER_ARRAY\0"
	.byte	0x1b
	.uleb128 0x27
	.ascii "TYPE_STRING_POINTER_ARRAY\0"
	.byte	0x1c
	.uleb128 0x27
	.ascii "TYPE_VOID_POINTER_ARRAY\0"
	.byte	0x1d
	.uleb128 0x27
	.ascii "TYPE_STRUCT_POINTER_ARRAY\0"
	.byte	0x1e
	.uleb128 0x27
	.ascii "TYPE_ENUM_POINTER_ARRAY\0"
	.byte	0x1f
	.uleb128 0x27
	.ascii "TYPE_UNION_POINTER_ARRAY\0"
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.ascii "type_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0xcc5
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x8
	.byte	0x2d
	.long	0xf9f
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x2e
	.long	0xf57
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x8
	.byte	0x2f
	.long	0xf9f
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x8
	.byte	0x30
	.long	0xfde
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf65
	.uleb128 0xd
	.ascii "param_list\0"
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0xfde
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x35
	.long	0x669
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x36
	.long	0xff0
	.byte	0x8
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x37
	.long	0xfde
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xfa5
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x8
	.byte	0x31
	.long	0xf65
	.uleb128 0xe
	.byte	0x8
	.long	0xfe4
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x136
	.byte	0x8
	.byte	0x3e
	.long	0x1123
	.uleb128 0x27
	.ascii "EXPR_ADD\0"
	.byte	0
	.uleb128 0x27
	.ascii "EXPR_SUB\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "EXPR_MUL\0"
	.byte	0x2
	.uleb128 0x27
	.ascii "EXPR_DIV\0"
	.byte	0x3
	.uleb128 0x27
	.ascii "EXPR_ADD_ASSIGNMENT\0"
	.byte	0x4
	.uleb128 0x27
	.ascii "EXPR_SUB_ASSIGNMENT\0"
	.byte	0x5
	.uleb128 0x27
	.ascii "EXPR_MUL_ASSIGNMENT\0"
	.byte	0x6
	.uleb128 0x27
	.ascii "EXPR_DIV_ASSIGNMENT\0"
	.byte	0x7
	.uleb128 0x27
	.ascii "EXPR_INCREMENT\0"
	.byte	0x8
	.uleb128 0x27
	.ascii "EXPR_DECREMENT\0"
	.byte	0x9
	.uleb128 0x27
	.ascii "EXPR_STRING_LITERAL\0"
	.byte	0xa
	.uleb128 0x27
	.ascii "EXPR_BIGGER_CMP\0"
	.byte	0xb
	.uleb128 0x27
	.ascii "EXPR_BIGGEROREQ_CMP\0"
	.byte	0xc
	.uleb128 0x27
	.ascii "EXPR_SMALLER_CMP\0"
	.byte	0xd
	.uleb128 0x27
	.ascii "EXPR_SMALLEROREQ_CMP\0"
	.byte	0xe
	.uleb128 0x27
	.ascii "EXPR_EQUAL_CMP\0"
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.ascii "expr_t\0"
	.byte	0x8
	.byte	0x4f
	.long	0xff6
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x8
	.byte	0x51
	.long	0x11ca
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x52
	.long	0x1123
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x8
	.byte	0x53
	.long	0x11ca
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x8
	.byte	0x54
	.long	0x11ca
	.byte	0x10
	.uleb128 0xc
	.ascii "string_literal\0"
	.byte	0x8
	.byte	0x55
	.long	0x669
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x8
	.byte	0x56
	.long	0x669
	.byte	0x20
	.uleb128 0xc
	.ascii "integer_value\0"
	.byte	0x8
	.byte	0x57
	.long	0x12f
	.byte	0x28
	.uleb128 0xc
	.ascii "character_value\0"
	.byte	0x8
	.byte	0x58
	.long	0x175
	.byte	0x2c
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x59
	.long	0x12f
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1131
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x8
	.byte	0x5a
	.long	0x1131
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x136
	.byte	0x8
	.byte	0x5f
	.long	0x1309
	.uleb128 0x27
	.ascii "STMT_DECL\0"
	.byte	0
	.uleb128 0x27
	.ascii "STMT_EXPR\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "STMT_IF_ELSE\0"
	.byte	0x2
	.uleb128 0x27
	.ascii "STMT_FOR\0"
	.byte	0x3
	.uleb128 0x27
	.ascii "STMT_PRINT\0"
	.byte	0x4
	.uleb128 0x27
	.ascii "STMT_IMPORT\0"
	.byte	0x5
	.uleb128 0x27
	.ascii "STMT_LOAD\0"
	.byte	0x6
	.uleb128 0x27
	.ascii "STMT_DELETE\0"
	.byte	0x7
	.uleb128 0x27
	.ascii "STMT_DEFER\0"
	.byte	0x8
	.uleb128 0x27
	.ascii "STMT_ASSERT\0"
	.byte	0x9
	.uleb128 0x27
	.ascii "STMT_RETURN\0"
	.byte	0xa
	.uleb128 0x27
	.ascii "STMT_BREAK\0"
	.byte	0xb
	.uleb128 0x27
	.ascii "STMT_CONTINUE\0"
	.byte	0xc
	.uleb128 0x27
	.ascii "STMT_BLOCK\0"
	.byte	0xd
	.uleb128 0x27
	.ascii "STMT_NEW\0"
	.byte	0xe
	.uleb128 0x27
	.ascii "STMT_SLEEP\0"
	.byte	0xf
	.uleb128 0x27
	.ascii "STMT_MAIN\0"
	.byte	0x10
	.uleb128 0x27
	.ascii "STMT_SCAN\0"
	.byte	0x11
	.uleb128 0x27
	.ascii "STMT_CAST\0"
	.byte	0x12
	.uleb128 0x27
	.ascii "STMT_WHILE\0"
	.byte	0x13
	.uleb128 0x27
	.ascii "STMT_ARRAYADD\0"
	.byte	0x14
	.uleb128 0x27
	.ascii "STMT_EACH\0"
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.ascii "stmt_t\0"
	.byte	0x8
	.byte	0x76
	.long	0x11dc
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x48
	.byte	0x8
	.byte	0x78
	.long	0x13a6
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x79
	.long	0x1309
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x8
	.byte	0x7a
	.long	0x13f4
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x8
	.byte	0x7b
	.long	0x13fa
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF5
	.byte	0x8
	.byte	0x7c
	.long	0x13fa
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x8
	.byte	0x7d
	.long	0x13fa
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x8
	.byte	0x7e
	.long	0x1400
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x8
	.byte	0x7f
	.long	0x1400
	.byte	0x30
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x80
	.long	0x1400
	.byte	0x38
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x81
	.long	0x12f
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x8
	.byte	0x87
	.long	0x13f4
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x88
	.long	0xca4
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x89
	.long	0xff0
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0x8a
	.long	0x13fa
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x8
	.byte	0x8b
	.long	0x1412
	.byte	0x78
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x8c
	.long	0x13f4
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13a6
	.uleb128 0xe
	.byte	0x8
	.long	0x11d0
	.uleb128 0xe
	.byte	0x8
	.long	0x1317
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x8
	.byte	0x82
	.long	0x1317
	.uleb128 0xe
	.byte	0x8
	.long	0x1406
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x8
	.byte	0x8d
	.long	0x13a6
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x9
	.byte	0x6
	.long	0x146c
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x9
	.byte	0x8
	.long	0x146c
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x9
	.byte	0x9
	.long	0x1412
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x9
	.byte	0xa
	.long	0x13fa
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x9
	.byte	0xb
	.long	0x1472
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1418
	.uleb128 0xe
	.byte	0x8
	.long	0x1424
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x9
	.byte	0xc
	.long	0x1424
	.uleb128 0xf
	.secrel32	.LASF6
	.word	0x138
	.byte	0xa
	.byte	0x4
	.long	0x14f5
	.uleb128 0xc
	.ascii "variableName\0"
	.byte	0xa
	.byte	0x5
	.long	0xca4
	.byte	0
	.uleb128 0xc
	.ascii "variableType\0"
	.byte	0xa
	.byte	0x6
	.long	0xca4
	.byte	0x64
	.uleb128 0xc
	.ascii "scope\0"
	.byte	0xa
	.byte	0x7
	.long	0xca4
	.byte	0xc8
	.uleb128 0x10
	.ascii "isAlreadyDeclared\0"
	.byte	0xa
	.byte	0x8
	.long	0x12f
	.word	0x12c
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0xa
	.byte	0x9
	.long	0x14f5
	.word	0x130
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1487
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0xa
	.byte	0xa
	.long	0x1487
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0x18
	.byte	0xb
	.byte	0x12
	.long	0x159e
	.uleb128 0xc
	.ascii "nIsStructMember\0"
	.byte	0xb
	.byte	0x14
	.long	0x12f
	.byte	0
	.uleb128 0xc
	.ascii "nIsUnionMember\0"
	.byte	0xb
	.byte	0x15
	.long	0x12f
	.byte	0x4
	.uleb128 0xc
	.ascii "nIsEnumMember\0"
	.byte	0xb
	.byte	0x16
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "nIsAssertMember\0"
	.byte	0xb
	.byte	0x17
	.long	0x12f
	.byte	0xc
	.uleb128 0xc
	.ascii "nIsMainMember\0"
	.byte	0xb
	.byte	0x18
	.long	0x12f
	.byte	0x10
	.uleb128 0xc
	.ascii "nIsReturnMember\0"
	.byte	0xb
	.byte	0x19
	.long	0x12f
	.byte	0x14
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF7
	.byte	0xb
	.byte	0x1a
	.long	0x1506
	.uleb128 0x28
	.ascii "CheckArrayType\0"
	.byte	0x1
	.word	0x134
	.long	0x12f
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1641
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x134
	.long	0x1641
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.ascii "symTable\0"
	.byte	0x1
	.word	0x134
	.long	0x1647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.ascii "isPointer\0"
	.byte	0x1
	.word	0x136
	.long	0x12f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.ascii "arrayType\0"
	.byte	0x1
	.word	0x137
	.long	0x12f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.ascii "trueArrayType\0"
	.byte	0x1
	.word	0x138
	.long	0x164d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xcba
	.uleb128 0xe
	.byte	0x8
	.long	0x14fb
	.uleb128 0x9
	.long	0x175
	.long	0x165d
	.uleb128 0xa
	.long	0x152
	.byte	0x27
	.byte	0
	.uleb128 0x2c
	.ascii "ClearFlags\0"
	.byte	0x1
	.word	0x12c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1695
	.uleb128 0x2a
	.ascii "mFlags\0"
	.byte	0x1
	.word	0x12c
	.long	0x1695
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x159e
	.uleb128 0x2d
	.ascii "CheckIfMemberOfStatement\0"
	.byte	0x1
	.word	0x121
	.long	0x12f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e5
	.uleb128 0x2a
	.ascii "mFlags\0"
	.byte	0x1
	.word	0x121
	.long	0x159e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.ascii "BuildNewStatement\0"
	.byte	0x1
	.word	0x117
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1771
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x117
	.long	0x1641
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF9
	.byte	0x1
	.word	0x117
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "temp\0"
	.byte	0x1
	.word	0x117
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.ascii "expr1\0"
	.byte	0x1
	.word	0x11b
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.ascii "expr2\0"
	.byte	0x1
	.word	0x11c
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF10
	.byte	0x1
	.word	0x11d
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1478
	.uleb128 0x2e
	.ascii "BuildDeclarationStatement\0"
	.byte	0x1
	.word	0x10e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1809
	.uleb128 0x2a
	.ascii "temp\0"
	.byte	0x1
	.word	0x10e
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "temp2\0"
	.byte	0x1
	.word	0x10e
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF9
	.byte	0x1
	.word	0x10e
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.secrel32	.LASF5
	.byte	0x1
	.word	0x110
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.secrel32	.LASF11
	.byte	0x1
	.word	0x111
	.long	0x146c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF10
	.byte	0x1
	.word	0x112
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.ascii "BuildAssignAndCompareExprStatement\0"
	.byte	0x1
	.byte	0xdb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ca
	.uleb128 0x31
	.ascii "temp\0"
	.byte	0x1
	.byte	0xdb
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.ascii "temp2\0"
	.byte	0x1
	.byte	0xdb
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.secrel32	.LASF9
	.byte	0x1
	.byte	0xdb
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.ascii "operation\0"
	.byte	0x1
	.byte	0xdb
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.secrel32	.LASF12
	.byte	0x1
	.byte	0xdb
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.ascii "leftExpr\0"
	.byte	0x1
	.byte	0xdd
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.ascii "rightExpr\0"
	.byte	0x1
	.byte	0xde
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF5
	.byte	0x1
	.byte	0xdf
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.ascii "BuildDeclarationExprStatement\0"
	.byte	0x1
	.byte	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1988
	.uleb128 0x32
	.secrel32	.LASF13
	.byte	0x1
	.byte	0x57
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x57
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.ascii "temp\0"
	.byte	0x1
	.byte	0x57
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.ascii "switchType\0"
	.byte	0x1
	.byte	0x57
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.secrel32	.LASF12
	.byte	0x1
	.byte	0x57
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x34
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x59
	.long	0xff0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.secrel32	.LASF5
	.byte	0x1
	.byte	0xd4
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.secrel32	.LASF11
	.byte	0x1
	.byte	0xd5
	.long	0x146c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0xd6
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.ascii "BuildDoubleExprStatement\0"
	.byte	0x1
	.byte	0x3a
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a45
	.uleb128 0x32
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x3a
	.long	0x1641
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x32
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x3a
	.long	0x1771
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x32
	.secrel32	.LASF14
	.byte	0x1
	.byte	0x3a
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.ascii "temp\0"
	.byte	0x1
	.byte	0x3b
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.ascii "temp2\0"
	.byte	0x1
	.byte	0x3b
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x3c
	.long	0x1412
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.ascii "identifierExpr\0"
	.byte	0x1
	.byte	0x44
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.ascii "typeExpr\0"
	.byte	0x1
	.byte	0x45
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x30
	.ascii "BuildSingleExprStatement\0"
	.byte	0x1
	.byte	0x16
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1abe
	.uleb128 0x32
	.secrel32	.LASF13
	.byte	0x1
	.byte	0x16
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x16
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.secrel32	.LASF14
	.byte	0x1
	.byte	0x16
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x17
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x18
	.long	0x1412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.ascii "isNumberType\0"
	.byte	0x1
	.byte	0xf
	.long	0x12f
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af7
	.uleb128 0x32
	.secrel32	.LASF15
	.byte	0x1
	.byte	0xf
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.ascii "isIdentifierType\0"
	.byte	0x1
	.byte	0x8
	.long	0x12f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.secrel32	.LASF15
	.byte	0x1
	.byte	0x8
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
.LASF3:
	.ascii "theType\0"
.LASF12:
	.ascii "typeOfMember\0"
.LASF6:
	.ascii "symbolTable\0"
.LASF5:
	.ascii "theExpr\0"
.LASF9:
	.ascii "commandNode\0"
.LASF8:
	.ascii "current\0"
.LASF15:
	.ascii "currentType\0"
.LASF13:
	.ascii "currentValue\0"
.LASF10:
	.ascii "theStmt\0"
.LASF7:
	.ascii "memberFlags\0"
.LASF4:
	.ascii "memberOf\0"
.LASF11:
	.ascii "theDeclaration\0"
.LASF0:
	.ascii "_on_exit_args\0"
.LASF14:
	.ascii "statement\0"
.LASF1:
	.ascii "parse_state\0"
.LASF2:
	.ascii "next\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	stmt_create;	.scl	2;	.type	32;	.endef
	.def	push_commandList;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	type_create;	.scl	2;	.type	32;	.endef
	.def	decl_create;	.scl	2;	.type	32;	.endef
	.def	expr_create;	.scl	2;	.type	32;	.endef
	.def	SearchSymbolTable_TYPE;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
