	.file	"command.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	push_commandList
	.def	push_commandList;	.scl	2;	.type	32;	.endef
	.seh_proc	push_commandList
push_commandList:
.LFB9:
	.file 1 "./src/command.c"
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
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 8 0
	jmp	.L2
.L3:
	.loc 1 9 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L2:
	.loc 1 8 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L3
	.loc 1 11 0
	movl	$32, %ecx
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 12 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 13 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 14 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 15 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 24(%rax)
	.loc 1 16 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "STMT_DECL\0"
.LC1:
	.ascii "name: %s\12\0"
.LC2:
	.ascii "\11\11value: %s\12\0"
.LC3:
	.ascii "\11TYPE_VOID\0"
.LC4:
	.ascii "\11TYPE_BOOLEAN\0"
.LC5:
	.ascii "\11TYPE_CHARACTER\0"
.LC6:
	.ascii "\11TYPE_INTEGER\0"
.LC7:
	.ascii "\11TYPE_STRING\0"
.LC8:
	.ascii "\11TYPE_FLOAT\0"
.LC9:
	.ascii "\11TYPE_FLOAT_POINTER\0"
.LC10:
	.ascii "\11TYPE_INT_POINTER\0"
.LC11:
	.ascii "\11TYPE_CHAR_POINTER\0"
.LC12:
	.ascii "\11TYPE_STRING_POINTER\0"
.LC13:
	.ascii "\11TYPE_VOID_POINTER\0"
.LC14:
	.ascii "\11TYPE_HEXNUM\0"
.LC15:
	.ascii "\11TYPE_STRUCT\0"
.LC16:
	.ascii "\11TYPE_ENUM\0"
.LC17:
	.ascii "\11TYPE_UNION\0"
.LC18:
	.ascii "\11TYPE_INTEGER_ARRAY\0"
.LC19:
	.ascii "\11\11size: %s\12\0"
.LC20:
	.ascii "\11TYPE_STRING_ARRAY\0"
.LC21:
	.ascii "\11TYPE_FLOAT_ARRAY\0"
.LC22:
	.ascii "\11\11member of struct\0"
.LC23:
	.ascii "\11\11member of union\0"
.LC24:
	.ascii "\11\11member of enum\0"
.LC25:
	.ascii "\11\11member of assert\0"
.LC26:
	.ascii "STMT_IF_ELSE\0"
.LC27:
	.ascii "STMT_FOR\0"
.LC28:
	.ascii "STMT_PRINT\0"
.LC29:
	.ascii "\11expr: %s\12\0"
.LC30:
	.ascii "STMT_IMPORT\0"
.LC31:
	.ascii "STMT_LOAD\0"
.LC32:
	.ascii "STMT_DELETE\0"
.LC33:
	.ascii "STMT_DEFER\0"
.LC34:
	.ascii "STMT_ASSERT\0"
.LC35:
	.ascii "STMT_RETURN\0"
.LC36:
	.ascii "\11EXPR_ADD\0"
.LC37:
	.ascii "\11\11left : %s\12\0"
.LC38:
	.ascii "\11\11right : %s\12\0"
.LC39:
	.ascii "\11EXPR_SUB\0"
.LC40:
	.ascii "\11EXPR_MUL\0"
.LC41:
	.ascii "\11EXPR_DIV\0"
.LC42:
	.ascii "\11EXPR_BIGGER_CMP\0"
.LC43:
	.ascii "\11EXPR_BIGGEROREQ_CMP\0"
.LC44:
	.ascii "\11EXPR_SMALLER_CMP\0"
.LC45:
	.ascii "\11EXPR_SMALLEROREQ_CMP\0"
.LC46:
	.ascii "\11EXPR_EQUAL_CMP\0"
	.align 8
.LC47:
	.ascii "Just a single expression to print\0"
.LC48:
	.ascii "\11EXPR_STRING_LITERAL\0"
.LC49:
	.ascii "\11\11%s\12\0"
.LC50:
	.ascii "STMT_BREAK\0"
.LC51:
	.ascii "STMT_CONTINUE\0"
.LC52:
	.ascii "STMT_NEW\0"
.LC53:
	.ascii "\11type: %s\12\0"
.LC54:
	.ascii "STMT_SLEEP\0"
.LC55:
	.ascii "STMT_MAIN\0"
.LC56:
	.ascii "STMT_SCAN\0"
.LC57:
	.ascii "STMT_CAST\0"
.LC58:
	.ascii "\11type to convert to : %s\12\0"
.LC59:
	.ascii "STMT_WHILE\0"
