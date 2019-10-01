	.file	"checking_functions.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.data
	.align 32
.LC0:
	.ascii "string\0"
	.space 3
	.ascii "else\0"
	.space 5
	.ascii "enum\0"
	.space 5
	.ascii "float\0"
	.space 4
	.ascii "for\0"
	.space 6
	.ascii "if\0"
	.space 7
	.ascii "int\0"
	.space 6
	.ascii "return\0"
	.space 3
	.ascii "struct\0"
	.space 3
	.ascii "while\0"
	.space 4
	.ascii "new\0"
	.space 6
	.ascii "delete\0"
	.space 3
	.ascii "defer\0"
	.space 4
	.ascii "print\0"
	.space 4
	.ascii "break\0"
	.space 4
	.ascii "continue\0"
	.space 1
	.ascii "then\0"
	.space 5
	.ascii "import\0"
	.space 3
	.ascii "load\0"
	.space 5
	.ascii "null\0"
	.space 5
	.ascii "main\0"
	.space 5
	.ascii "to\0"
	.space 7
	.ascii "cast\0"
	.space 5
	.ascii "sleep\0"
	.space 4
	.ascii "bool\0"
	.space 5
	.ascii "array_add\0"
	.ascii "true\0"
	.space 5
	.ascii "false\0"
	.space 4
	.ascii "assert\0"
	.space 3
	.ascii "union\0"
	.space 4
	.ascii "scan\0"
	.space 5
	.ascii "char\0"
	.space 5
	.ascii "void\0"
	.space 5
	.text
	.globl	isKeyword
	.def	isKeyword;	.scl	2;	.type	32;	.endef
	.seh_proc	isKeyword
isKeyword:
.LFB9:
	.file 1 "./src/checking_functions.c"
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	subq	$416, %rsp
	.seh_stackalloc	416
	.cfi_def_cfa_offset 448
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 320
	.seh_endprologue
	movq	%rcx, -88(%rbp)
	.loc 1 6 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rsi
	movq	%rsi, 280(%rbp)
	xorl	%esi, %esi
	.loc 1 7 0
	leaq	-64(%rbp), %rdx
	leaq	.LC0(%rip), %rax
	movl	$41, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzwl	(%rax), %ecx
	movw	%cx, (%rdx)
	leaq	2(%rdx), %rdx
	leaq	2(%rax), %rax
	.loc 1 14 0
	movl	$0, -68(%rbp)
	.loc 1 15 0
	movl	$0, -72(%rbp)
	jmp	.L2
.L5:
	.loc 1 16 0
	leaq	-64(%rbp), %rcx
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L3
	.loc 1 17 0
	movl	$1, -68(%rbp)
	.loc 1 18 0
	jmp	.L4
.L3:
	.loc 1 15 0 discriminator 2
	addl	$1, -72(%rbp)
.L2:
	.loc 1 15 0 is_stmt 0 discriminator 1
	cmpl	$32, -72(%rbp)
	jle	.L5
.L4:
	.loc 1 21 0 is_stmt 1
	movl	-68(%rbp), %eax
	.loc 1 22 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	280(%rbp), %rdi
	xorq	(%rdx), %rdi
	je	.L7
	call	__stack_chk_fail
.L7:
	addq	$416, %rsp
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -392
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "hexadecimal number\0"
.LC2:
	.ascii "number\0"
	.text
	.globl	isNumber
	.def	isNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	isNumber
