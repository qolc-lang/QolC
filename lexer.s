	.file	"lexer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
.LC0:
	.ascii "r\0"
.LC1:
	.ascii "error while opening the file\0"
.LC2:
	.ascii "reading_buffer[pos] : %c\12\0"
.LC3:
	.ascii "keyword\0"
.LC4:
	.ascii "number\0"
.LC5:
	.ascii "identifier\0"
.LC6:
	.ascii "end of command\0"
	.align 8
.LC7:
	.ascii "Some other error interrupted the read.\0"
	.text
	.globl	lex
	.def	lex;	.scl	2;	.type	32;	.endef
	.seh_proc	lex
lex:
.LFB9:
	.file 1 "./src/lexer.c"
	.loc 1 3 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$664, %rsp
	.seh_stackalloc	664
	.cfi_def_cfa_offset 688
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 560
	.seh_endprologue
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	.loc 1 3 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, 520(%rbp)
	xorl	%ebx, %ebx
	.loc 1 7 0
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	.loc 1 8 0
	movl	$0, -56(%rbp)
	.loc 1 9 0
	movl	$0, -28(%rbp)
	.loc 1 10 0
	movl	$0, -60(%rbp)
	.loc 1 13 0
	movl	$32000, %ecx
	call	malloc
	movq	%rax, -16(%rbp)
	.loc 1 15 0
	movq	%rbp, %rax
	movl	$150, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 16 0
	leaq	320(%rbp), %rax
	movl	$200, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 17 0
	leaq	160(%rbp), %rax
	movl	$150, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 19 0
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -8(%rbp)
	.loc 1 21 0
	cmpq	$0, -8(%rbp)
	jne	.L3
	.loc 1 22 0
	leaq	.LC1(%rip), %rcx
	call	puts
	.loc 1 23 0
	movl	$0, %ecx
	call	exit
.L44:
	.loc 1 30 0
	movq	$0, -24(%rbp)
	jmp	.L4