.LC60:
	.ascii "STMT_ARRAYDADD\0"
.LC61:
	.ascii "\11the array : %s\12\0"
.LC62:
	.ascii "\11element to be added : %s\12\0"
.LC63:
	.ascii "STMT_EACH\0"
.LC64:
	.ascii "EXPR_ADD_ASSIGNMENT\0"
.LC65:
	.ascii "\11left : %s\12\0"
.LC66:
	.ascii "\11right : %s\12\0"
.LC67:
	.ascii "EXPR_SUB_ASSIGNMENT\0"
.LC68:
	.ascii "EXPR_MUL_ASSIGNMENT\0"
.LC69:
	.ascii "EXPR_DIV_ASSIGNMENT\0"
.LC70:
	.ascii "EXPR_INCREMENT\0"
.LC71:
	.ascii "\11identifier : %s\12\0"
.LC72:
	.ascii "EXPR_DECREMENT\0"
.LC73:
	.ascii "EXPR_BIGGER_CMP\0"
.LC74:
	.ascii "EXPR_BIGGEROREQ_CMP\0"
.LC75:
	.ascii "EXPR_SMALLER_CMP\0"
.LC76:
	.ascii "EXPR_SMALLEROREQ_CMP\0"
.LC77:
	.ascii "EXPR_EQUAL_CMP\0"
	.text
	.globl	print_commandList
	.def	print_commandList;	.scl	2;	.type	32;	.endef
	.seh_proc	print_commandList
print_commandList:
.LFB10:
	.loc 1 21 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 22 0
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 23 0
	movl	$0, -40(%rbp)
	.loc 1 27 0
	jmp	.L5
.L98:
	.loc 1 28 0
	addl	$1, -40(%rbp)
	.loc 1 30 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	.loc 1 33 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7
	.loc 1 34 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 36 0
	cmpl	$0, -32(%rbp)
	jne	.L8
	.loc 1 37 0
	leaq	.LC0(%rip), %rcx
	call	puts
	.loc 1 38 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	.loc 1 39 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	.loc 1 40 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L9:
	.loc 1 43 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 45 0
	cmpl	$0, -20(%rbp)
	jne	.L11
	.loc 1 46 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 47 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 48 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L11:
	.loc 1 50 0
	cmpl	$1, -20(%rbp)
	jne	.L13
	.loc 1 51 0
	leaq	.LC4(%rip), %rcx
	call	puts
	.loc 1 52 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 53 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L13:
	.loc 1 55 0
	cmpl	$2, -20(%rbp)
	jne	.L15
	.loc 1 56 0
	leaq	.LC5(%rip), %rcx
	call	puts
	.loc 1 57 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 58 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L15:
	.loc 1 60 0
	cmpl	$3, -20(%rbp)
	jne	.L17
	.loc 1 61 0
	leaq	.LC6(%rip), %rcx
	call	puts
	.loc 1 62 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 63 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L17:
	.loc 1 65 0
	cmpl	$4, -20(%rbp)
	jne	.L19
	.loc 1 66 0
	leaq	.LC7(%rip), %rcx
	call	puts
	.loc 1 67 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 68 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L19:
	.loc 1 70 0
	cmpl	$5, -20(%rbp)
	jne	.L21
	.loc 1 71 0
	leaq	.LC8(%rip), %rcx
	call	puts
	.loc 1 72 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 73 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L21:
	.loc 1 75 0
	cmpl	$6, -20(%rbp)
	jne	.L23
	.loc 1 76 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 77 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 78 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L23:
	.loc 1 80 0
	cmpl	$7, -20(%rbp)
	jne	.L25
	.loc 1 81 0
	leaq	.LC10(%rip), %rcx
	call	puts
	.loc 1 82 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 83 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L25:
	.loc 1 85 0
	cmpl	$8, -20(%rbp)
	jne	.L27
	.loc 1 86 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 87 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 88 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L27:
	.loc 1 90 0
	cmpl	$9, -20(%rbp)
	jne	.L29
	.loc 1 91 0
	leaq	.LC12(%rip), %rcx
	call	puts
	.loc 1 92 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 93 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L29:
	.loc 1 95 0
	cmpl	$10, -20(%rbp)
	jne	.L31
	.loc 1 96 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 97 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 98 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L31:
	.loc 1 100 0
	cmpl	$12, -20(%rbp)
	jne	.L33
	.loc 1 101 0
	leaq	.LC14(%rip), %rcx
	call	puts
	.loc 1 102 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 103 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L10