isNumber:
.LFB10:
	.loc 1 27 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 144
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 16
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, -80(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 27 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, -40(%rbp)
	xorl	%ebx, %ebx
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 28 0
	movl	$0, -64(%rbp)
	.loc 1 29 0
	movl	32(%rbp), %edx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movslq	%edx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movslq	%edx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%edx, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	.loc 1 30 0
	movl	$0, -60(%rbp)
	.loc 1 32 0
	movslq	%edx, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 33 0
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 33 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 33 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 33 0
	movzbl	%al, %eax
	andl	$4, %eax
	.loc 1 33 0
	testl	%eax, %eax
	je	.L9
	.loc 1 34 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 35 0
	addl	$1, -60(%rbp)
	.loc 1 36 0
	addl	$1, 24(%rbp)
	.loc 1 37 0
	addl	$1, -64(%rbp)
.L15:
	.loc 1 39 0
	movl	24(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L10
	.loc 1 40 0
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 40 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 40 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 40 0
	movzbl	%al, %eax
	andl	$4, %eax
	.loc 1 40 0
	testl	%eax, %eax
	jne	.L11
	.loc 1 40 0 discriminator 2
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L12
.L11:
	.loc 1 41 0
	addl	$1, -64(%rbp)
	.loc 1 42 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 43 0
	addl	$1, 24(%rbp)
	.loc 1 44 0
	addl	$1, -60(%rbp)
	jmp	.L10
.L12:
	.loc 1 46 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L10
	.loc 1 47 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L10
	.loc 1 48 0
	addl	$1, -64(%rbp)
	.loc 1 49 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 50 0
	addl	$1, 24(%rbp)
	.loc 1 51 0
	addl	$1, -60(%rbp)
	.loc 1 52 0
	jmp	.L13
.L14:
	.loc 1 53 0
	addl	$1, -64(%rbp)
	.loc 1 54 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 55 0
	addl	$1, 24(%rbp)
	.loc 1 56 0
	addl	$1, -60(%rbp)
.L13:
	.loc 1 52 0
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 52 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 52 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 52 0
	movzbl	%al, %eax
	andl	$7, %eax
	.loc 1 52 0
	testl	%eax, %eax
	jne	.L14
.L10:
	.loc 1 61 0
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 61 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 61 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 61 0
	movzbl	%al, %eax
	andl	$4, %eax
	.loc 1 61 0
	testl	%eax, %eax
	jne	.L15
	.loc 1 61 0 is_stmt 0 discriminator 2
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L15
	.loc 1 61 0 discriminator 3
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L15
	.loc 1 62 0 is_stmt 1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	$120, %al
	jne	.L16
	.loc 1 63 0
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L17
.L16:
	.loc 1 65 0
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
.L17:
	.loc 1 67 0
	movl	-64(%rbp), %eax
	jmp	.L18
.L9:
	.loc 1 69 0
	movl	$-1, %eax
.L18:
	movq	%rbx, %rsp
	.loc 1 70 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-40(%rbp), %rdi
	xorq	(%rdx), %rdi
	je	.L20
	call	__stack_chk_fail
.L20:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -72
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "operator\0"
	.text
	.globl	isOperator
	.def	isOperator;	.scl	2;	.type	32;	.endef
	.seh_proc	isOperator
isOperator:
.LFB11:
	.loc 1 75 0
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
	movl	%ecx, %eax
	movq	%rdx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movb	%al, 16(%rbp)
	.loc 1 75 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	.loc 1 76 0
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movw	$37, -48(%rbp)
	movw	$61, -46(%rbp)
	.loc 1 79 0
	leaq	-18(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 81 0
	movq	$0, -56(%rbp)
	jmp	.L22
.L25:
	.loc 1 82 0
	movq	-56(%rbp), %rax
	movzbl	-48(%rbp,%rax,2), %eax
	cmpb	%al, 16(%rbp)
	jne	.L23
	.loc 1 83 0
	movzbl	16(%rbp), %eax
	movb	%al, -18(%rbp)
	.loc 1 84 0
	movq	-72(%rbp), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 85 0
	movl	$1, %eax
	jmp	.L26
.L23:
	.loc 1 81 0 discriminator 2
	addq	$1, -56(%rbp)
.L22:
	.loc 1 81 0 is_stmt 0 discriminator 1
	cmpq	$1, -56(%rbp)
	jbe	.L25
	.loc 1 88 0 is_stmt 1
	movl	$0, %eax
.L26:
	.loc 1 89 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	.L27
	call	__stack_chk_fail
.L27:
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.globl	isAtOperator
	.def	isAtOperator;	.scl	2;	.type	32;	.endef
	.seh_proc	isAtOperator
isAtOperator:
.LFB12:
	.loc 1 94 0
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
	movl	%r8d, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 95 0
	movl	$0, -4(%rbp)
	.loc 1 96 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L29
	.loc 1 97 0
	addl	$1, 24(%rbp)
	.loc 1 98 0
	movl	24(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L29
	.loc 1 99 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L30
	.loc 1 100 0
	addl	$1, 24(%rbp)
	.loc 1 101 0
	addl	$1, -4(%rbp)
	.loc 1 102 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L31
	.loc 1 103 0
	addl	$1, -4(%rbp)
	.loc 1 104 0
	movq	48(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movl	$1027424300, 8(%rax)
	movb	$0, 12(%rax)
	.loc 1 105 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 106 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 107 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L31:
	.loc 1 110 0
	movq	48(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movl	$4014124, 8(%rax)
	.loc 1 111 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 112 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 113 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L30:
	.loc 1 116 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L33
	.loc 1 117 0
	addl	$1, -4(%rbp)
	.loc 1 118 0
	movq	48(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movl	$4210732, 8(%rax)
	.loc 1 119 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 120 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 121 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L33:
	.loc 1 123 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L34
	.loc 1 124 0
	addl	$1, -4(%rbp)
	.loc 1 125 0
	movq	48(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movl	$3031084, 8(%rax)
	.loc 1 126 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 127 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 128 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L34:
	.loc 1 130 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L35
	.loc 1 131 0
	addl	$1, -4(%rbp)
	.loc 1 132 0
	movq	48(%rbp), %rax
	movabsq	$2338615488418770787, %rcx
	movq	%rcx, (%rax)
	movl	$744779365, 8(%rax)
	movw	$12096, 12(%rax)
	movb	$0, 14(%rax)
	.loc 1 133 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 134 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 135 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L35:
	.loc 1 137 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L36
	.loc 1 138 0
	addl	$1, -4(%rbp)
	.loc 1 139 0
	movq	48(%rbp), %rax
	movabsq	$7954799962421685346, %rcx
	movq	%rcx, (%rax)
	movl	$2084580452, 8(%rax)
	movb	$0, 12(%rax)
	.loc 1 140 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 141 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 142 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L36:
	.loc 1 145 0
	movq	48(%rbp), %rax
	movabsq	$8245937404618567791, %rcx
	movq	%rcx, (%rax)
	movw	$16428, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 146 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 147 0
	movq	48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 148 0
	movl	-4(%rbp), %eax
	jmp	.L32
.L29:
	.loc 1 152 0
	movl	$-1, %eax
.L32:
	.loc 1 153 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "string\0"
	.text
	.globl	isStringLiteral
	.def	isStringLiteral;	.scl	2;	.type	32;	.endef
	.seh_proc	isStringLiteral
isStringLiteral:
.LFB13:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 144
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 16
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, -80(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 158 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, -40(%rbp)
	xorl	%ebx, %ebx
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 159 0
	movl	$0, -60(%rbp)
	.loc 1 160 0
	movl	32(%rbp), %edx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movslq	%edx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movslq	%edx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%edx, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	.loc 1 161 0
	movl	$0, -64(%rbp)
	.loc 1 163 0
	movslq	%edx, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 164 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L38
	.loc 1 165 0
	addl	$1, 24(%rbp)
.L40:
	.loc 1 167 0
	movl	24(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L39
	.loc 1 168 0
	addl	$1, -60(%rbp)
	.loc 1 169 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-64(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -64(%rbp)
	movzbl	(%rcx), %ecx
	movq	-48(%rbp), %rdx
	cltq
	movb	%cl, (%rdx,%rax)
.L39:
	.loc 1 171 0
	addl	$1, 24(%rbp)
	.loc 1 172 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L40
	.loc 1 173 0
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 174 0
	addl	$1, -60(%rbp)
	.loc 1 175 0
	movl	-60(%rbp), %eax
	jmp	.L41
.L38:
	.loc 1 177 0
	movl	$-1, %eax
.L41:
	movq	%rbx, %rsp
	.loc 1 178 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-40(%rbp), %rdi
	xorq	(%rdx), %rdi
	je	.L43
	call	__stack_chk_fail
.L43:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -72
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.globl	isSpecialSymbol
	.def	isSpecialSymbol;	.scl	2;	.type	32;	.endef
	.seh_proc	isSpecialSymbol
isSpecialSymbol:
.LFB14:
	.loc 1 183 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$120, %rsp
	.seh_stackalloc	120
	.cfi_def_cfa_offset 160
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movl	%edx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	%r9, -80(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	72(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 1 183 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, -24(%rbp)
	xorl	%ebx, %ebx
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 184 0
	movl	$0, -56(%rbp)
	.loc 1 185 0
	movl	48(%rbp), %edx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movslq	%edx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movslq	%edx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%edx, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	.loc 1 186 0
	movl	$1, -52(%rbp)
	.loc 1 187 0
	movl	$2, -48(%rbp)
	.loc 1 188 0
	movl	$10, -44(%rbp)
	.loc 1 189 0
	movslq	%edx, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 191 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L45
	.loc 1 192 0
	movq	-96(%rbp), %rax
	movabsq	$2336349411965497459, %rsi
	movabsq	$2534519915951257971, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movb	$0, 16(%rax)
	.loc 1 193 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 194 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 195 0
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 196 0
	movl	$1, %eax
	jmp	.L46
.L45:
	.loc 1 199 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L47
	.loc 1 200 0
	movq	-96(%rbp), %rax
	movabsq	$8295751951492343154, %rsi
	movabsq	$25944542094191993, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	.loc 1 201 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 202 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 203 0
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 204 0
	movl	$1, %eax
	jmp	.L46
.L47:
	.loc 1 207 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L48
	.loc 1 208 0
	movq	-96(%rbp), %rax
	movabsq	$8391086236419388001, %rdi
	movq	%rdi, (%rax)
	movl	$745828961, 8(%rax)
	movw	$91, 12(%rax)
	.loc 1 209 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 210 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 211 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 212 0
	movl	$1, %eax
	jmp	.L46
.L48:
	.loc 1 215 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L49
	.loc 1 216 0
	movq	-96(%rbp), %rax
	movabsq	$7954800022517871201, %rsi
	movq	%rsi, (%rax)
	movl	$6106212, 8(%rax)
	.loc 1 217 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 218 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 219 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 220 0
	movl	$1, %eax
	jmp	.L46
.L49:
	.loc 1 223 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L50
	.loc 1 224 0
	movq	-96(%rbp), %rax
	movabsq	$2336349411965497459, %rsi
	movabsq	$2390404727875402099, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movb	$0, 16(%rax)
	.loc 1 225 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 226 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 227 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 228 0
	movl	$1, %eax
	jmp	.L46
.L50:
	.loc 1 231 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L51
	.loc 1 232 0
	movq	-96(%rbp), %rax
	movabsq	$7164775599194924402, %rsi
	movabsq	$7813572100839645285, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movw	$9772, 16(%rax)
	movb	$0, 18(%rax)
	.loc 1 233 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 234 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 235 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 236 0
	movl	$1, %eax
	jmp	.L46
.L51:
	.loc 1 239 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L52
	.loc 1 240 0
	movq	-96(%rbp), %rax
	movabsq	$12433695934607203, %rdi
	movq	%rdi, (%rax)
	.loc 1 241 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 242 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 243 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 244 0
	movl	$1, %eax
	jmp	.L46
.L52:
	.loc 1 247 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L53
	.loc 1 248 0
	movq	-96(%rbp), %rax
	movabsq	$2338042707301724016, %rsi
	movabsq	$6785917964189006195, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movb	$0, 16(%rax)
	.loc 1 249 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 250 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 251 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 252 0
	movl	$1, %eax
	jmp	.L46
.L53:
	.loc 1 255 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L54
	.loc 1 256 0
	addl	$1, 40(%rbp)
	.loc 1 257 0
	movl	40(%rbp), %eax
	cmpl	48(%rbp), %eax
	jge	.L54
	.loc 1 258 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L55
	.loc 1 259 0
	addl	$1, 40(%rbp)
	.loc 1 260 0
	addl	$1, -56(%rbp)
	.loc 1 261 0
	movq	-96(%rbp), %rax
	movabsq	$2338615488418770787, %rsi
	movabsq	$4624964220979606643, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movb	$0, 16(%rax)
	.loc 1 262 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 263 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 264 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 265 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L55:
	.loc 1 267 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L56
	.loc 1 268 0
	addl	$1, 40(%rbp)
	.loc 1 269 0
	addl	$1, -56(%rbp)
	.loc 1 270 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4009772, 8(%rax)
	.loc 1 271 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 272 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 273 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 274 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L56:
	.loc 1 277 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$12076, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 278 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 279 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 280 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 281 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L54:
	.loc 1 286 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L57
	.loc 1 287 0
	addl	$1, 40(%rbp)
	.loc 1 288 0
	addl	$1, -56(%rbp)
	.loc 1 289 0
	movl	40(%rbp), %eax
	cmpl	48(%rbp), %eax
	jge	.L57
	.loc 1 290 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L58
	.loc 1 291 0
	addl	$1, 40(%rbp)
	.loc 1 292 0
	addl	$1, -56(%rbp)
	.loc 1 293 0
	movq	-96(%rbp), %rax
	movabsq	$8391086176323202146, %rsi
	movq	%rsi, (%rax)
	movl	$745828961, 8(%rax)
	movw	$16508, 12(%rax)
	movb	$0, 14(%rax)
	.loc 1 294 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 295 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 296 0
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 297 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L58:
	.loc 1 300 0
	movq	-96(%rbp), %rax
	movabsq	$7307218412905849200, %rdi
	movq	%rdi, (%rax)
	movl	$745761139, 8(%rax)
	movw	$124, 12(%rax)
	.loc 1 301 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 302 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 303 0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 304 0
	movl	$1, %eax
	jmp	.L46
.L57:
	.loc 1 309 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L59
	.loc 1 310 0
	addl	$1, 40(%rbp)
	.loc 1 311 0
	movl	40(%rbp), %eax
	cmpl	48(%rbp), %eax
	jge	.L59
	.loc 1 312 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L60
	.loc 1 313 0
	addl	$1, 40(%rbp)
	.loc 1 314 0
	addl	$1, -56(%rbp)
	.loc 1 315 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$2829100, 8(%rax)
	.loc 1 316 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 317 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 318 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 319 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L60:
	.loc 1 321 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L61
	.loc 1 322 0
	addl	$1, 40(%rbp)
	.loc 1 323 0
	addl	$1, -56(%rbp)
	.loc 1 324 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movl	$4008748, 8(%rax)
	.loc 1 325 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 326 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 327 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 328 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L61:
	.loc 1 331 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movw	$11052, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 332 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 333 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 334 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 335 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L59:
	.loc 1 340 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L62
	.loc 1 341 0
	addl	$1, 40(%rbp)
	.loc 1 342 0
	movl	40(%rbp), %eax
	cmpl	48(%rbp), %eax
	jge	.L62
	.loc 1 343 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L63
	.loc 1 344 0
	addl	$1, 40(%rbp)
	.loc 1 345 0
	addl	$1, -56(%rbp)
	.loc 1 346 0
	movl	40(%rbp), %eax
	cmpl	48(%rbp), %eax
	jge	.L62
	.loc 1 347 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L64
	.loc 1 348 0
	addl	$1, 40(%rbp)
	.loc 1 349 0
	addl	$1, -56(%rbp)
	.loc 1 350 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movl	$757935404, 8(%rax)
	movb	$0, 12(%rax)
	.loc 1 351 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 352 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 353 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 354 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L64:
	.loc 1 357 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$2960684, 8(%rax)
	.loc 1 358 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 359 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 360 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 361 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L63:
	.loc 1 365 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L65
	.loc 1 366 0
	addl	$1, 40(%rbp)
	.loc 1 367 0
	addl	$1, -56(%rbp)
	.loc 1 368 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movl	$4009260, 8(%rax)
	.loc 1 369 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 370 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 371 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 372 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L65:
	.loc 1 374 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L66
	.loc 1 375 0
	addl	$1, 40(%rbp)
	.loc 1 376 0
	addl	$1, -56(%rbp)
	.loc 1 377 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4074796, 8(%rax)
	.loc 1 378 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 379 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 380 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 381 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L66:
	.loc 1 384 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$11564, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 385 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 386 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 387 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 388 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L62:
	.loc 1 393 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L67
	.loc 1 394 0
	addl	$1, 40(%rbp)
	.loc 1 395 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L68
	.loc 1 396 0
	addl	$1, 40(%rbp)
	.loc 1 397 0
	addl	$1, -56(%rbp)
	.loc 1 398 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4008492, 8(%rax)
	.loc 1 399 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 400 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 401 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 402 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L68:
	.loc 1 405 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$10796, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 406 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 407 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 408 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 409 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L67:
	.loc 1 413 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L69
	.loc 1 414 0
	addl	$1, 40(%rbp)
	.loc 1 415 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L70
	.loc 1 416 0
	addl	$1, 40(%rbp)
	.loc 1 417 0
	addl	$1, -56(%rbp)
	.loc 1 418 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4029996, 8(%rax)
	.loc 1 419 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 420 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 421 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 422 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L70:
	.loc 1 425 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$32300, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 426 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 427 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 428 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 429 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L69:
	.loc 1 433 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L71
	.loc 1 434 0
	addl	$1, 40(%rbp)
	.loc 1 435 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L72
	.loc 1 436 0
	addl	$1, 40(%rbp)
	.loc 1 437 0
	addl	$1, -56(%rbp)
	.loc 1 438 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4013100, 8(%rax)
	.loc 1 439 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 440 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 441 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 442 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L72:
	.loc 1 445 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$15404, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 446 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 447 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 448 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 449 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L71:
	.loc 1 453 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L73
	.loc 1 454 0
	addl	$1, 40(%rbp)
	.loc 1 455 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L74
	.loc 1 456 0
	addl	$1, 40(%rbp)
	.loc 1 457 0
	addl	$1, -56(%rbp)
	.loc 1 458 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$4013612, 8(%rax)
	.loc 1 459 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 460 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 461 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 462 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L74:
	.loc 1 465 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$15916, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 466 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 467 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 468 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 469 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L73:
	.loc 1 473 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L75
	.loc 1 474 0
	addl	$1, 40(%rbp)
	.loc 1 475 0
	movl	40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L76
	.loc 1 476 0
	addl	$1, 40(%rbp)
	.loc 1 477 0
	addl	$1, -56(%rbp)
	.loc 1 478 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rsi
	movq	%rsi, (%rax)
	movl	$3026476, 8(%rax)
	.loc 1 479 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 480 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 481 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 482 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L76:
	.loc 1 485 0
	movq	-96(%rbp), %rax
	movabsq	$8245937404618567791, %rdi
	movq	%rdi, (%rax)
	movw	$11820, 8(%rax)
	movb	$0, 10(%rax)
	.loc 1 486 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	push_lexerList
	.loc 1 487 0
	movq	-96(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 488 0
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 489 0
	movl	-56(%rbp), %eax
	jmp	.L46
.L75:
	.loc 1 493 0
	movl	$-1, %eax
.L46:
	movq	%rbx, %rsp
	.loc 1 494 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-24(%rbp), %rbx
	xorq	(%rdx), %rbx
	je	.L78
	call	__stack_chk_fail
.L78:
	leaq	-8(%rbp), %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -88
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "character\0"
	.text
	.globl	isChar
	.def	isChar;	.scl	2;	.type	32;	.endef
	.seh_proc	isChar
isChar:
.LFB15:
	.loc 1 499 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 144
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 16
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, -80(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 499 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, -40(%rbp)
	xorl	%ebx, %ebx
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 500 0
	movl	$0, -60(%rbp)
	.loc 1 501 0
	movl	32(%rbp), %edx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movslq	%edx, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movslq	%edx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%edx, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	.loc 1 502 0
	movl	$0, -64(%rbp)
	.loc 1 504 0
	movslq	%edx, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 505 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L80
	.loc 1 506 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 507 0
	addl	$1, -64(%rbp)
	.loc 1 508 0
	addl	$1, 24(%rbp)
.L84:
	.loc 1 510 0
	movl	24(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L81
	.loc 1 511 0
	addl	$1, -60(%rbp)
	.loc 1 512 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 513 0
	addl	$1, -64(%rbp)
.L81:
	.loc 1 515 0
	addl	$1, 24(%rbp)
	.loc 1 516 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L82
	.loc 1 517 0
	subl	$1, -60(%rbp)
	.loc 1 518 0
	jmp	.L83
.L82:
	.loc 1 520 0
	movl	24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L84
.L83:
	.loc 1 521 0
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 522 0
	addl	$1, -60(%rbp)
	.loc 1 523 0
	movl	-60(%rbp), %eax
	jmp	.L85
.L80:
	.loc 1 525 0
	movl	$-1, %eax
.L85:
	movq	%rbx, %rsp
	.loc 1 526 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	-40(%rbp), %rdi
	xorq	(%rdx), %rdi
	je	.L87
	call	__stack_chk_fail
.L87:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rdi
	.cfi_restore 5
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -72
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "./src/../inc/lexer_node.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1173
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/checking_functions.c\0"
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
	.long	0x155
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x178
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x1a5
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x185
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x149
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x1a7
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x149
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x139
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x21a
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1e7
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x21a
	.byte	0
	.uleb128 0x9
	.long	0xfe
	.long	0x22a
	.uleb128 0xa
	.long	0x155
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x253
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x132
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1f6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x22a
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x196
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x139
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2e4
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2e4
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x132
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x132
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x132
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x132
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2ea
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x284
	.uleb128 0x9
	.long	0x275
	.long	0x2fa
	.uleb128 0xa
	.long	0x155
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x3a8
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x132
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x132
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x132
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x132
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x132
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x132
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x132
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x132
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x132
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3fe
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3fe
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3fe
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x275
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x275
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x1a5
	.long	0x40e
	.uleb128 0xa
	.long	0x155
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x455
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x455
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x132
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x45b
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x3a8
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x40e
	.uleb128 0x9
	.long	0x46b
	.long	0x46b
	.uleb128 0xa
	.long	0x155
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x471
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x49e
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x49e
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x132
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xfe
	.uleb128 0x14
	.long	0x1d7
	.long	0x4c2
	.uleb128 0x15
	.long	0x4c2
	.uleb128 0x15
	.long	0x1a5
	.uleb128 0x15
	.long	0x66c
	.uleb128 0x15
	.long	0x16a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4cd
	.uleb128 0x4
	.long	0x4c2
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x66c
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x132
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8f7
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8f7
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8f7
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x132
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbb9
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x132
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbd5
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x132
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbe6
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2e4
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x132
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2e4
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbec
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x132
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x66c
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb8f
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x455
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x40e
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbfd
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8b3
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xc09
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x178
	.uleb128 0xe
	.byte	0x8
	.long	0x4a4
	.uleb128 0x14
	.long	0x1d7
	.long	0x696
	.uleb128 0x15
	.long	0x4c2
	.uleb128 0x15
	.long	0x1a5
	.uleb128 0x15
	.long	0x696
	.uleb128 0x15
	.long	0x16a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x180
	.uleb128 0xe
	.byte	0x8
	.long	0x678
	.uleb128 0x14
	.long	0x1b7
	.long	0x6c0
	.uleb128 0x15
	.long	0x4c2
	.uleb128 0x15
	.long	0x1a5
	.uleb128 0x15
	.long	0x1b7
	.uleb128 0x15
	.long	0x132
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6a2
	.uleb128 0x14
	.long	0x132
	.long	0x6da
	.uleb128 0x15
	.long	0x4c2
	.uleb128 0x15
	.long	0x1a5
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6c6
	.uleb128 0x9
	.long	0xfe
	.long	0x6f0
	.uleb128 0xa
	.long	0x155
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xfe
	.long	0x700
	.uleb128 0xa
	.long	0x155
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x880
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x49e
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x132
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x132
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x10f
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x10f
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x472
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x132
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4c2
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x1a5
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x672
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x69c
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6c0
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6da
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x472
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x49e
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x132
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6e0
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6f0
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x472
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x132
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x132
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x1a7
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x89e
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x265
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x253
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1c6
	.long	0x89e
	.uleb128 0x15
	.long	0x4c2
	.uleb128 0x15
	.long	0x1a5
	.uleb128 0x15
	.long	0x1c6
	.uleb128 0x15
	.long	0x132
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x880
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x700
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8f1
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8f1
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x132
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8f7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8b3
	.uleb128 0xe
	.byte	0x8
	.long	0x8a4
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x93b
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x93b
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x93b
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x11c
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x11c
	.long	0x94b
	.uleb128 0xa
	.long	0x155
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaf8
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x139
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x66c
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaf8
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2fa
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x132
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xb08
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8fd
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x253
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x253
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x253
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb22
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb32
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x132
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x253
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x253
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x253
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x253
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x253
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x132
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0xb08
	.uleb128 0xa
	.long	0x155
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x178
	.long	0xb32
	.uleb128 0xa
	.long	0x155
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0xb42
	.uleb128 0xa
	.long	0x155
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb6f
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb6f
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb7f
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x49e
	.long	0xb7f
	.uleb128 0xa
	.long	0x155
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x139
	.long	0xb8f
	.uleb128 0xa
	.long	0x155
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbb9
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x94b
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb42
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0xbc9
	.uleb128 0xa
	.long	0x155
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbc9
	.uleb128 0x1f
	.long	0xbe6
	.uleb128 0x15
	.long	0x4c2
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbdb
	.uleb128 0xe
	.byte	0x8
	.long	0x2e4
	.uleb128 0x1f
	.long	0xbfd
	.uleb128 0x15
	.long	0x132
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc03
	.uleb128 0xe
	.byte	0x8
	.long	0xbf2
	.uleb128 0x9
	.long	0x8a4
	.long	0xc19
	.uleb128 0xa
	.long	0x155
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4c2
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4c8
	.uleb128 0x9
	.long	0x180
	.long	0xc53
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc48
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc53
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xa0
	.byte	0x7
	.byte	0x6
	.long	0xc8f
	.uleb128 0xc
	.ascii "token\0"
	.byte	0x7
	.byte	0x8
	.long	0xc8f
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x9
	.long	0xc9f
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0xc9f
	.uleb128 0xa
	.long	0x155
	.byte	0x95
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc67
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x7
	.byte	0xa
	.long	0xc67
	.uleb128 0x25
	.ascii "isChar\0"
	.byte	0x1
	.word	0x1f3
	.long	0x132
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xd52
	.uleb128 0x26
	.secrel32	.LASF2
	.byte	0x1
	.word	0x1f3
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.ascii "pos\0"
	.byte	0x1
	.word	0x1f3
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "len\0"
	.byte	0x1
	.word	0x1f3
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1f3
	.long	0xd52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.secrel32	.LASF4
	.byte	0x1
	.word	0x1f3
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.secrel32	.LASF5
	.byte	0x1
	.word	0x1f4
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.ascii "buf\0"
	.byte	0x1
	.word	0x1f5
	.long	0xd58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x29
	.ascii "j\0"
	.byte	0x1
	.word	0x1f6
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xca5
	.uleb128 0x9
	.long	0x178
	.long	0xd6c
	.uleb128 0x2a
	.long	0x155
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.ascii "isSpecialSymbol\0"
	.byte	0x1
	.byte	0xb7
	.long	0x132
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xe45
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0xb7
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.ascii "pos\0"
	.byte	0x1
	.byte	0xb7
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.ascii "len\0"
	.byte	0x1
	.byte	0xb7
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.ascii "flag\0"
	.byte	0x1
	.byte	0xb7
	.long	0xe45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.secrel32	.LASF3
	.byte	0x1
	.byte	0xb7
	.long	0xd52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.secrel32	.LASF4
	.byte	0x1
	.byte	0xb7
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.secrel32	.LASF5
	.byte	0x1
	.byte	0xb8
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.ascii "buf\0"
	.byte	0x1
	.byte	0xb9
	.long	0xe4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2f
	.ascii "temp1\0"
	.byte	0x1
	.byte	0xba
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.ascii "temp2\0"
	.byte	0x1
	.byte	0xbb
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.ascii "temp10\0"
	.byte	0x1
	.byte	0xbc
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x132
	.uleb128 0x9
	.long	0x178
	.long	0xe5f
	.uleb128 0x2a
	.long	0x155
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.ascii "isStringLiteral\0"
	.byte	0x1
	.byte	0x9e
	.long	0x132
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xf01
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x9e
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.ascii "pos\0"
	.byte	0x1
	.byte	0x9e
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.ascii "len\0"
	.byte	0x1
	.byte	0x9e
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x9e
	.long	0xd52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x9e
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x9f
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.ascii "buf\0"
	.byte	0x1
	.byte	0xa0
	.long	0xf01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2f
	.ascii "j\0"
	.byte	0x1
	.byte	0xa1
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0xf15
	.uleb128 0x2a
	.long	0x155
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.ascii "isAtOperator\0"
	.byte	0x1
	.byte	0x5e
	.long	0x132
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xf94
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x5e
	.long	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "pos\0"
	.byte	0x1
	.byte	0x5e
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.ascii "len\0"
	.byte	0x1
	.byte	0x5e
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x5e
	.long	0xd52
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x5e
	.long	0x66c
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2e
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x5f
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.ascii "isOperator\0"
	.byte	0x1
	.byte	0x4b
	.long	0x132
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1027
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x4b
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x4b
	.long	0xd52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x4b
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.ascii "operators\0"
	.byte	0x1
	.byte	0x4c
	.long	0x1027
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.ascii "op_pos\0"
	.byte	0x1
	.byte	0x4d
	.long	0x16a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.ascii "operator_buff\0"
	.byte	0x1
	.byte	0x4e
	.long	0x103d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0x103d
	.uleb128 0xa
	.long	0x155
	.byte	0x9
	.uleb128 0xa
	.long	0x155
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0x104d
	.uleb128 0xa
	.long	0x155
	.byte	0x9
	.byte	0
	.uleb128 0x2b
	.ascii "isNumber\0"
	.byte	0x1
	.byte	0x1b
	.long	0x132
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e8
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x1b
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.ascii "pos\0"
	.byte	0x1
	.byte	0x1b
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.ascii "len\0"
	.byte	0x1
	.byte	0x1b
	.long	0x132
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x1b
	.long	0xd52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x1b
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x1c
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.ascii "buf\0"
	.byte	0x1
	.byte	0x1d
	.long	0x10e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2f
	.ascii "j\0"
	.byte	0x1
	.byte	0x1e
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x9
	.long	0x178
	.long	0x10fc
	.uleb128 0x2a
	.long	0x155
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.ascii "isKeyword\0"
	.byte	0x1
	.byte	0x6
	.long	0x132
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1164
	.uleb128 0x2c
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x6
	.long	0x66c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2f
	.ascii "keywords\0"
	.byte	0x1
	.byte	0x7
	.long	0x1164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.ascii "i\0"
	.byte	0x1
	.byte	0xe
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2f
	.ascii "flag\0"
	.byte	0x1
	.byte	0xe
	.long	0x132
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.byte	0
	.uleb128 0x30
	.long	0x178
	.uleb128 0xa
	.long	0x155
	.byte	0x20
	.uleb128 0xa
	.long	0x155
	.byte	0x9
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
.LASF3:
	.ascii "myNode\0"
.LASF4:
	.ascii "temp_buffer\0"
.LASF2:
	.ascii "buffer\0"
.LASF5:
	.ascii "count\0"
.LASF1:
	.ascii "lexer_node\0"
.LASF0:
	.ascii "_on_exit_args\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	__locale_ctype_ptr;	.scl	2;	.type	32;	.endef
	.def	pushForLex;	.scl	2;	.type	32;	.endef
	.def	push_lexerList;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