.L43:
	.loc 1 31 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	.loc 1 37 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isAtOperator
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	je	.L5
	.loc 1 38 0
	movl	-48(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	.loc 1 39 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 40 0
	movl	$0, -56(%rbp)
	.loc 1 41 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L6
	.loc 1 42 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 50 0
	jmp	.L10
.L6:
	.loc 1 43 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isNumber
	cmpl	$-1, %eax
	je	.L8
	.loc 1 44 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 50 0
	jmp	.L10
.L8:
	.loc 1 46 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L52
	.loc 1 48 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 50 0
	jmp	.L10
.L5:
	.loc 1 56 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L11
	.loc 1 57 0
	movq	-16(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC6(%rip), %rdx
	movl	$0, %ecx
	call	pushForLex
	.loc 1 59 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 60 0
	movl	$0, -56(%rbp)
	.loc 1 62 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L12
	.loc 1 63 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 69 0
	jmp	.L10
.L12:
	.loc 1 65 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L53
	.loc 1 67 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 69 0
	jmp	.L10
.L11:
	.loc 1 75 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isNumber
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.L15
	.loc 1 76 0
	subq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -28(%rbp)
	.loc 1 77 0
	call	__locale_ctype_ptr
	movq	%rax, %rdx
	.loc 1 77 0
	movl	-28(%rbp), %eax
	cltq
	movzbl	160(%rbp,%rax), %eax
	.loc 1 77 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 77 0
	movzbl	%al, %eax
	andl	$7, %eax
	.loc 1 77 0
	testl	%eax, %eax
	jne	.L16
	.loc 1 77 0 discriminator 2
	movl	-28(%rbp), %eax
	cltq
	movzbl	160(%rbp,%rax), %eax
	cmpb	$95, %al
	jne	.L17
.L16:
.LBB2:
	.loc 1 79 0
	addq	$1, -24(%rbp)
	.loc 1 80 0
	movl	$0, -52(%rbp)
	jmp	.L18
.L19:
	.loc 1 81 0 discriminator 3
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	leaq	160(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	cltq
	movb	%dl, 0(%rbp,%rax)
	.loc 1 82 0 discriminator 3
	addq	$1, -24(%rbp)
	.loc 1 80 0 discriminator 3
	addl	$1, -52(%rbp)
.L18:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L19
	.loc 1 84 0 is_stmt 1
	subq	$1, -24(%rbp)
	.loc 1 85 0
	jmp	.L10
.L17:
.LBE2:
	.loc 1 88 0
	addq	$1, -24(%rbp)
	.loc 1 89 0
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	.loc 1 90 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L15
	.loc 1 91 0
	movq	-16(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC6(%rip), %rdx
	movl	$0, %ecx
	call	pushForLex
	.loc 1 93 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 94 0
	movl	$0, -56(%rbp)
	.loc 1 96 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L20
	.loc 1 97 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 103 0
	jmp	.L10
.L20:
	.loc 1 99 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L54
	.loc 1 101 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 103 0
	jmp	.L10
.L15:
	.loc 1 111 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	leaq	-60(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isSpecialSymbol
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	je	.L23
	.loc 1 112 0
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	.loc 1 113 0
	movl	-60(%rbp), %eax
	cmpl	$1, %eax
	jne	.L24
	.loc 1 114 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 115 0
	movl	$0, -56(%rbp)
	.loc 1 116 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L55
	.loc 1 118 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L26
	.loc 1 119 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 122 0
	jmp	.L10
.L26:
	.loc 1 121 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 122 0
	jmp	.L10
.L24:
	.loc 1 124 0
	movl	-60(%rbp), %eax
	cmpl	$2, %eax
	jne	.L56
	.loc 1 125 0
	subq	$1, -24(%rbp)
	.loc 1 126 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 127 0
	movl	$0, -56(%rbp)
	.loc 1 128 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L57
	.loc 1 130 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L30
	.loc 1 131 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 134 0
	jmp	.L10
.L30:
	.loc 1 133 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 134 0
	jmp	.L10
.L23:
	.loc 1 143 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isChar
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	je	.L32
	.loc 1 144 0
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	.loc 1 145 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L58
	.loc 1 146 0
	movq	-16(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC6(%rip), %rdx
	movl	$0, %ecx
	call	pushForLex
	.loc 1 148 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 149 0
	movl	$0, -56(%rbp)
	.loc 1 151 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L34
	.loc 1 152 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 159 0
	jmp	.L10
.L34:
	.loc 1 154 0
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L59
	.loc 1 156 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	.loc 1 159 0
	jmp	.L10
.L32:
	.loc 1 167 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isStringLiteral
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.L37
	.loc 1 168 0
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	.loc 1 169 0
	jmp	.L10
.L37:
	.loc 1 172 0
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 172 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 172 0
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 172 0
	movzbl	%al, %eax
	andl	$7, %eax
	.loc 1 172 0
	testl	%eax, %eax
	jne	.L38
	.loc 1 172 0 discriminator 2
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L38
	.loc 1 172 0 discriminator 3
	call	__locale_ctype_ptr
	movq	%rax, %rcx
	.loc 1 172 0 discriminator 3
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 172 0 discriminator 3
	movzbl	%al, %eax
	addq	$1, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 172 0 discriminator 3
	movzbl	%al, %eax
	andl	$4, %eax
	.loc 1 172 0 discriminator 3
	testl	%eax, %eax
	je	.L39
.L38:
	.loc 1 173 0
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	leaq	160(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	cltq
	movb	%dl, 0(%rbp,%rax)
	jmp	.L10
.L39:
	.loc 1 174 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L40
	.loc 1 175 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L40
	.loc 1 176 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L40
	.loc 1 177 0
	leaq	160(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	320(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	isOperator
	testl	%eax, %eax
	je	.L10
.L40:
	.loc 1 178 0
	cmpl	$0, -56(%rbp)
	je	.L10
	.loc 1 179 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 180 0
	movl	$0, -56(%rbp)
	.loc 1 182 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L41
	.loc 1 183 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L10
.L41:
	.loc 1 185 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L10
.L52:
	.loc 1 47 0
	nop
	jmp	.L10
.L53:
	.loc 1 66 0
	nop
	jmp	.L10
.L54:
	.loc 1 100 0
	nop
	jmp	.L10
.L55:
	.loc 1 117 0
	nop
	jmp	.L10
.L56:
	.loc 1 137 0
	nop
	jmp	.L10
.L57:
	.loc 1 129 0
	nop
	jmp	.L10
.L58:
	.loc 1 161 0
	nop
	jmp	.L10
.L59:
	.loc 1 155 0
	nop
.L10:
	.loc 1 30 0 discriminator 2
	addq	$1, -24(%rbp)
.L4:
	.loc 1 30 0 is_stmt 0 discriminator 1
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	cmpq	%rax, -24(%rbp)
	jb	.L43
.L3:
	.loc 1 26 0 is_stmt 1
	movq	-8(%rbp), %rdx
	leaq	160(%rbp), %rax
	movq	%rdx, %r8
	movl	$150, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L44
	.loc 1 194 0
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	cwtl
	andl	$32, %eax
	.loc 1 194 0
	testl	%eax, %eax
	je	.L45
	.loc 1 195 0
	cmpl	$0, -56(%rbp)
	je	.L49
	.loc 1 196 0
	movl	-56(%rbp), %eax
	cltq
	movb	$0, 0(%rbp,%rax)
	.loc 1 197 0
	movl	$0, -56(%rbp)
	.loc 1 199 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	isKeyword
	cmpl	$1, %eax
	jne	.L47
	.loc 1 200 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L49
.L47:
	.loc 1 201 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rcx
	leaq	160(%rbp), %rax
	leaq	320(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %r9
	movl	%r10d, %edx
	movq	%rax, %rcx
	call	isNumber
	cmpl	$-1, %eax
	je	.L48
	.loc 1 202 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L49
.L48:
	.loc 1 204 0
	movq	-16(%rbp), %rdx
	movq	%rbp, %rax
	movq	%rdx, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	pushForLex
	jmp	.L49
.L45:
	.loc 1 208 0
	leaq	.LC7(%rip), %rcx
	call	puts
.L49:
	.loc 1 210 0
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 211 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 212 0
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	152(%rdx), %rcx
	movq	144(%rdx), %rdx
	movq	%rdx, 144(%rax)
	movq	%rcx, 152(%rax)
	.loc 1 213 0
	movq	-72(%rbp), %rax
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	520(%rbp), %rbx
	xorq	(%rdx), %rbx
	je	.L51
	call	__stack_chk_fail
.L51:
	addq	$664, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -648
	ret
	.cfi_endproc
.LFE9:
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
	.long	0xe32
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/lexer.c\0"
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
	.long	0x148
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x16b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x198
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x178
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x13c
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x19a
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x13c
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x12c
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x20d
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1da
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x20d
	.byte	0
	.uleb128 0x9
	.long	0xf1
	.long	0x21d
	.uleb128 0xa
	.long	0x148
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x246
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x125
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1e9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x21d
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x189
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x12c
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2d7
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2d7
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x125
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x125
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x125
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x125
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2dd
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x277
	.uleb128 0x9
	.long	0x268
	.long	0x2ed
	.uleb128 0xa
	.long	0x148
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x39b
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x125
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x125
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x125
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x125
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x125
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x125
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x125
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x125
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x125
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3f1
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3f1
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3f1
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x268
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x268
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x198
	.long	0x401
	.uleb128 0xa
	.long	0x148
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x448
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x448
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x125
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x44e
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x39b
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x401
	.uleb128 0x9
	.long	0x45e
	.long	0x45e
	.uleb128 0xa
	.long	0x148
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x464
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x491
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x491
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x125
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf1
	.uleb128 0x14
	.long	0x1ca
	.long	0x4b5
	.uleb128 0x15
	.long	0x4b5
	.uleb128 0x15
	.long	0x198
	.uleb128 0x15
	.long	0x65f
	.uleb128 0x15
	.long	0x15d
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4c0
	.uleb128 0x4
	.long	0x4b5
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x65f
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x125
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8ea
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8ea
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8ea
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x125
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbac
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x125
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbc8
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x125
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbd9
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2d7
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x125
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2d7
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbdf
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x125
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x65f
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb82
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x448
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x401
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbf0
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8a6
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xbfc
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x16b
	.uleb128 0xe
	.byte	0x8
	.long	0x497
	.uleb128 0x14
	.long	0x1ca
	.long	0x689
	.uleb128 0x15
	.long	0x4b5
	.uleb128 0x15
	.long	0x198
	.uleb128 0x15
	.long	0x689
	.uleb128 0x15
	.long	0x15d
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x173
	.uleb128 0xe
	.byte	0x8
	.long	0x66b
	.uleb128 0x14
	.long	0x1aa
	.long	0x6b3
	.uleb128 0x15
	.long	0x4b5
	.uleb128 0x15
	.long	0x198
	.uleb128 0x15
	.long	0x1aa
	.uleb128 0x15
	.long	0x125
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x695
	.uleb128 0x14
	.long	0x125
	.long	0x6cd
	.uleb128 0x15
	.long	0x4b5
	.uleb128 0x15
	.long	0x198
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6b9
	.uleb128 0x9
	.long	0xf1
	.long	0x6e3
	.uleb128 0xa
	.long	0x148
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xf1
	.long	0x6f3
	.uleb128 0xa
	.long	0x148
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x873
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x491
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x125
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x125
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x102
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x102
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x465
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x125
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4b5
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x198
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x665
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x68f
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b3
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6cd
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x465
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x491
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x125
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d3
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e3
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x465
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x125
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x125
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x19a
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x891
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x258
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x246
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1b9
	.long	0x891
	.uleb128 0x15
	.long	0x4b5
	.uleb128 0x15
	.long	0x198
	.uleb128 0x15
	.long	0x1b9
	.uleb128 0x15
	.long	0x125
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x873
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f3
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8e4
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8e4
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x125
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8ea
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8a6
	.uleb128 0xe
	.byte	0x8
	.long	0x897
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x92e
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x92e
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x92e
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x10f
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x10f
	.long	0x93e
	.uleb128 0xa
	.long	0x148
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaeb
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x12c
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x65f
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaeb
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2ed
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x125
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xafb
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8f0
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x246
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x246
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x246
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb15
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb25
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x125
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x246
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x246
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x246
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x246
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x246
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x125
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x16b
	.long	0xafb
	.uleb128 0xa
	.long	0x148
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x16b
	.long	0xb25
	.uleb128 0xa
	.long	0x148
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x16b
	.long	0xb35
	.uleb128 0xa
	.long	0x148
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb62
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb62
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb72
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x491
	.long	0xb72
	.uleb128 0xa
	.long	0x148
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x12c
	.long	0xb82
	.uleb128 0xa
	.long	0x148
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbac
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x93e
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb35
	.byte	0
	.uleb128 0x9
	.long	0x16b
	.long	0xbbc
	.uleb128 0xa
	.long	0x148
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbbc
	.uleb128 0x1f
	.long	0xbd9
	.uleb128 0x15
	.long	0x4b5
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbce
	.uleb128 0xe
	.byte	0x8
	.long	0x2d7
	.uleb128 0x1f
	.long	0xbf0
	.uleb128 0x15
	.long	0x125
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbf6
	.uleb128 0xe
	.byte	0x8
	.long	0xbe5
	.uleb128 0x9
	.long	0x897
	.long	0xc0c
	.uleb128 0xa
	.long	0x148
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4b5
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4bb
	.uleb128 0x3
	.ascii "FILE\0"
	.byte	0x6
	.byte	0x42
	.long	0x897
	.uleb128 0x9
	.long	0x173
	.long	0xc52
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc47
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x7
	.byte	0xae
	.long	0xc52
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xa0
	.byte	0x8
	.byte	0x6
	.long	0xc8e
	.uleb128 0xc
	.ascii "token\0"
	.byte	0x8
	.byte	0x8
	.long	0xc8e
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0x9
	.long	0xc9e
	.byte	0x98
	.byte	0
	.uleb128 0x9
	.long	0x16b
	.long	0xc9e
	.uleb128 0xa
	.long	0x148
	.byte	0x95
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc66
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x8
	.byte	0xa
	.long	0xc66
	.uleb128 0x25
	.ascii "lex\0"
	.byte	0x1
	.byte	0x3
	.long	0xca4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xe19
	.uleb128 0x26
	.ascii "fileName\0"
	.byte	0x1
	.byte	0x3
	.long	0x65f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x27
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x4
	.long	0xc8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x27
	.ascii "temp_buffer\0"
	.byte	0x1
	.byte	0x5
	.long	0xe19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.ascii "reading_buffer\0"
	.byte	0x1
	.byte	0x6
	.long	0xc8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x27
	.ascii "new_pos\0"
	.byte	0x1
	.byte	0x7
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x27
	.ascii "new_string_pos\0"
	.byte	0x1
	.byte	0x7
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x27
	.ascii "special_pos\0"
	.byte	0x1
	.byte	0x7
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x27
	.ascii "num_pos\0"
	.byte	0x1
	.byte	0x7
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x27
	.ascii "char_pos\0"
	.byte	0x1
	.byte	0x7
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x27
	.ascii "index\0"
	.byte	0x1
	.byte	0x8
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x27
	.ascii "temp_pos\0"
	.byte	0x1
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x27
	.ascii "flag\0"
	.byte	0x1
	.byte	0xa
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x27
	.ascii "pos\0"
	.byte	0x1
	.byte	0xb
	.long	0x15d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x27
	.ascii "fp\0"
	.byte	0x1
	.byte	0xc
	.long	0xe29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x27
	.ascii "myNode\0"
	.byte	0x1
	.byte	0xd
	.long	0xe2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x27
	.ascii "temp\0"
	.byte	0x1
	.byte	0x4e
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x16b
	.long	0xe29
	.uleb128 0xa
	.long	0x148
	.byte	0xc7
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc3b
	.uleb128 0xe
	.byte	0x8
	.long	0xca4
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	isAtOperator;	.scl	2;	.type	32;	.endef
	.def	isKeyword;	.scl	2;	.type	32;	.endef
	.def	pushForLex;	.scl	2;	.type	32;	.endef
	.def	isNumber;	.scl	2;	.type	32;	.endef
	.def	__locale_ctype_ptr;	.scl	2;	.type	32;	.endef
	.def	isSpecialSymbol;	.scl	2;	.type	32;	.endef
	.def	isChar;	.scl	2;	.type	32;	.endef
	.def	isStringLiteral;	.scl	2;	.type	32;	.endef
	.def	isOperator;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