.L33:
	.loc 1 105 0
	cmpl	$13, -20(%rbp)
	jne	.L35
	.loc 1 106 0
	leaq	.LC15(%rip), %rcx
	call	puts
	jmp	.L10
.L35:
	.loc 1 108 0
	cmpl	$14, -20(%rbp)
	jne	.L36
	.loc 1 109 0
	leaq	.LC16(%rip), %rcx
	call	puts
	jmp	.L10
.L36:
	.loc 1 111 0
	cmpl	$15, -20(%rbp)
	jne	.L37
	.loc 1 112 0
	leaq	.LC17(%rip), %rcx
	call	puts
	jmp	.L10
.L37:
	.loc 1 114 0
	cmpl	$15, -20(%rbp)
	jne	.L38
	.loc 1 115 0
	leaq	.LC17(%rip), %rcx
	call	puts
	jmp	.L10
.L38:
	.loc 1 117 0
	cmpl	$18, -20(%rbp)
	jne	.L39
	.loc 1 118 0
	leaq	.LC18(%rip), %rcx
	call	puts
	.loc 1 119 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 120 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L39:
	.loc 1 122 0
	cmpl	$19, -20(%rbp)
	jne	.L41
	.loc 1 123 0
	leaq	.LC20(%rip), %rcx
	call	puts
	.loc 1 124 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 125 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L41:
	.loc 1 127 0
	cmpl	$20, -20(%rbp)
	jne	.L10
	.loc 1 128 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 129 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 130 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
.L10:
	.loc 1 134 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	72(%rax), %eax
	cmpl	$-1, %eax
	je	.L6
	.loc 1 136 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	72(%rax), %eax
	cmpl	$1, %eax
	jne	.L44
	.loc 1 136 0 is_stmt 0 discriminator 1
	leaq	.LC22(%rip), %rcx
	call	puts
	jmp	.L6
.L44:
	.loc 1 137 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	72(%rax), %eax
	cmpl	$2, %eax
	jne	.L45
	.loc 1 137 0 is_stmt 0 discriminator 1
	leaq	.LC23(%rip), %rcx
	call	puts
	jmp	.L6
.L45:
	.loc 1 138 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	72(%rax), %eax
	cmpl	$3, %eax
	jne	.L46
	.loc 1 138 0 is_stmt 0 discriminator 1
	leaq	.LC24(%rip), %rcx
	call	puts
	jmp	.L6
.L46:
	.loc 1 139 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	72(%rax), %eax
	cmpl	$4, %eax
	jne	.L6
	.loc 1 139 0 is_stmt 0 discriminator 1
	leaq	.LC25(%rip), %rcx
	call	puts
	jmp	.L6
.L8:
	.loc 1 143 0 is_stmt 1
	cmpl	$2, -32(%rbp)
	jne	.L47
	.loc 1 144 0
	leaq	.LC26(%rip), %rcx
	call	puts
	jmp	.L6
.L47:
	.loc 1 146 0
	cmpl	$3, -32(%rbp)
	jne	.L48
	.loc 1 147 0
	leaq	.LC27(%rip), %rcx
	call	puts
	jmp	.L6
.L48:
	.loc 1 149 0
	cmpl	$4, -32(%rbp)
	jne	.L49
	.loc 1 150 0
	leaq	.LC28(%rip), %rcx
	call	puts
	.loc 1 151 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L49:
	.loc 1 153 0
	cmpl	$5, -32(%rbp)
	jne	.L50
	.loc 1 154 0
	leaq	.LC30(%rip), %rcx
	call	puts
	.loc 1 155 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L50:
	.loc 1 157 0
	cmpl	$6, -32(%rbp)
	jne	.L51
	.loc 1 158 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 159 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L51:
	.loc 1 161 0
	cmpl	$7, -32(%rbp)
	jne	.L52
	.loc 1 162 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 163 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L52:
	.loc 1 165 0
	cmpl	$8, -32(%rbp)
	jne	.L53
	.loc 1 166 0
	leaq	.LC33(%rip), %rcx
	call	puts
	jmp	.L6
.L53:
	.loc 1 168 0
	cmpl	$9, -32(%rbp)
	jne	.L54
	.loc 1 169 0
	leaq	.LC34(%rip), %rcx
	call	puts
	jmp	.L6
.L54:
	.loc 1 171 0
	cmpl	$10, -32(%rbp)
	jne	.L55
	.loc 1 172 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 173 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	.loc 1 174 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	.loc 1 175 0
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 176 0
	jmp	.L5
