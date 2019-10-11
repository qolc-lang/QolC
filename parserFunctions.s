	.file	"parserFunctions.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "already an identifier in stack \0"
.LC1:
	.ascii "the first expr : %s\12\0"
	.align 8
.LC2:
	.ascii "now in the stack already id: %s\12\0"
.LC3:
	.ascii "current->value: %s\12\0"
.LC4:
	.ascii "+\0"
.LC5:
	.ascii "-\0"
.LC6:
	.ascii "*\0"
.LC7:
	.ascii "/\0"
.LC8:
	.ascii "<\0"
.LC9:
	.ascii "<=\0"
.LC10:
	.ascii ">\0"
.LC11:
	.ascii ">=\0"
.LC12:
	.ascii "@==\0"
.LC13:
	.ascii "going to copy the value : %s\12\0"
.LC14:
	.ascii "current is NULL\0"
	.align 8
.LC15:
	.ascii "additional saved operator : %s\12\0"
.LC16:
	.ascii "current NOT NULL\0"
.LC17:
	.ascii "now the current 1 : %s\12\0"
.LC18:
	.ascii "operator\0"
.LC19:
	.ascii "operator again in while\0"
.LC20:
	.ascii "now the current 1.2 : %s\12\0"
.LC21:
	.ascii "end of command\0"
.LC22:
	.ascii "now the value : %s\12\0"
	.align 8
.LC23:
	.ascii "now the tempNode->tempOp : %s\12\0"
	.align 8
.LC24:
	.ascii "going to add, add expression to the list\0"
	.align 8
.LC25:
	.ascii "going to add, sub expression to the list\0"
	.align 8
.LC26:
	.ascii "going to add, mul expression to the list\0"
	.align 8
.LC27:
	.ascii "going to add, div expression to the list\0"
	.align 8
.LC28:
	.ascii "going to add, EXPR_SMALLER_CMP expression to the list\0"
	.align 8
.LC29:
	.ascii "going to add, EXPR_SMALLEROREQ_CMP expression to the list\0"
	.align 8
.LC30:
	.ascii "going to add, EXPR_BIGGER_CMP expression to the list\0"
	.align 8
.LC31:
	.ascii "going to add, EXPR_BIGGEROREQ_CMP expression to the list\0"
	.align 8
.LC32:
	.ascii "going to add, EXPR_EQUAL_CMP expression to the list\0"
	.align 8
.LC33:
	.ascii "current is NULL operator again add\0"
.LC34:
	.ascii "now the current 1.3 : %s\12\0"
.LC35:
	.ascii "identifier\0"
.LC36:
	.ascii "second parameter %s\12\0"
.LC37:
	.ascii "the tempNode->value : %s\12\0"
.LC38:
	.ascii "now in the stack : %s\12\0"
.LC39:
	.ascii "operator : %s\12\0"
.LC40:
	.ascii "the operator used add\0"
.LC41:
	.ascii "the operator used sub\0"
.LC42:
	.ascii "the operator used mul\0"
.LC43:
	.ascii "the operator used div\0"
.LC44:
	.ascii "the operator used smallerExpr\0"
.LC45:
	.ascii "the operator used biggerExpr\0"
	.align 8
.LC46:
	.ascii "the operator used EXPR_BIGGEROREQ_CMP\0"
	.align 8
.LC47:
	.ascii "the operator used EXPR_EQUAL_CMP\0"
.LC48:
	.ascii "the operator used add 2\0"
.LC49:
	.ascii "the operator used sub 2\0"
.LC50:
	.ascii "the operator used mul 2\0"
.LC51:
	.ascii "the operator used div 2\0"
	.align 8
.LC52:
	.ascii "the operator used smallerExpr 2\0"
	.align 8
.LC53:
	.ascii "the operator used biggerExpr 2\0"
	.align 8
.LC54:
	.ascii "the operator used EXPR_BIGGEROREQ_CMP 2\0"
	.align 8
.LC55:
	.ascii "the operator used EXPR_EQUAL_CMP 2\0"
	.align 8
.LC56:
	.ascii "Invalid operator, for return expression. Needs checking\0"
.LC57:
	.ascii "number\0"
.LC58:
	.ascii "now the current 3 : %s\12\0"
	.align 8
.LC59:
	.ascii "second parameter after eoc %s\12\0"
	.align 8
.LC60:
	.ascii "now in the tempNode->value : %s\12\0"
.LC61:
	.ascii "the tempTop : %d\12\0"
	.align 8
.LC62:
	.ascii "going for add in the end - finalExpr\0"
	.align 8
.LC63:
	.ascii "going for sub in the end - finalExpr\0"
	.align 8
.LC64:
	.ascii "going for mul in the end - finalExpr\0"
	.align 8
.LC65:
	.ascii "going for div in the end - finalExpr\0"
	.align 8
.LC66:
	.ascii "going for EXPR_SMALLER_CMP in the end - finalExpr\0"
	.align 8
.LC67:
	.ascii "going for EXPR_SMALLEROREQ_CMP in the end - finalExpr\0"
	.align 8
.LC68:
	.ascii "going for EXPR_BIGGER_CMP in the end - finalExpr\0"
	.align 8
.LC69:
	.ascii "going for EXPR_BIGGEROREQ_CMP in the end - finalExpr\0"
	.align 8
.LC70:
	.ascii "going for EXPR_EQUAL_CMP in the end - finalExpr\0"
	.align 8
.LC71:
	.ascii "before hereeee checkForReturnOperator\0"
	.align 8
.LC72:
	.ascii "going for null break 1 checkForReturnOperator --- in return stmt\0"
	.align 8
.LC73:
	.ascii "in return eoc loop with value : %s\12\0"
	.align 8
.LC74:
	.ascii "going for eoc break --- in return stmt\0"
.LC75:
	.ascii "the current now in else : %s\12\0"
	.align 8
.LC76:
	.ascii "going for null break 2 checkForReturnOperator --- in return stmt\0"
	.text
	.globl	checkForReturnOperator
	.def	checkForReturnOperator;	.scl	2;	.type	32;	.endef
	.seh_proc	checkForReturnOperator
checkForReturnOperator:
.LFB9:
	.file 1 "./src/parserFunctions.c"
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$256, %rsp
	.seh_stackalloc	256
	.cfi_def_cfa_offset 272
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 144
	.seh_endprologue
	movq	%rcx, 144(%rbp)
	movq	%rdx, 152(%rbp)
	movl	%r8d, 160(%rbp)
	movq	%r9, 168(%rbp)
	.loc 1 8 0
	movl	$0, -36(%rbp)
	.loc 1 9 0
	movl	$16, %ecx
	call	malloc
	movq	%rax, 8(%rbp)
	.loc 1 12 0
	movl	160(%rbp), %eax
	cmpl	$1, %eax
	jle	.L2