.L57:
.LBB2:
	.loc 1 179 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 181 0
	jmp	.L58
.L68:
	.loc 1 182 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L59
.LBB3:
	.loc 1 183 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 184 0
	cmpl	$0, -24(%rbp)
	jne	.L60
	.loc 1 185 0
	leaq	.LC36(%rip), %rcx
	call	puts
	.loc 1 186 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 187 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L60:
	.loc 1 189 0
	cmpl	$1, -24(%rbp)
	jne	.L61
	.loc 1 190 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 191 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 192 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L61:
	.loc 1 194 0
	cmpl	$2, -24(%rbp)
	jne	.L62
	.loc 1 195 0
	leaq	.LC40(%rip), %rcx
	call	puts
	.loc 1 196 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 197 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L62:
	.loc 1 199 0
	cmpl	$3, -24(%rbp)
	jne	.L63
	.loc 1 200 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 201 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 202 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L63:
	.loc 1 204 0
	cmpl	$13, -24(%rbp)
	jne	.L64
	.loc 1 205 0
	leaq	.LC42(%rip), %rcx
	call	puts
	.loc 1 206 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 207 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L64:
	.loc 1 209 0
	cmpl	$14, -24(%rbp)
	jne	.L65
	.loc 1 210 0
	leaq	.LC43(%rip), %rcx
	call	puts
	.loc 1 211 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 212 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L65:
	.loc 1 214 0
	cmpl	$15, -24(%rbp)
	jne	.L66
	.loc 1 215 0
	leaq	.LC44(%rip), %rcx
	call	puts
	.loc 1 216 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 217 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L66:
	.loc 1 219 0
	cmpl	$16, -24(%rbp)
	jne	.L67
	.loc 1 220 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 221 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 222 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L59
.L67:
	.loc 1 224 0
	cmpl	$17, -24(%rbp)
	jne	.L59
	.loc 1 225 0
	leaq	.LC46(%rip), %rcx
	call	puts
	.loc 1 226 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 227 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
.L59:
.LBE3:
	.loc 1 230 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L58:
	.loc 1 181 0
	cmpq	$0, -8(%rbp)
	jne	.L68
	jmp	.L6
.L56:
.LBE2:
.LBB4:
	.loc 1 235 0
	leaq	.LC47(%rip), %rcx
	call	puts
	.loc 1 236 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 237 0
	cmpl	$0, -28(%rbp)
	jne	.L70
	.loc 1 238 0
	leaq	.LC36(%rip), %rcx
	call	puts
	.loc 1 239 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 240 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L6
.L70:
	.loc 1 242 0
	cmpl	$1, -28(%rbp)
	jne	.L71
	.loc 1 243 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 244 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 245 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L6
.L71:
	.loc 1 247 0
	cmpl	$2, -28(%rbp)
	jne	.L72
	.loc 1 248 0
	leaq	.LC40(%rip), %rcx
	call	puts
	.loc 1 249 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 250 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L6
.L72:
	.loc 1 252 0
	cmpl	$3, -28(%rbp)
	jne	.L73
	.loc 1 253 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 254 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rcx
	call	printf
	.loc 1 255 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rcx
	call	printf
	jmp	.L6
.L73:
	.loc 1 257 0
	cmpl	$12, -28(%rbp)
	jne	.L6
	.loc 1 258 0
	leaq	.LC48(%rip), %rcx
	call	puts
	.loc 1 259 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC49(%rip), %rcx
	call	printf
	jmp	.L6
.L55:
.LBE4:
	.loc 1 266 0
	cmpl	$11, -32(%rbp)
	jne	.L74
	.loc 1 267 0
	leaq	.LC50(%rip), %rcx
	call	puts
	jmp	.L6
.L74:
	.loc 1 269 0
	cmpl	$12, -32(%rbp)
	jne	.L75
	.loc 1 270 0
	leaq	.LC51(%rip), %rcx
	call	puts
	jmp	.L6
.L75:
	.loc 1 272 0
	cmpl	$14, -32(%rbp)
	jne	.L76
	.loc 1 273 0
	leaq	.LC52(%rip), %rcx
	call	puts
	.loc 1 274 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	.loc 1 275 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC53(%rip), %rcx
	call	printf
	jmp	.L6
.L76:
	.loc 1 277 0
	cmpl	$15, -32(%rbp)
	jne	.L77
	.loc 1 278 0
	leaq	.LC54(%rip), %rcx
	call	puts
	.loc 1 279 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L77:
	.loc 1 281 0
	cmpl	$16, -32(%rbp)
	jne	.L78
	.loc 1 282 0
	leaq	.LC55(%rip), %rcx
	call	puts
	jmp	.L6