.LBB2:
	.loc 1 13 0
	leaq	.LC0(%rip), %rcx
	call	puts
	.loc 1 15 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 16 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 17 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	.loc 1 18 0
	movq	152(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	.loc 1 19 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	.loc 1 21 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 16(%rbp)
	.loc 1 22 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 24(%rbp)
	.loc 1 24 0
	movq	152(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L3
	.loc 1 25 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L3:
	.loc 1 27 0
	movq	152(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 28 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L5:
	.loc 1 30 0
	movq	152(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	.loc 1 31 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L6:
	.loc 1 33 0
	movq	152(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	.loc 1 34 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$3, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L7:
	.loc 1 36 0
	movq	152(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	.loc 1 37 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L8:
	.loc 1 39 0
	movq	152(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	.loc 1 40 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L9:
	.loc 1 42 0
	movq	152(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	.loc 1 43 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L10:
	.loc 1 45 0
	movq	152(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	.loc 1 46 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
	jmp	.L4
.L11:
	.loc 1 48 0
	movq	152(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L4
	.loc 1 49 0
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, -24(%rbp)
.L4:
	.loc 1 52 0
	movq	-24(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	push_expressionList
	.loc 1 55 0
	movl	160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 160(%rbp)
	.loc 1 56 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	160(%rbp), %rdx
	movq	152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push
	.loc 1 57 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rcx
	call	printf
	.loc 1 58 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 60 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 61 0
	cmpq	$0, 144(%rbp)
	jne	.L12
.LBB3:
	.loc 1 62 0
	leaq	.LC14(%rip), %rcx
	call	puts
	.loc 1 63 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 32(%rbp)
	.loc 1 64 0
	movq	32(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 65 0
	movq	144(%rbp), %rax
	jmp	.L13
.L12:
.LBE3:
	.loc 1 68 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	testq	%rax, %rax
	je	.L14
	.loc 1 68 0 discriminator 1
	movq	176(%rbp), %rax
	movzbl	103(%rax), %eax
	testb	%al, %al
	je	.L14
	.loc 1 69 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	printf
	.loc 1 70 0
	movl	160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 160(%rbp)
	.loc 1 71 0
	movq	176(%rbp), %rax
	leaq	103(%rax), %rcx
	leaq	160(%rbp), %rdx
	movq	152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push
	jmp	.L2
.L14:
	.loc 1 74 0
	movl	160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 160(%rbp)
	.loc 1 75 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	160(%rbp), %rdx
	movq	152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push
	.loc 1 76 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 77 0
	leaq	.LC16(%rip), %rcx
	call	puts
	.loc 1 78 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
.L2:
.LBE2:
	.loc 1 83 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 84 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rcx
	call	printf
	.loc 1 85 0
	jmp	.L15
.L47:
	.loc 1 86 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L16
	.loc 1 87 0
	leaq	.LC19(%rip), %rcx
	call	puts
	.loc 1 88 0
	movl	160(%rbp), %eax
	movslq	%eax, %rdx
	movq	152(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 1 89 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 90 0
	movl	160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 160(%rbp)
	.loc 1 91 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	160(%rbp), %rdx
	movq	152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	push
	.loc 1 92 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$103, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 93 0
	cmpl	$1, -36(%rbp)
	jne	.L17
	.loc 1 94 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	call	strcpy
.L17:
	.loc 1 96 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 97 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC20(%rip), %rcx
	call	printf
	.loc 1 99 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L15
.LBB4:
	.loc 1 101 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rcx
	call	printf
	.loc 1 102 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rcx
	call	printf
	.loc 1 104 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 104(%rbp)
	.loc 1 105 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 112(%rbp)
	.loc 1 108 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L18
	.loc 1 109 0
	leaq	.LC24(%rip), %rcx
	call	puts
	.loc 1 110 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L18:
	.loc 1 112 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L20
	.loc 1 113 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 114 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L20:
	.loc 1 116 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L21
	.loc 1 117 0
	leaq	.LC26(%rip), %rcx
	call	puts
	.loc 1 118 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L21:
	.loc 1 120 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L22
	.loc 1 121 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 122 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$3, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L22:
	.loc 1 124 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	.loc 1 125 0
	leaq	.LC28(%rip), %rcx
	call	puts
	.loc 1 126 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L23:
	.loc 1 128 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	.loc 1 129 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 130 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L24:
	.loc 1 132 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L25
	.loc 1 133 0
	leaq	.LC30(%rip), %rcx
	call	puts
	.loc 1 134 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L25:
	.loc 1 136 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L26
	.loc 1 137 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 138 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
	jmp	.L19
.L26:
	.loc 1 140 0
	movq	176(%rbp), %rax
	addq	$100, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 141 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 142 0
	movq	112(%rbp), %rdx
	movq	104(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, -16(%rbp)
.L19:
	.loc 1 146 0
	movq	-16(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	push_expressionList
	.loc 1 148 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rcx
	call	printf
	.loc 1 149 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 150 0
	movq	176(%rbp), %rax
	leaq	103(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 151 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 152 0
	cmpq	$0, 144(%rbp)
	jne	.L27
.LBB5:
	.loc 1 153 0
	leaq	.LC33(%rip), %rcx
	call	puts
	.loc 1 154 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 120(%rbp)
	.loc 1 155 0
	movq	120(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 156 0
	movq	144(%rbp), %rax
	jmp	.L13
.L27:
.LBE5:
	.loc 1 159 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rcx
	call	printf
	.loc 1 160 0
	jmp	.L15
.L16:
.LBE4:
	.loc 1 164 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
.LBB6:
	.loc 1 165 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rcx
	call	printf
	.loc 1 166 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 167 0
	movq	152(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	.loc 1 168 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	movq	%rax, %rdx
	leaq	.LC39(%rip), %rcx
	call	printf
	.loc 1 170 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 72(%rbp)
	.loc 1 171 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 80(%rbp)
	.loc 1 174 0
	movq	152(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L28
	.loc 1 175 0
	leaq	.LC40(%rip), %rcx
	call	puts
	.loc 1 176 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	jmp	.L29
.L28:
	.loc 1 178 0
	movq	152(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	.loc 1 179 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 180 0
	leaq	.LC41(%rip), %rcx
	call	puts
	jmp	.L29
.L30:
	.loc 1 182 0
	movq	152(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L31
	.loc 1 183 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 184 0
	leaq	.LC42(%rip), %rcx
	call	puts
	jmp	.L29
.L31:
	.loc 1 186 0
	movq	152(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L32
	.loc 1 187 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$3, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 188 0
	leaq	.LC43(%rip), %rcx
	call	puts
	jmp	.L29
.L32:
	.loc 1 190 0
	movq	152(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L33
	.loc 1 191 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 192 0
	leaq	.LC44(%rip), %rcx
	call	puts
	jmp	.L29
.L33:
	.loc 1 194 0
	movq	152(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L34
	.loc 1 195 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 196 0
	leaq	.LC44(%rip), %rcx
	call	puts
	jmp	.L29
.L34:
	.loc 1 198 0
	movq	152(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L35
	.loc 1 199 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 200 0
	leaq	.LC45(%rip), %rcx
	call	puts
	jmp	.L29
.L35:
	.loc 1 202 0
	movq	152(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L36
	.loc 1 203 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 204 0
	leaq	.LC46(%rip), %rcx
	call	puts
	jmp	.L29
.L36:
	.loc 1 206 0
	movq	152(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L37
	.loc 1 207 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 208 0
	leaq	.LC47(%rip), %rcx
	call	puts
	jmp	.L29
.L37:
	.loc 1 211 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	.loc 1 212 0
	leaq	.LC48(%rip), %rcx
	call	puts
	.loc 1 213 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	jmp	.L29
.L38:
	.loc 1 215 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	.loc 1 216 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 217 0
	leaq	.LC49(%rip), %rcx
	call	puts
	jmp	.L29
.L39:
	.loc 1 219 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L40
	.loc 1 220 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 221 0
	leaq	.LC50(%rip), %rcx
	call	puts
	jmp	.L29
.L40:
	.loc 1 223 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	.loc 1 224 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$3, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 225 0
	leaq	.LC51(%rip), %rcx
	call	puts
	jmp	.L29
.L41:
	.loc 1 227 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L42
	.loc 1 228 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 229 0
	leaq	.LC52(%rip), %rcx
	call	puts
	jmp	.L29
.L42:
	.loc 1 231 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L43
	.loc 1 232 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 233 0
	leaq	.LC52(%rip), %rcx
	call	puts
	jmp	.L29
.L43:
	.loc 1 235 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L44
	.loc 1 236 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 237 0
	leaq	.LC53(%rip), %rcx
	call	puts
	jmp	.L29
.L44:
	.loc 1 239 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L45
	.loc 1 240 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 241 0
	leaq	.LC54(%rip), %rcx
	call	puts
	jmp	.L29
.L45:
	.loc 1 243 0
	movq	176(%rbp), %rax
	addq	$103, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	.loc 1 244 0
	movq	80(%rbp), %rdx
	movq	72(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, -8(%rbp)
	.loc 1 245 0
	leaq	.LC55(%rip), %rcx
	call	puts
	jmp	.L29
.L46:
.LBB7:
	.loc 1 248 0
	leaq	.LC56(%rip), %rcx
	call	puts
	.loc 1 249 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 88(%rbp)
	.loc 1 250 0
	movq	88(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 251 0
	movq	144(%rbp), %rax
	jmp	.L13
.L29:
.LBE7:
	.loc 1 255 0
	movl	$1, -36(%rbp)
	.loc 1 257 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 258 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	push_expressionList
	.loc 1 259 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 260 0
	cmpq	$0, 144(%rbp)
	jne	.L15
.LBB8:
	.loc 1 261 0
	leaq	.LC14(%rip), %rcx
	call	puts
	.loc 1 262 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 96(%rbp)
	.loc 1 263 0
	movq	96(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 264 0
	movq	144(%rbp), %rax
	jmp	.L13
.L15:
.LBE8:
.LBE6:
	.loc 1 85 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L47
	.loc 1 85 0 is_stmt 0 discriminator 1
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L47
	.loc 1 85 0 discriminator 2
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC57(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L47
	.loc 1 268 0 is_stmt 1
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L48
	.loc 1 269 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 270 0
	movq	144(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 271 0
	cmpq	$0, 144(%rbp)
	je	.L48
	.loc 1 272 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rcx
	call	printf
	.loc 1 273 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L48
.LBB9:
	.loc 1 274 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC59(%rip), %rcx
	call	printf
	.loc 1 275 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rdx
	leaq	.LC60(%rip), %rcx
	call	printf
	.loc 1 276 0
	movq	176(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 40(%rbp)
	.loc 1 277 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 48(%rbp)
	.loc 1 280 0
	movl	160(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC61(%rip), %rcx
	call	printf
	.loc 1 281 0
	movl	160(%rbp), %eax
	cmpl	$1, %eax
	jle	.L49
	.loc 1 282 0
	leaq	160(%rbp), %rax
	movq	%rax, %rcx
	call	pop
.L49:
	.loc 1 283 0
	movq	152(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	.loc 1 285 0
	movq	152(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L50
	.loc 1 286 0
	leaq	.LC62(%rip), %rcx
	call	puts
	.loc 1 287 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$0, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L50:
	.loc 1 289 0
	movq	152(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L52
	.loc 1 290 0
	leaq	.LC63(%rip), %rcx
	call	puts
	.loc 1 291 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L52:
	.loc 1 293 0
	movq	152(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L53
	.loc 1 294 0
	leaq	.LC64(%rip), %rcx
	call	puts
	.loc 1 295 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$2, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L53:
	.loc 1 297 0
	movq	152(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L54
	.loc 1 298 0
	leaq	.LC65(%rip), %rcx
	call	puts
	.loc 1 299 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$3, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L54:
	.loc 1 301 0
	movq	152(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L55
	.loc 1 302 0
	leaq	.LC66(%rip), %rcx
	call	puts
	.loc 1 303 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$13, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L55:
	.loc 1 305 0
	movq	152(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L56
	.loc 1 306 0
	leaq	.LC67(%rip), %rcx
	call	puts
	.loc 1 307 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$14, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L56:
	.loc 1 309 0
	movq	152(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L57
	.loc 1 310 0
	leaq	.LC68(%rip), %rcx
	call	puts
	.loc 1 311 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$11, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L57:
	.loc 1 313 0
	movq	152(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L58
	.loc 1 314 0
	leaq	.LC69(%rip), %rcx
	call	puts
	.loc 1 315 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$12, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
	jmp	.L51
.L58:
	.loc 1 317 0
	movq	152(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L51
	.loc 1 318 0
	leaq	.LC70(%rip), %rcx
	call	puts
	.loc 1 319 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rax
	movl	$-1, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$15, %ecx
	call	expr_create
	movq	%rax, 0(%rbp)
.L51:
	.loc 1 325 0
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	push_expressionList
	.loc 1 326 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 56(%rbp)
	.loc 1 327 0
	movq	56(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.L48:
.LBE9:
	.loc 1 332 0
	leaq	.LC71(%rip), %rcx
	call	puts
	.loc 1 334 0
	cmpq	$0, 144(%rbp)
	jne	.L59
	.loc 1 335 0
	leaq	.LC72(%rip), %rcx
	call	puts
	.loc 1 336 0
	movl	$0, %eax
	jmp	.L13
.L59:
	.loc 1 339 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L60
	.loc 1 340 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 341 0
	cmpq	$0, 144(%rbp)
	je	.L61
	.loc 1 342 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC73(%rip), %rcx
	call	printf
.L61:
	.loc 1 345 0
	leaq	.LC74(%rip), %rcx
	call	puts
	jmp	.L62
.L60:
	.loc 1 348 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC75(%rip), %rcx
	call	printf
	.loc 1 349 0
	movq	144(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L62
.LBB10:
	.loc 1 350 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 64(%rbp)
	.loc 1 351 0
	movq	64(%rbp), %rdx
	movq	168(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 352 0
	movq	144(%rbp), %rax
	jmp	.L13
.L62:
.LBE10:
	.loc 1 356 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 357 0
	cmpq	$0, 144(%rbp)
	jne	.L63
	.loc 1 358 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 359 0
	movl	$0, %eax
	jmp	.L13
.L63:
	.loc 1 362 0
	movq	144(%rbp), %rax
	addq	$4, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L64
	.loc 1 363 0
	movq	144(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 144(%rbp)
	.loc 1 364 0
	cmpq	$0, 144(%rbp)
	je	.L65
	.loc 1 365 0
	movq	144(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC73(%rip), %rcx
	call	printf
	.loc 1 366 0
	movq	144(%rbp), %rax
	jmp	.L13
.L65:
	.loc 1 369 0
	leaq	.LC74(%rip), %rcx
	call	puts
	.loc 1 370 0
	movl	$0, %eax
	jmp	.L13
.L64:
	.loc 1 373 0
	movq	144(%rbp), %rax
.L13:
	.loc 1 374 0
	addq	$256, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -248
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.globl	isIdentifierType
	.def	isIdentifierType;	.scl	2;	.type	32;	.endef
	.seh_proc	isIdentifierType
isIdentifierType:
.LFB10:
	.loc 1 379 0
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
	.loc 1 380 0
	leaq	.LC35(%rip), %rdx
	movq	16(%rbp), %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L67
	.loc 1 380 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L68
.L67:
	.loc 1 380 0 discriminator 2
	movl	$0, %eax
.L68:
	.loc 1 381 0 is_stmt 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.globl	isNumberType
	.def	isNumberType;	.scl	2;	.type	32;	.endef
	.seh_proc	isNumberType
isNumberType:
.LFB11:
	.loc 1 386 0
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
	.loc 1 387 0
	leaq	.LC57(%rip), %rdx
	movq	16(%rbp), %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L70
	.loc 1 387 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L71
.L70:
	.loc 1 387 0 discriminator 2
	movl	$0, %eax
.L71:
	.loc 1 388 0 is_stmt 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC77:
	.ascii "Going to build import statement with string : %s\12\0"
	.align 8
.LC78:
	.ascii "Going to build load statement with string : %s\12\0"
	.align 8
.LC79:
	.ascii "Going to build print statement with string : %s\12\0"
	.align 8
.LC80:
	.ascii "Going to build sleep statement with string : %s\12\0"
	.align 8
.LC81:
	.ascii "Going to build scan statement with string : %s\12\0"
	.align 8
.LC82:
	.ascii "Going to build delete statement with string : %s\12\0"
	.text
	.globl	BuildSingleExprStatement
	.def	BuildSingleExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildSingleExprStatement
BuildSingleExprStatement:
.LFB12:
	.loc 1 393 0
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
	.loc 1 394 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 397 0
	cmpl	$6, 32(%rbp)
	ja	.L82
	movl	32(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L75(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L75(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L75:
	.long	.L82-.L75
	.long	.L74-.L75
	.long	.L76-.L75
	.long	.L77-.L75
	.long	.L78-.L75
	.long	.L79-.L75
	.long	.L80-.L75
	.text
.L74:
	.loc 1 399 0
	movq	16(%rbp), %rdx
	leaq	.LC77(%rip), %rcx
	call	printf
	.loc 1 400 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 401 0
	jmp	.L81
.L76:
	.loc 1 403 0
	movq	16(%rbp), %rdx
	leaq	.LC78(%rip), %rcx
	call	printf
	.loc 1 404 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 405 0
	jmp	.L81
.L77:
	.loc 1 407 0
	movq	16(%rbp), %rdx
	leaq	.LC79(%rip), %rcx
	call	printf
	.loc 1 408 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 409 0
	jmp	.L81
.L78:
	.loc 1 411 0
	movq	16(%rbp), %rdx
	leaq	.LC80(%rip), %rcx
	call	printf
	.loc 1 412 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 413 0
	jmp	.L81
.L79:
	.loc 1 415 0
	movq	16(%rbp), %rdx
	leaq	.LC81(%rip), %rcx
	call	printf
	.loc 1 416 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 417 0
	jmp	.L81
.L80:
	.loc 1 419 0
	movq	16(%rbp), %rdx
	leaq	.LC82(%rip), %rcx
	call	printf
	.loc 1 420 0
	movq	-8(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 421 0
	jmp	.L81
.L82:
	.loc 1 423 0
	nop
.L81:
	.loc 1 425 0
	movq	-16(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 426 0
	nop
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section .rdata,"dr"
.LC83:
	.ascii "parenthesis\0"
	.align 8
.LC84:
	.ascii "Going to build cast statement with string : %s\12\0"
	.align 8
.LC85:
	.ascii "Going to build array_add statement with string : %s\12\0"
	.text
	.globl	BuildDoubleExprStatement
	.def	BuildDoubleExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDoubleExprStatement
BuildDoubleExprStatement:
.LFB13:
	.loc 1 429 0
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
	.loc 1 429 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 216(%rbp)
	xorl	%ecx, %ecx
	.loc 1 433 0
	movq	-40(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 434 0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 435 0
	movq	-40(%rbp), %rax
	addq	$4, %rax
	leaq	.LC83(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L84
	.loc 1 436 0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 1 437 0
	movq	-40(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	112(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L84:
	.loc 1 439 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 440 0
	leaq	112(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 442 0
	movl	256(%rbp), %eax
	cmpl	$1, %eax
	je	.L86
	cmpl	$2, %eax
	je	.L87
	.loc 1 452 0
	jmp	.L88
.L86:
	.loc 1 444 0
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC84(%rip), %rcx
	call	printf
	.loc 1 445 0
	movq	-16(%rbp), %rdx
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 446 0
	jmp	.L88
.L87:
	.loc 1 448 0
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC85(%rip), %rcx
	call	printf
	.loc 1 449 0
	movq	-16(%rbp), %rdx
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 450 0
	nop
.L88:
	.loc 1 454 0
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 455 0
	nop
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	216(%rbp), %rcx
	xorq	(%rax), %rcx
	je	.L89
	call	__stack_chk_fail
	nop
.L89:
	addq	$352, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -344
	ret
	.cfi_endproc
.LFE13:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC86:
	.ascii "Going to build hexadecimal number declaration statement.\0"
	.align 8
.LC87:
	.ascii "Going to build int declaration statement.\0"
	.align 8
.LC88:
	.ascii "Going to build float declaration statement.\0"
	.align 8
.LC89:
	.ascii "Going to build character declaration statement.\0"
	.align 8
.LC90:
	.ascii "Going to build string declaration statement.\0"
	.align 8
.LC91:
	.ascii "Going to build string pointer declaration statement.\0"
	.align 8
.LC92:
	.ascii "Going to build float pointer declaration statement.\0"
	.align 8
.LC93:
	.ascii "Going to build int pointer declaration statement.\0"
	.align 8
.LC94:
	.ascii "Going to build char pointer declaration statement.\0"
	.align 8
.LC95:
	.ascii "Going to build bool declaration statement.\0"
	.align 8
.LC96:
	.ascii "Going to build void declaration statement.\0"
	.align 8
.LC97:
	.ascii "Going to build int array declaration statement.\0"
	.align 8
.LC98:
	.ascii "Going to build string array declaration statement.\0"
	.align 8
.LC99:
	.ascii "Going to build float array declaration statement.\0"
	.align 8
.LC100:
	.ascii "Going to build void array declaration statement.\0"
	.align 8
.LC101:
	.ascii "Going to build boolean array declaration statement.\0"
	.align 8
.LC102:
	.ascii "Going to build char array declaration statement.\0"
	.align 8
.LC103:
	.ascii "Going to build int pointer array declaration statement.\0"
	.align 8
.LC104:
	.ascii "Going to build string pointer array declaration statement.\0"
	.align 8
.LC105:
	.ascii "Going to build float pointer array declaration statement.\0"
	.align 8
.LC106:
	.ascii "Going to build void pointer array declaration statement.\0"
	.align 8
.LC107:
	.ascii "Going to build char pointer array declaration statement.\0"
	.text
	.globl	BuildDeclarationExprStatement
	.def	BuildDeclarationExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDeclarationExprStatement
BuildDeclarationExprStatement:
.LFB14:
	.loc 1 458 0
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
	.loc 1 462 0
	cmpl	$23, 40(%rbp)
	ja	.L117
	movl	40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L93(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L93(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L93:
	.long	.L117-.L93
	.long	.L92-.L93
	.long	.L94-.L93
	.long	.L95-.L93
	.long	.L96-.L93
	.long	.L97-.L93
	.long	.L98-.L93
	.long	.L99-.L93
	.long	.L100-.L93
	.long	.L101-.L93
	.long	.L102-.L93
	.long	.L103-.L93
	.long	.L104-.L93
	.long	.L105-.L93
	.long	.L106-.L93
	.long	.L107-.L93
	.long	.L108-.L93
	.long	.L109-.L93
	.long	.L110-.L93
	.long	.L111-.L93
	.long	.L112-.L93
	.long	.L113-.L93
	.long	.L114-.L93
	.long	.L115-.L93
	.text
.L92:
	.loc 1 464 0
	leaq	.LC86(%rip), %rcx
	call	puts
	.loc 1 465 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$12, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 466 0
	jmp	.L116
.L94:
	.loc 1 468 0
	leaq	.LC87(%rip), %rcx
	call	puts
	.loc 1 469 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$3, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 470 0
	jmp	.L116
.L95:
	.loc 1 472 0
	leaq	.LC88(%rip), %rcx
	call	puts
	.loc 1 473 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 474 0
	jmp	.L116
.L96:
	.loc 1 476 0
	leaq	.LC89(%rip), %rcx
	call	puts
	.loc 1 477 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$2, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 478 0
	jmp	.L116
.L97:
	.loc 1 480 0
	leaq	.LC90(%rip), %rcx
	call	puts
	.loc 1 481 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 482 0
	jmp	.L116
.L98:
	.loc 1 484 0
	leaq	.LC91(%rip), %rcx
	call	puts
	.loc 1 485 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 486 0
	jmp	.L116
.L99:
	.loc 1 488 0
	leaq	.LC92(%rip), %rcx
	call	puts
	.loc 1 489 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$6, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 490 0
	jmp	.L116
.L100:
	.loc 1 492 0
	leaq	.LC93(%rip), %rcx
	call	puts
	.loc 1 493 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$7, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 494 0
	jmp	.L116
.L101:
	.loc 1 496 0
	leaq	.LC94(%rip), %rcx
	call	puts
	.loc 1 497 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 498 0
	jmp	.L116
.L102:
	.loc 1 500 0
	leaq	.LC95(%rip), %rcx
	call	puts
	.loc 1 501 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$1, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 502 0
	jmp	.L116
.L103:
	.loc 1 504 0
	leaq	.LC96(%rip), %rcx
	call	puts
	.loc 1 505 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 506 0
	jmp	.L116
.L104:
	.loc 1 508 0
	leaq	.LC96(%rip), %rcx
	call	puts
	.loc 1 509 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 510 0
	jmp	.L116
.L105:
	.loc 1 512 0
	leaq	.LC97(%rip), %rcx
	call	puts
	.loc 1 513 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$19, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 514 0
	jmp	.L116
.L106:
	.loc 1 516 0
	leaq	.LC98(%rip), %rcx
	call	puts
	.loc 1 517 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$20, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 518 0
	jmp	.L116
.L107:
	.loc 1 520 0
	leaq	.LC99(%rip), %rcx
	call	puts
	.loc 1 521 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$21, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 522 0
	jmp	.L116
.L108:
	.loc 1 524 0
	leaq	.LC100(%rip), %rcx
	call	puts
	.loc 1 525 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$16, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 526 0
	jmp	.L116
.L109:
	.loc 1 528 0
	leaq	.LC101(%rip), %rcx
	call	puts
	.loc 1 529 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$17, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 530 0
	jmp	.L116
.L110:
	.loc 1 532 0
	leaq	.LC102(%rip), %rcx
	call	puts
	.loc 1 533 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$18, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 534 0
	jmp	.L116
.L111:
	.loc 1 536 0
	leaq	.LC103(%rip), %rcx
	call	puts
	.loc 1 537 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$26, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 538 0
	jmp	.L116
.L112:
	.loc 1 540 0
	leaq	.LC104(%rip), %rcx
	call	puts
	.loc 1 541 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$28, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 542 0
	jmp	.L116
.L113:
	.loc 1 544 0
	leaq	.LC105(%rip), %rcx
	call	puts
	.loc 1 545 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$25, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 546 0
	jmp	.L116
.L114:
	.loc 1 548 0
	leaq	.LC106(%rip), %rcx
	call	puts
	.loc 1 549 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$29, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 550 0
	jmp	.L116
.L115:
	.loc 1 552 0
	leaq	.LC107(%rip), %rcx
	call	puts
	.loc 1 553 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$27, %ecx
	call	type_create
	movq	%rax, -32(%rbp)
	.loc 1 554 0
	jmp	.L116
.L117:
	.loc 1 556 0
	nop
.L116:
	.loc 1 559 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 560 0
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, -16(%rbp)
	.loc 1 561 0
	movq	-16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 562 0
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 563 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC108:
	.ascii "Going to build add assignment expression statement.\0"
	.align 8
.LC109:
	.ascii "Going to build sub assignment expression statement.\0"
	.align 8
.LC110:
	.ascii "Going to build mul assignment expression statement.\0"
	.align 8
.LC111:
	.ascii "Going to build div assignment expression statement.\0"
	.align 8
.LC112:
	.ascii "Going to build bigger expression statement.\0"
	.align 8
.LC113:
	.ascii "Going to build bigger or equal expression statement.\0"
	.align 8
.LC114:
	.ascii "Going to build smaller expression statement.\0"
	.align 8
.LC115:
	.ascii "Going to build smaller or equal expression statement.\0"
	.align 8
.LC116:
	.ascii "Going to build equal expression statement.\0"
	.text
	.globl	BuildAssignAndCompareExprStatement
	.def	BuildAssignAndCompareExprStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildAssignAndCompareExprStatement
BuildAssignAndCompareExprStatement:
.LFB15:
	.loc 1 566 0
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
	.loc 1 568 0
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 569 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -8(%rbp)
	.loc 1 572 0
	cmpl	$9, 40(%rbp)
	ja	.L131
	movl	40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L121(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L121(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L121:
	.long	.L131-.L121
	.long	.L120-.L121
	.long	.L122-.L121
	.long	.L123-.L121
	.long	.L124-.L121
	.long	.L125-.L121
	.long	.L126-.L121
	.long	.L127-.L121
	.long	.L128-.L121
	.long	.L129-.L121
	.text
.L120:
	.loc 1 574 0
	leaq	.LC108(%rip), %rcx
	call	puts
	.loc 1 575 0
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
	.loc 1 576 0
	jmp	.L130
.L122:
	.loc 1 578 0
	leaq	.LC109(%rip), %rcx
	call	puts
	.loc 1 579 0
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
	.loc 1 580 0
	jmp	.L130
.L123:
	.loc 1 582 0
	leaq	.LC110(%rip), %rcx
	call	puts
	.loc 1 583 0
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
	.loc 1 584 0
	jmp	.L130
.L124:
	.loc 1 586 0
	leaq	.LC111(%rip), %rcx
	call	puts
	.loc 1 587 0
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
	.loc 1 588 0
	jmp	.L130
.L125:
	.loc 1 590 0
	leaq	.LC112(%rip), %rcx
	call	puts
	.loc 1 591 0
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
	.loc 1 592 0
	jmp	.L130
.L126:
	.loc 1 594 0
	leaq	.LC113(%rip), %rcx
	call	puts
	.loc 1 595 0
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
	.loc 1 596 0
	jmp	.L130
.L127:
	.loc 1 598 0
	leaq	.LC114(%rip), %rcx
	call	puts
	.loc 1 599 0
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
	.loc 1 600 0
	jmp	.L130
.L128:
	.loc 1 602 0
	leaq	.LC115(%rip), %rcx
	call	puts
	.loc 1 603 0
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
	.loc 1 604 0
	jmp	.L130
.L129:
	.loc 1 606 0
	leaq	.LC116(%rip), %rcx
	call	puts
	.loc 1 607 0
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
	.loc 1 608 0
	jmp	.L130
.L131:
	.loc 1 610 0
	nop
.L130:
	.loc 1 613 0
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 614 0
	nop
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC117:
	.ascii "Going to build add declaration statement.\0"
	.text
	.globl	BuildDeclarationStatement
	.def	BuildDeclarationStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildDeclarationStatement
BuildDeclarationStatement:
.LFB16:
	.loc 1 617 0
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
	.loc 1 618 0
	leaq	.LC117(%rip), %rcx
	call	puts
	.loc 1 619 0
	movq	16(%rbp), %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 620 0
	movq	-24(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, -16(%rbp)
	.loc 1 621 0
	movq	-16(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 622 0
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 623 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.seh_endproc
	.section .rdata,"dr"
.LC118:
	.ascii "Going to build statement new.\0"
	.text
	.globl	BuildNewStatement
	.def	BuildNewStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	BuildNewStatement
BuildNewStatement:
.LFB17:
	.loc 1 626 0
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
	.loc 1 627 0
	leaq	.LC118(%rip), %rcx
	call	puts
	.loc 1 628 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 16(%rbp)
	.loc 1 629 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 16(%rbp)
	.loc 1 630 0
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -24(%rbp)
	.loc 1 631 0
	movq	16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, -16(%rbp)
	.loc 1 632 0
	movq	-24(%rbp), %rdx
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
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
	.loc 1 633 0
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 634 0
	nop
	addq	$112, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.globl	CheckIfMemberOfStatement
	.def	CheckIfMemberOfStatement;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckIfMemberOfStatement
CheckIfMemberOfStatement:
.LFB18:
	.loc 1 636 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.seh_stackalloc	24
	.cfi_def_cfa_offset 48
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -80
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	.loc 1 638 0
	movl	-128(%rbp), %eax
	cmpl	$1, %eax
	jne	.L135
	.loc 1 638 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L136
.L135:
	.loc 1 639 0 is_stmt 1
	movl	-124(%rbp), %eax
	cmpl	$1, %eax
	jne	.L137
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L136
.L137:
	.loc 1 640 0 is_stmt 1
	movl	-120(%rbp), %eax
	cmpl	$1, %eax
	jne	.L138
	.loc 1 640 0 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L136
.L138:
	.loc 1 641 0 is_stmt 1
	movl	-116(%rbp), %eax
	cmpl	$1, %eax
	jne	.L139
	.loc 1 641 0 is_stmt 0 discriminator 1
	movl	$4, %eax
	jmp	.L136
.L139:
	.loc 1 643 0 is_stmt 1
	movl	$-1, %eax
.L136:
	.loc 1 644 0
	addq	$24, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.globl	ClearFlags
	.def	ClearFlags;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearFlags
ClearFlags:
.LFB19:
	.loc 1 646 0
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
	.loc 1 648 0
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L141
	.loc 1 648 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, (%rax)
.L141:
	.loc 1 649 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L142
	.loc 1 649 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 4(%rax)
.L142:
	.loc 1 650 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L143
	.loc 1 650 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 8(%rax)
.L143:
	.loc 1 651 0 is_stmt 1
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jne	.L145
	.loc 1 651 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
.L145:
	.loc 1 652 0 is_stmt 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
	.section .rdata,"dr"
.LC119:
	.ascii "pointer symbol\0"
.LC120:
	.ascii "Pointer type array.\0"
.LC121:
	.ascii "The array type : %s\12\0"
.LC122:
	.ascii "int\0"
.LC123:
	.ascii "string\0"
.LC124:
	.ascii "float\0"
.LC125:
	.ascii "void\0"
.LC126:
	.ascii "bool\0"
.LC127:
	.ascii "char\0"
	.text
	.globl	CheckArrayType
	.def	CheckArrayType;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckArrayType
CheckArrayType:
.LFB20:
	.loc 1 655 0
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
	.loc 1 656 0
	movl	$0, -8(%rbp)
	.loc 1 657 0
	movl	$0, -4(%rbp)
	.loc 1 659 0
	movq	16(%rbp), %rax
	addq	$4, %rax
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L147
	.loc 1 661 0
	leaq	.LC120(%rip), %rcx
	call	puts
	.loc 1 662 0
	movl	$1, -8(%rbp)
.L147:
	.loc 1 664 0
	movq	16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 16(%rbp)
	.loc 1 665 0
	movq	16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 666 0
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC122(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L148
	.loc 1 666 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	je	.L148
	.loc 1 666 0 discriminator 2
	movl	$13, -4(%rbp)
	jmp	.L149
.L148:
	.loc 1 667 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC122(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L150
	.loc 1 667 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	jne	.L150
	.loc 1 667 0 discriminator 2
	movl	$19, -4(%rbp)
	jmp	.L149
.L150:
	.loc 1 668 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC123(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L151
	.loc 1 668 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	je	.L151
	.loc 1 668 0 discriminator 2
	movl	$14, -4(%rbp)
	jmp	.L149
.L151:
	.loc 1 669 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC123(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L152
	.loc 1 669 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	jne	.L152
	.loc 1 669 0 discriminator 2
	movl	$20, -4(%rbp)
	jmp	.L149
.L152:
	.loc 1 670 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC124(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L153
	.loc 1 670 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	je	.L153
	.loc 1 670 0 discriminator 2
	movl	$15, -4(%rbp)
	jmp	.L149
.L153:
	.loc 1 671 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC124(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L154
	.loc 1 671 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	jne	.L154
	.loc 1 671 0 discriminator 2
	movl	$21, -4(%rbp)
	jmp	.L149
.L154:
	.loc 1 672 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC125(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L155
	.loc 1 672 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	je	.L155
	.loc 1 672 0 discriminator 2
	movl	$16, -4(%rbp)
	jmp	.L149
.L155:
	.loc 1 673 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC125(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L149
	.loc 1 673 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	jne	.L149
	.loc 1 673 0 discriminator 2
	movl	$22, -4(%rbp)
.L149:
	.loc 1 674 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC126(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L156
	.loc 1 674 0 is_stmt 0 discriminator 1
	movl	$17, -4(%rbp)
	jmp	.L157
.L156:
	.loc 1 675 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC127(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L158
	.loc 1 675 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	je	.L158
	.loc 1 675 0 discriminator 2
	movl	$18, -4(%rbp)
	jmp	.L157
.L158:
	.loc 1 676 0 is_stmt 1
	movq	16(%rbp), %rax
	addq	$104, %rax
	leaq	.LC127(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L157
	.loc 1 676 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)
	jne	.L157
	.loc 1 676 0 discriminator 2
	movl	$23, -4(%rbp)
.L157:
	.loc 1 678 0 is_stmt 1
	movl	-4(%rbp), %eax
	.loc 1 679 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
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
	.file 10 "./src/../inc/parserFunctions.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1dbf
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
	.uleb128 0x23
	.secrel32	.LASF5
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.long	0x1201
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0x8
	.byte	0x5e
	.long	0x1201
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x5f
	.long	0x1207
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x11d0
	.uleb128 0xe
	.byte	0x8
	.long	0x11dc
	.uleb128 0x25
	.secrel32	.LASF5
	.byte	0x8
	.byte	0x60
	.long	0x11dc
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x136
	.byte	0x8
	.byte	0x66
	.long	0x1345
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
	.byte	0x7d
	.long	0x1218
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x50
	.byte	0x8
	.byte	0x7f
	.long	0x13f9
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x80
	.long	0x1345
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x8
	.byte	0x81
	.long	0x1447
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x8
	.byte	0x82
	.long	0x1201
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0x8
	.byte	0x83
	.long	0x1201
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x8
	.byte	0x84
	.long	0x1201
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x8
	.byte	0x85
	.long	0x144d
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x8
	.byte	0x86
	.long	0x144d
	.byte	0x30
	.uleb128 0xc
	.ascii "expressionList\0"
	.byte	0x8
	.byte	0x87
	.long	0x1453
	.byte	0x38
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x88
	.long	0x144d
	.byte	0x40
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x89
	.long	0x12f
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x8
	.byte	0x8f
	.long	0x1447
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x90
	.long	0xca4
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x91
	.long	0xff0
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0x92
	.long	0x1201
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x8
	.byte	0x93
	.long	0x1465
	.byte	0x78
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x94
	.long	0x1447
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13f9
	.uleb128 0xe
	.byte	0x8
	.long	0x1353
	.uleb128 0xe
	.byte	0x8
	.long	0x120d
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x8
	.byte	0x8a
	.long	0x1353
	.uleb128 0xe
	.byte	0x8
	.long	0x1459
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x8
	.byte	0x95
	.long	0x13f9
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x9
	.byte	0x6
	.long	0x14bf
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x9
	.byte	0x8
	.long	0x14bf
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x9
	.byte	0x9
	.long	0x1465
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x9
	.byte	0xa
	.long	0x1201
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x9
	.byte	0xb
	.long	0x14c5
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x146b
	.uleb128 0xe
	.byte	0x8
	.long	0x1477
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x9
	.byte	0xc
	.long	0x1477
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0xce
	.byte	0xa
	.byte	0x9
	.long	0x1520
	.uleb128 0x24
	.secrel32	.LASF8
	.byte	0xa
	.byte	0xb
	.long	0xca4
	.byte	0
	.uleb128 0xc
	.ascii "tempOp\0"
	.byte	0xa
	.byte	0xc
	.long	0x1520
	.byte	0x64
	.uleb128 0xc
	.ascii "tempOp2\0"
	.byte	0xa
	.byte	0xd
	.long	0x1520
	.byte	0x67
	.uleb128 0xc
	.ascii "value\0"
	.byte	0xa
	.byte	0xe
	.long	0xca4
	.byte	0x6a
	.byte	0
	.uleb128 0x9
	.long	0x175
	.long	0x1530
	.uleb128 0xa
	.long	0x152
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF7
	.byte	0xa
	.byte	0xf
	.long	0x14da
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.long	0x15a5
	.uleb128 0xc
	.ascii "nIsStructMember\0"
	.byte	0xa
	.byte	0x14
	.long	0x12f
	.byte	0
	.uleb128 0xc
	.ascii "nIsUnionMember\0"
	.byte	0xa
	.byte	0x15
	.long	0x12f
	.byte	0x4
	.uleb128 0xc
	.ascii "nIsEnumMember\0"
	.byte	0xa
	.byte	0x16
	.long	0x12f
	.byte	0x8
	.uleb128 0xc
	.ascii "nIsAssertMember\0"
	.byte	0xa
	.byte	0x17
	.long	0x12f
	.byte	0xc
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF9
	.byte	0xa
	.byte	0x18
	.long	0x153b
	.uleb128 0x28
	.ascii "CheckArrayType\0"
	.byte	0x1
	.word	0x28e
	.long	0x12f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1617
	.uleb128 0x29
	.secrel32	.LASF10
	.byte	0x1
	.word	0x28e
	.long	0x1617
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "isPointer\0"
	.byte	0x1
	.word	0x290
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.ascii "arrayType\0"
	.byte	0x1
	.word	0x291
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xcba
	.uleb128 0x2b
	.ascii "ClearFlags\0"
	.byte	0x1
	.word	0x286
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1655
	.uleb128 0x2c
	.ascii "mFlags\0"
	.byte	0x1
	.word	0x286
	.long	0x1655
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x15a5
	.uleb128 0x2d
	.ascii "CheckIfMemberOfStatement\0"
	.byte	0x1
	.word	0x27c
	.long	0x12f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a5
	.uleb128 0x2c
	.ascii "mFlags\0"
	.byte	0x1
	.word	0x27c
	.long	0x15a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.ascii "BuildNewStatement\0"
	.byte	0x1
	.word	0x272
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1730
	.uleb128 0x29
	.secrel32	.LASF10
	.byte	0x1
	.word	0x272
	.long	0x1617
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x272
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x272
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "expr1\0"
	.byte	0x1
	.word	0x276
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.ascii "expr2\0"
	.byte	0x1
	.word	0x277
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF12
	.byte	0x1
	.word	0x278
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x14cb
	.uleb128 0x2e
	.ascii "BuildDeclarationStatement\0"
	.byte	0x1
	.word	0x269
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c7
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x269
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "temp2\0"
	.byte	0x1
	.word	0x269
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x269
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.secrel32	.LASF6
	.byte	0x1
	.word	0x26b
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.secrel32	.LASF13
	.byte	0x1
	.word	0x26c
	.long	0x14bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF12
	.byte	0x1
	.word	0x26d
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.ascii "BuildAssignAndCompareExprStatement\0"
	.byte	0x1
	.word	0x236
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1885
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x236
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "temp2\0"
	.byte	0x1
	.word	0x236
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x236
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.ascii "operation\0"
	.byte	0x1
	.word	0x236
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.secrel32	.LASF14
	.byte	0x1
	.word	0x236
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2f
	.secrel32	.LASF15
	.byte	0x1
	.word	0x238
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF16
	.byte	0x1
	.word	0x239
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.secrel32	.LASF6
	.byte	0x1
	.word	0x23a
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.ascii "BuildDeclarationExprStatement\0"
	.byte	0x1
	.word	0x1ca
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x194c
	.uleb128 0x29
	.secrel32	.LASF17
	.byte	0x1
	.word	0x1ca
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1ca
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x1ca
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.ascii "switchType\0"
	.byte	0x1
	.word	0x1ca
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.secrel32	.LASF14
	.byte	0x1
	.word	0x1ca
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2f
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1cc
	.long	0xff0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.secrel32	.LASF6
	.byte	0x1
	.word	0x22f
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.secrel32	.LASF13
	.byte	0x1
	.word	0x230
	.long	0x14bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.secrel32	.LASF12
	.byte	0x1
	.word	0x231
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.ascii "BuildDoubleExprStatement\0"
	.byte	0x1
	.word	0x1ad
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a11
	.uleb128 0x29
	.secrel32	.LASF10
	.byte	0x1
	.word	0x1ad
	.long	0x1617
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1ad
	.long	0x1730
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x29
	.secrel32	.LASF18
	.byte	0x1
	.word	0x1ad
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.secrel32	.LASF8
	.byte	0x1
	.word	0x1ae
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2a
	.ascii "temp2\0"
	.byte	0x1
	.word	0x1ae
	.long	0xca4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.secrel32	.LASF12
	.byte	0x1
	.word	0x1af
	.long	0x1465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.ascii "identifierExpr\0"
	.byte	0x1
	.word	0x1b7
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2a
	.ascii "typeExpr\0"
	.byte	0x1
	.word	0x1b8
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x2e
	.ascii "BuildSingleExprStatement\0"
	.byte	0x1
	.word	0x189
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a90
	.uleb128 0x29
	.secrel32	.LASF17
	.byte	0x1
	.word	0x189
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF11
	.byte	0x1
	.word	0x189
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.secrel32	.LASF18
	.byte	0x1
	.word	0x189
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.secrel32	.LASF6
	.byte	0x1
	.word	0x18a
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.secrel32	.LASF12
	.byte	0x1
	.word	0x18b
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.ascii "isNumberType\0"
	.byte	0x1
	.word	0x182
	.long	0x12f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1acb
	.uleb128 0x29
	.secrel32	.LASF19
	.byte	0x1
	.word	0x182
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.ascii "isIdentifierType\0"
	.byte	0x1
	.word	0x17b
	.long	0x12f
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0a
	.uleb128 0x29
	.secrel32	.LASF19
	.byte	0x1
	.word	0x17b
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.ascii "checkForReturnOperator\0"
	.byte	0x1
	.byte	0x6
	.long	0x1617
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dbc
	.uleb128 0x31
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x6
	.long	0x1617
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.ascii "tempStack\0"
	.byte	0x1
	.byte	0x6
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.ascii "tempTop\0"
	.byte	0x1
	.byte	0x6
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x6
	.long	0x1730
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.ascii "tempNode\0"
	.byte	0x1
	.byte	0x6
	.long	0x1dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.ascii "operatorUsed\0"
	.byte	0x1
	.byte	0x8
	.long	0x12f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.ascii "expressionListNode\0"
	.byte	0x1
	.byte	0x9
	.long	0x1453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.ascii "checkCurrent\0"
	.byte	0x1
	.byte	0xa
	.long	0x1617
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1c45
	.uleb128 0x35
	.secrel32	.LASF15
	.byte	0x1
	.byte	0x15
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.secrel32	.LASF16
	.byte	0x1
	.byte	0x16
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.secrel32	.LASF6
	.byte	0x1
	.byte	0x17
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x35
	.secrel32	.LASF20
	.byte	0x1
	.byte	0x3f
	.long	0x1465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1cac
	.uleb128 0x35
	.secrel32	.LASF15
	.byte	0x1
	.byte	0x68
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.secrel32	.LASF16
	.byte	0x1
	.byte	0x69
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.ascii "theExprIn\0"
	.byte	0x1
	.byte	0x6a
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x35
	.secrel32	.LASF20
	.byte	0x1
	.byte	0x9a
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1d3d
	.uleb128 0x35
	.secrel32	.LASF15
	.byte	0x1
	.byte	0xaa
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.secrel32	.LASF16
	.byte	0x1
	.byte	0xab
	.long	0x1201
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.ascii "theExprSecond\0"
	.byte	0x1
	.byte	0xac
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x34
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1d1b
	.uleb128 0x35
	.secrel32	.LASF20
	.byte	0x1
	.byte	0xf9
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.secrel32	.LASF20
	.byte	0x1
	.word	0x106
	.long	0x1465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1d99
	.uleb128 0x2f
	.secrel32	.LASF15
	.byte	0x1
	.word	0x114
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.secrel32	.LASF16
	.byte	0x1
	.word	0x115
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.ascii "finalExpr\0"
	.byte	0x1
	.word	0x116
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.secrel32	.LASF20
	.byte	0x1
	.word	0x146
	.long	0x1465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.secrel32	.LASF20
	.byte	0x1
	.word	0x15e
	.long	0x1465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1530
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
	.uleb128 0x2c
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
.LASF0:
	.ascii "_on_exit_args\0"
.LASF1:
	.ascii "parse_state\0"
.LASF6:
	.ascii "theExpr\0"
.LASF2:
	.ascii "next\0"
.LASF13:
	.ascii "theDeclaration\0"
.LASF17:
	.ascii "currentValue\0"
.LASF12:
	.ascii "theStmt\0"
.LASF5:
	.ascii "expr_list\0"
.LASF9:
	.ascii "memberFlags\0"
.LASF20:
	.ascii "ret_stmt\0"
.LASF7:
	.ascii "tempVariables\0"
.LASF11:
	.ascii "commandNode\0"
.LASF18:
	.ascii "statement\0"
.LASF14:
	.ascii "typeOfMember\0"
.LASF8:
	.ascii "temp\0"
.LASF3:
	.ascii "theType\0"
.LASF16:
	.ascii "rightExpr\0"
.LASF4:
	.ascii "memberOf\0"
.LASF15:
	.ascii "leftExpr\0"
.LASF19:
	.ascii "currentType\0"
.LASF10:
	.ascii "current\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	pop;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	expr_create;	.scl	2;	.type	32;	.endef
	.def	push_expressionList;	.scl	2;	.type	32;	.endef
	.def	push;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	stmt_create;	.scl	2;	.type	32;	.endef
	.def	push_commandList;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	type_create;	.scl	2;	.type	32;	.endef
	.def	decl_create;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