.L78:
	.loc 1 284 0
	cmpl	$17, -32(%rbp)
	jne	.L79
	.loc 1 285 0
	leaq	.LC56(%rip), %rcx
	call	puts
	.loc 1 286 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	jmp	.L6
.L79:
	.loc 1 288 0
	cmpl	$18, -32(%rbp)
	jne	.L80
	.loc 1 289 0
	leaq	.LC57(%rip), %rcx
	call	puts
	.loc 1 290 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rcx
	call	printf
	.loc 1 291 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rcx
	call	printf
	jmp	.L6
.L80:
	.loc 1 293 0
	cmpl	$19, -32(%rbp)
	jne	.L81
	.loc 1 294 0
	leaq	.LC59(%rip), %rcx
	call	puts
	jmp	.L6
.L81:
	.loc 1 296 0
	cmpl	$20, -32(%rbp)
	jne	.L82
	.loc 1 297 0
	leaq	.LC60(%rip), %rcx
	call	puts
	.loc 1 298 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC61(%rip), %rcx
	call	printf
	.loc 1 299 0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC62(%rip), %rcx
	call	printf
	jmp	.L6
.L82:
	.loc 1 301 0
	cmpl	$21, -32(%rbp)
	jne	.L6
	.loc 1 302 0
	leaq	.LC63(%rip), %rcx
	call	puts
	jmp	.L6
.L7:
	.loc 1 308 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L6
.LBB5:
	.loc 1 309 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 1 310 0
	cmpl	$4, -36(%rbp)
	jne	.L83
	.loc 1 311 0
	leaq	.LC64(%rip), %rcx
	call	puts
	.loc 1 312 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 313 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L83:
	.loc 1 315 0
	cmpl	$5, -36(%rbp)
	jne	.L85
	.loc 1 316 0
	leaq	.LC67(%rip), %rcx
	call	puts
	.loc 1 317 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 318 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L85:
	.loc 1 320 0
	cmpl	$6, -36(%rbp)
	jne	.L86
	.loc 1 321 0
	leaq	.LC68(%rip), %rcx
	call	puts
	.loc 1 322 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 323 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L86:
	.loc 1 325 0
	cmpl	$7, -36(%rbp)
	jne	.L87
	.loc 1 326 0
	leaq	.LC69(%rip), %rcx
	call	puts
	.loc 1 327 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 328 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L87:
	.loc 1 330 0
	cmpl	$8, -36(%rbp)
	jne	.L88
	.loc 1 331 0
	leaq	.LC70(%rip), %rcx
	call	puts
	.loc 1 332 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC71(%rip), %rcx
	call	printf
	jmp	.L84
.L88:
	.loc 1 334 0
	cmpl	$9, -36(%rbp)
	jne	.L89
	.loc 1 335 0
	leaq	.LC72(%rip), %rcx
	call	puts
	.loc 1 336 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC71(%rip), %rcx
	call	printf
	jmp	.L84
.L89:
	.loc 1 338 0
	cmpl	$11, -36(%rbp)
	jne	.L90
	.loc 1 339 0
	leaq	.LC73(%rip), %rcx
	call	puts
	.loc 1 340 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 341 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L90:
	.loc 1 343 0
	cmpl	$12, -36(%rbp)
	jne	.L91
	.loc 1 344 0
	leaq	.LC74(%rip), %rcx
	call	puts
	.loc 1 345 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 346 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L91:
	.loc 1 348 0
	cmpl	$13, -36(%rbp)
	jne	.L92
	.loc 1 349 0
	leaq	.LC75(%rip), %rcx
	call	puts
	.loc 1 350 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 351 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L92:
	.loc 1 353 0
	cmpl	$14, -36(%rbp)
	jne	.L93
	.loc 1 354 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 355 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 356 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L84
.L93:
	.loc 1 358 0
	cmpl	$15, -36(%rbp)
	jne	.L84
	.loc 1 359 0
	leaq	.LC77(%rip), %rcx
	call	puts
	.loc 1 360 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 361 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
.L84:
	.loc 1 366 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$-1, %eax
	je	.L6
	.loc 1 368 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L95
	.loc 1 368 0 is_stmt 0 discriminator 1
	leaq	.LC22(%rip), %rcx
	call	puts
	jmp	.L6
.L95:
	.loc 1 369 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L96
	.loc 1 369 0 is_stmt 0 discriminator 1
	leaq	.LC23(%rip), %rcx
	call	puts
	jmp	.L6
.L96:
	.loc 1 370 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$3, %eax
	jne	.L97
	.loc 1 370 0 is_stmt 0 discriminator 1
	leaq	.LC24(%rip), %rcx
	call	puts
	jmp	.L6
.L97:
	.loc 1 371 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$4, %eax
	jne	.L6
	.loc 1 371 0 is_stmt 0 discriminator 1
	leaq	.LC25(%rip), %rcx
	call	puts
.L6:
.LBE5:
	.loc 1 378 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L5:
	.loc 1 27 0
	cmpq	$0, -16(%rbp)
	jne	.L98
	.loc 1 380 0
	nop
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/7.4.0/include/stddef.h"
	.file 3 "/usr/include/sys/lock.h"
	.file 4 "/usr/include/sys/_types.h"
	.file 5 "/usr/include/sys/reent.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "./inc/ast.h"
	.file 8 "./inc/command.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x161a
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/command.c\0"
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
	.long	0x14a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x16d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x19a
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x17a
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x13e
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x19c
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x13e
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x12e
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x20f
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1dc
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x20f
	.byte	0
	.uleb128 0x9
	.long	0xf3
	.long	0x21f
	.uleb128 0xa
	.long	0x14a
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x248
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x127
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1eb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x21f
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x18b
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x12e
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2d9
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2d9
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x127
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x127
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x127
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x127
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2df
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x279
	.uleb128 0x9
	.long	0x26a
	.long	0x2ef
	.uleb128 0xa
	.long	0x14a
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x39d
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x127
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x127
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x127
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x127
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x127
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x127
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x127
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x127
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x127
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3f3
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3f3
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3f3
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x26a
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x26a
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x19a
	.long	0x403
	.uleb128 0xa
	.long	0x14a
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x44a
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x44a
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x127
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x450
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x39d
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x403
	.uleb128 0x9
	.long	0x460
	.long	0x460
	.uleb128 0xa
	.long	0x14a
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x466
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x493
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x493
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x127
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf3
	.uleb128 0x14
	.long	0x1cc
	.long	0x4b7
	.uleb128 0x15
	.long	0x4b7
	.uleb128 0x15
	.long	0x19a
	.uleb128 0x15
	.long	0x661
	.uleb128 0x15
	.long	0x15f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4c2
	.uleb128 0x4
	.long	0x4b7
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x661
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x127
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8ec
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8ec
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8ec
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x127
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbae
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x127
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbca
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x127
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbdb
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2d9
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x127
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2d9
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbe1
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x127
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x661
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb84
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x44a
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x403
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbf2
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8a8
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xbfe
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x16d
	.uleb128 0xe
	.byte	0x8
	.long	0x499
	.uleb128 0x14
	.long	0x1cc
	.long	0x68b
	.uleb128 0x15
	.long	0x4b7
	.uleb128 0x15
	.long	0x19a
	.uleb128 0x15
	.long	0x68b
	.uleb128 0x15
	.long	0x15f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x175
	.uleb128 0xe
	.byte	0x8
	.long	0x66d
	.uleb128 0x14
	.long	0x1ac
	.long	0x6b5
	.uleb128 0x15
	.long	0x4b7
	.uleb128 0x15
	.long	0x19a
	.uleb128 0x15
	.long	0x1ac
	.uleb128 0x15
	.long	0x127
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x697
	.uleb128 0x14
	.long	0x127
	.long	0x6cf
	.uleb128 0x15
	.long	0x4b7
	.uleb128 0x15
	.long	0x19a
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6bb
	.uleb128 0x9
	.long	0xf3
	.long	0x6e5
	.uleb128 0xa
	.long	0x14a
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xf3
	.long	0x6f5
	.uleb128 0xa
	.long	0x14a
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x875
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x493
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x127
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x127
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x104
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x104
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x467
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x127
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4b7
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x19a
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x667
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x691
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b5
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6cf
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x467
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x493
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x127
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d5
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e5
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x467
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x127
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x127
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x19c
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x893
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x25a
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x248
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1bb
	.long	0x893
	.uleb128 0x15
	.long	0x4b7
	.uleb128 0x15
	.long	0x19a
	.uleb128 0x15
	.long	0x1bb
	.uleb128 0x15
	.long	0x127
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x875
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f5
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8e6
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8e6
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x127
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8ec
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8a8
	.uleb128 0xe
	.byte	0x8
	.long	0x899
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x930
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x930
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x930
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x111
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x111
	.long	0x940
	.uleb128 0xa
	.long	0x14a
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaed
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x12e
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x661
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaed
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2ef
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x127
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xafd
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8f2
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x248
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x248
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x248
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb17
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb27
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x127
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x248
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x248
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x248
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x248
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x248
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x127
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x16d
	.long	0xafd
	.uleb128 0xa
	.long	0x14a
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x16d
	.long	0xb27
	.uleb128 0xa
	.long	0x14a
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x16d
	.long	0xb37
	.uleb128 0xa
	.long	0x14a
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb64
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb64
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb74
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x493
	.long	0xb74
	.uleb128 0xa
	.long	0x14a
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0xb84
	.uleb128 0xa
	.long	0x14a
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbae
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x940
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb37
	.byte	0
	.uleb128 0x9
	.long	0x16d
	.long	0xbbe
	.uleb128 0xa
	.long	0x14a
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbbe
	.uleb128 0x1f
	.long	0xbdb
	.uleb128 0x15
	.long	0x4b7
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbd0
	.uleb128 0xe
	.byte	0x8
	.long	0x2d9
	.uleb128 0x1f
	.long	0xbf2
	.uleb128 0x15
	.long	0x127
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbf8
	.uleb128 0xe
	.byte	0x8
	.long	0xbe7
	.uleb128 0x9
	.long	0x899
	.long	0xc0e
	.uleb128 0xa
	.long	0x14a
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4b7
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4bd
	.uleb128 0x9
	.long	0x175
	.long	0xc48
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc3d
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc48
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12e
	.byte	0x7
	.byte	0x9
	.long	0xedc
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
	.ascii "TYPE_INTEGER_ARRAY\0"
	.byte	0x12
	.uleb128 0x24
	.ascii "TYPE_STRING_ARRAY\0"
	.byte	0x13
	.uleb128 0x24
	.ascii "TYPE_FLOAT_ARRAY\0"
	.byte	0x14
	.uleb128 0x24
	.ascii "TYPE_STRUCT_ARRAY\0"
	.byte	0x15
	.uleb128 0x24
	.ascii "TYPE_ENUM_ARRAY\0"
	.byte	0x16
	.uleb128 0x24
	.ascii "TYPE_UNION_ARRAY\0"
	.byte	0x17
	.uleb128 0x24
	.ascii "TYPE_FLOAT_POINTER_ARRAY\0"
	.byte	0x18
	.uleb128 0x24
	.ascii "TYPE_INT_POINTER_ARRAY\0"
	.byte	0x19
	.uleb128 0x24
	.ascii "TYPE_CHAR_POINTER_ARRAY\0"
	.byte	0x1a
	.uleb128 0x24
	.ascii "TYPE_STRING_POINTER_ARRAY\0"
	.byte	0x1b
	.uleb128 0x24
	.ascii "TYPE_VOID_POINTER_ARRAY\0"
	.byte	0x1c
	.uleb128 0x24
	.ascii "TYPE_STRUCT_POINTER_ARRAY\0"
	.byte	0x1d
	.uleb128 0x24
	.ascii "TYPE_ENUM_POINTER_ARRAY\0"
	.byte	0x1e
	.uleb128 0x24
	.ascii "TYPE_UNION_POINTER_ARRAY\0"
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.ascii "type_t\0"
	.byte	0x7
	.byte	0x2a
	.long	0xc5c
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x7
	.byte	0x2c
	.long	0xf24
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x2d
	.long	0xedc
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x7
	.byte	0x2e
	.long	0xf24
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x7
	.byte	0x2f
	.long	0xf68
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xeea
	.uleb128 0xd
	.ascii "param_list\0"
	.byte	0x18
	.byte	0x7
	.byte	0x33
	.long	0xf68
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x34
	.long	0x661
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x35
	.long	0xf7a
	.byte	0x8
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x36
	.long	0xf68
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf2a
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x7
	.byte	0x30
	.long	0xeea
	.uleb128 0xe
	.byte	0x8
	.long	0xf6e
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12e
	.byte	0x7
	.byte	0x3d
	.long	0x10ad
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
	.byte	0x4e
	.long	0xf80
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x7
	.byte	0x50
	.long	0x1154
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x51
	.long	0x10ad
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x7
	.byte	0x52
	.long	0x1154
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x7
	.byte	0x53
	.long	0x1154
	.byte	0x10
	.uleb128 0xc
	.ascii "string_literal\0"
	.byte	0x7
	.byte	0x54
	.long	0x661
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x7
	.byte	0x55
	.long	0x661
	.byte	0x20
	.uleb128 0xc
	.ascii "integer_value\0"
	.byte	0x7
	.byte	0x56
	.long	0x127
	.byte	0x28
	.uleb128 0xc
	.ascii "character_value\0"
	.byte	0x7
	.byte	0x57
	.long	0x16d
	.byte	0x2c
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x58
	.long	0x127
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x10bb
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x7
	.byte	0x59
	.long	0x10bb
	.uleb128 0x26
	.secrel32	.LASF2
	.byte	0x10
	.byte	0x7
	.byte	0x5b
	.long	0x1190
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x7
	.byte	0x5d
	.long	0x1190
	.byte	0
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x5e
	.long	0x1196
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x115a
	.uleb128 0xe
	.byte	0x8
	.long	0x1166
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0x7
	.byte	0x5f
	.long	0x1166
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12e
	.byte	0x7
	.byte	0x65
	.long	0x12d4
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
	.byte	0x7c
	.long	0x11a7
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x50
	.byte	0x7
	.byte	0x7e
	.long	0x138d
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x7f
	.long	0x12d4
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x7
	.byte	0x80
	.long	0x13e0
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x7
	.byte	0x81
	.long	0x1190
	.byte	0x10
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x7
	.byte	0x82
	.long	0x1190
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x7
	.byte	0x83
	.long	0x1190
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x7
	.byte	0x84
	.long	0x13e6
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x7
	.byte	0x85
	.long	0x13e6
	.byte	0x30
	.uleb128 0xc
	.ascii "expressionList\0"
	.byte	0x7
	.byte	0x86
	.long	0x13ec
	.byte	0x38
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x87
	.long	0x13e6
	.byte	0x40
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x88
	.long	0x127
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x7
	.byte	0x8e
	.long	0x13e0
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x8f
	.long	0x13fe
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x90
	.long	0xf7a
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x7
	.byte	0x91
	.long	0x1190
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x7
	.byte	0x92
	.long	0x140e
	.byte	0x78
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x93
	.long	0x13e0
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x138d
	.uleb128 0xe
	.byte	0x8
	.long	0x12e2
	.uleb128 0xe
	.byte	0x8
	.long	0x119c
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x7
	.byte	0x89
	.long	0x12e2
	.uleb128 0x9
	.long	0x16d
	.long	0x140e
	.uleb128 0xa
	.long	0x14a
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13f2
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x7
	.byte	0x94
	.long	0x138d
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x8
	.byte	0x6
	.long	0x1469
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x8
	.byte	0x8
	.long	0x1469
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x8
	.byte	0x9
	.long	0x140e
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x8
	.byte	0xa
	.long	0x1190
	.byte	0x10
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0xb
	.long	0x146f
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1414
	.uleb128 0xe
	.byte	0x8
	.long	0x1420
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x8
	.byte	0xc
	.long	0x1420
	.uleb128 0x28
	.ascii "print_commandList\0"
	.byte	0x1
	.byte	0x15
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x159f
	.uleb128 0x29
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x15
	.long	0x159f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "current\0"
	.byte	0x1
	.byte	0x16
	.long	0x159f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.ascii "counter\0"
	.byte	0x1
	.byte	0x17
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.ascii "value\0"
	.byte	0x1
	.byte	0x18
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.ascii "temp_type\0"
	.byte	0x1
	.byte	0x19
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1555
	.uleb128 0x2a
	.ascii "currentList\0"
	.byte	0x1
	.byte	0xb3
	.long	0x13ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.ascii "ret_val\0"
	.byte	0x1
	.byte	0xb7
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x157d
	.uleb128 0x2a
	.ascii "ret_val\0"
	.byte	0x1
	.byte	0xec
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.ascii "val\0"
	.byte	0x1
	.word	0x135
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1475
	.uleb128 0x2e
	.ascii "push_commandList\0"
	.byte	0x1
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.secrel32	.LASF3
	.byte	0x1
	.byte	0x6
	.long	0x159f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.ascii "aDecl\0"
	.byte	0x1
	.byte	0x6
	.long	0x1469
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.ascii "aStmt\0"
	.byte	0x1
	.byte	0x6
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.ascii "anExpr\0"
	.byte	0x1
	.byte	0x6
	.long	0x1190
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.ascii "current\0"
	.byte	0x1
	.byte	0x7
	.long	0x159f
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.ascii "commandNode\0"
.LASF1:
	.ascii "memberOf\0"
.LASF0:
	.ascii "_on_exit_args\0"
.LASF2:
	.ascii "expr_list\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
