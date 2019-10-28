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
	.ascii "\11TYPE_VOID_ARRAY\0"
.LC19:
	.ascii "\11\11size: %s\12\0"
.LC20:
	.ascii "\11TYPE_BOOLEAN_ARRAY\0"
.LC21:
	.ascii "\11TYPE_CHAR_ARRAY\0"
.LC22:
	.ascii "\11TYPE_INTEGER_ARRAY\0"
.LC23:
	.ascii "\11TYPE_STRING_ARRAY\0"
.LC24:
	.ascii "\11TYPE_FLOAT_ARRAY\0"
.LC25:
	.ascii "\11TYPE_STRUCT_ARRAY\0"
.LC26:
	.ascii "\11TYPE_ENUM_ARRAY\0"
.LC27:
	.ascii "\11TYPE_UNION_ARRAY\0"
.LC28:
	.ascii "\11TYPE_FLOAT_POINTER_ARRAY\0"
.LC29:
	.ascii "\11TYPE_INT_POINTER_ARRAY\0"
.LC30:
	.ascii "\11TYPE_CHAR_POINTER_ARRAY\0"
.LC31:
	.ascii "\11TYPE_STRING_POINTER_ARRAY\0"
.LC32:
	.ascii "\11TYPE_VOID_POINTER_ARRAY\0"
.LC33:
	.ascii "\11TYPE_STRUCT_POINTER_ARRAY\0"
.LC34:
	.ascii "\11TYPE_ENUM_POINTER_ARRAY\0"
.LC35:
	.ascii "\11TYPE_UNION_POINTER_ARRAY\0"
.LC36:
	.ascii "\11\11member of struct\0"
.LC37:
	.ascii "\11\11member of union\0"
.LC38:
	.ascii "\11\11member of enum\0"
.LC39:
	.ascii "\11\11member of assert\0"
.LC40:
	.ascii "STMT_IF_ELSE\0"
.LC41:
	.ascii "STMT_FOR\0"
.LC42:
	.ascii "STMT_PRINT\0"
.LC43:
	.ascii "\11expr: %s\12\0"
.LC44:
	.ascii "STMT_IMPORT\0"
.LC45:
	.ascii "STMT_LOAD\0"
.LC46:
	.ascii "STMT_DELETE\0"
.LC47:
	.ascii "STMT_DEFER\0"
.LC48:
	.ascii "STMT_ASSERT\0"
.LC49:
	.ascii "STMT_RETURN\0"
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 22 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 23 0
	movl	$0, -24(%rbp)
	.loc 1 27 0
	jmp	.L5
.L108:
	.loc 1 28 0
	addl	$1, -24(%rbp)
	.loc 1 30 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	.loc 1 33 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7
	.loc 1 34 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 36 0
	cmpl	$0, -16(%rbp)
	jne	.L8
	.loc 1 37 0
	leaq	.LC0(%rip), %rcx
	call	puts
	.loc 1 38 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	.loc 1 39 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	.loc 1 40 0
	movq	-8(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 45 0
	cmpl	$0, -12(%rbp)
	jne	.L11
	.loc 1 46 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 47 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 48 0
	movq	-8(%rbp), %rax
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
	cmpl	$1, -12(%rbp)
	jne	.L13
	.loc 1 51 0
	leaq	.LC4(%rip), %rcx
	call	puts
	.loc 1 52 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 53 0
	movq	-8(%rbp), %rax
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
	cmpl	$2, -12(%rbp)
	jne	.L15
	.loc 1 56 0
	leaq	.LC5(%rip), %rcx
	call	puts
	.loc 1 57 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 58 0
	movq	-8(%rbp), %rax
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
	cmpl	$3, -12(%rbp)
	jne	.L17
	.loc 1 61 0
	leaq	.LC6(%rip), %rcx
	call	puts
	.loc 1 62 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 63 0
	movq	-8(%rbp), %rax
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
	cmpl	$4, -12(%rbp)
	jne	.L19
	.loc 1 66 0
	leaq	.LC7(%rip), %rcx
	call	puts
	.loc 1 67 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 68 0
	movq	-8(%rbp), %rax
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
	cmpl	$5, -12(%rbp)
	jne	.L21
	.loc 1 71 0
	leaq	.LC8(%rip), %rcx
	call	puts
	.loc 1 72 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 73 0
	movq	-8(%rbp), %rax
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
	cmpl	$6, -12(%rbp)
	jne	.L23
	.loc 1 76 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 77 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 78 0
	movq	-8(%rbp), %rax
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
	cmpl	$7, -12(%rbp)
	jne	.L25
	.loc 1 81 0
	leaq	.LC10(%rip), %rcx
	call	puts
	.loc 1 82 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 83 0
	movq	-8(%rbp), %rax
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
	cmpl	$8, -12(%rbp)
	jne	.L27
	.loc 1 86 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 87 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 88 0
	movq	-8(%rbp), %rax
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
	cmpl	$9, -12(%rbp)
	jne	.L29
	.loc 1 91 0
	leaq	.LC12(%rip), %rcx
	call	puts
	.loc 1 92 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 93 0
	movq	-8(%rbp), %rax
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
	cmpl	$10, -12(%rbp)
	jne	.L31
	.loc 1 96 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 97 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 98 0
	movq	-8(%rbp), %rax
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
	cmpl	$12, -12(%rbp)
	jne	.L33
	.loc 1 101 0
	leaq	.LC14(%rip), %rcx
	call	puts
	.loc 1 102 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 103 0
	movq	-8(%rbp), %rax
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
	cmpl	$13, -12(%rbp)
	jne	.L35
	.loc 1 106 0
	leaq	.LC15(%rip), %rcx
	call	puts
	jmp	.L10
.L35:
	.loc 1 108 0
	cmpl	$14, -12(%rbp)
	jne	.L36
	.loc 1 109 0
	leaq	.LC16(%rip), %rcx
	call	puts
	jmp	.L10
.L36:
	.loc 1 111 0
	cmpl	$15, -12(%rbp)
	jne	.L37
	.loc 1 112 0
	leaq	.LC17(%rip), %rcx
	call	puts
	jmp	.L10
.L37:
	.loc 1 114 0
	cmpl	$15, -12(%rbp)
	jne	.L38
	.loc 1 115 0
	leaq	.LC17(%rip), %rcx
	call	puts
	jmp	.L10
.L38:
	.loc 1 117 0
	cmpl	$16, -12(%rbp)
	jne	.L39
	.loc 1 118 0
	leaq	.LC18(%rip), %rcx
	call	puts
	.loc 1 119 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 120 0
	movq	-8(%rbp), %rax
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
	cmpl	$17, -12(%rbp)
	jne	.L41
	.loc 1 123 0
	leaq	.LC20(%rip), %rcx
	call	puts
	.loc 1 124 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 125 0
	movq	-8(%rbp), %rax
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
	cmpl	$18, -12(%rbp)
	jne	.L43
	.loc 1 128 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 129 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 130 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L43:
	.loc 1 132 0
	cmpl	$19, -12(%rbp)
	jne	.L45
	.loc 1 133 0
	leaq	.LC22(%rip), %rcx
	call	puts
	.loc 1 134 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 135 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L45:
	.loc 1 137 0
	cmpl	$20, -12(%rbp)
	jne	.L47
	.loc 1 138 0
	leaq	.LC23(%rip), %rcx
	call	puts
	.loc 1 139 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 140 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L47:
	.loc 1 142 0
	cmpl	$21, -12(%rbp)
	jne	.L49
	.loc 1 143 0
	leaq	.LC24(%rip), %rcx
	call	puts
	.loc 1 144 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 145 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L49:
	.loc 1 147 0
	cmpl	$22, -12(%rbp)
	jne	.L51
	.loc 1 148 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 149 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 150 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L51:
	.loc 1 152 0
	cmpl	$23, -12(%rbp)
	jne	.L53
	.loc 1 153 0
	leaq	.LC26(%rip), %rcx
	call	puts
	.loc 1 154 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 155 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L53:
	.loc 1 157 0
	cmpl	$24, -12(%rbp)
	jne	.L55
	.loc 1 158 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 159 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 160 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L55:
	.loc 1 162 0
	cmpl	$25, -12(%rbp)
	jne	.L57
	.loc 1 163 0
	leaq	.LC28(%rip), %rcx
	call	puts
	.loc 1 164 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 165 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L57:
	.loc 1 167 0
	cmpl	$26, -12(%rbp)
	jne	.L59
	.loc 1 168 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 169 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 170 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L59:
	.loc 1 172 0
	cmpl	$27, -12(%rbp)
	jne	.L61
	.loc 1 173 0
	leaq	.LC30(%rip), %rcx
	call	puts
	.loc 1 174 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 175 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L61:
	.loc 1 177 0
	cmpl	$28, -12(%rbp)
	jne	.L63
	.loc 1 178 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 179 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 180 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L63:
	.loc 1 182 0
	cmpl	$29, -12(%rbp)
	jne	.L65
	.loc 1 183 0
	leaq	.LC32(%rip), %rcx
	call	puts
	.loc 1 184 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 185 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L65:
	.loc 1 187 0
	cmpl	$30, -12(%rbp)
	jne	.L67
	.loc 1 188 0
	leaq	.LC33(%rip), %rcx
	call	puts
	.loc 1 189 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 190 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L67:
	.loc 1 192 0
	cmpl	$31, -12(%rbp)
	jne	.L69
	.loc 1 193 0
	leaq	.LC34(%rip), %rcx
	call	puts
	.loc 1 194 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 195 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
	jmp	.L10
.L69:
	.loc 1 197 0
	cmpl	$32, -12(%rbp)
	jne	.L10
	.loc 1 198 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 199 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	.loc 1 200 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	printf
.L10:
	.loc 1 204 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	64(%rax), %eax
	cmpl	$-1, %eax
	je	.L6
	.loc 1 206 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	jne	.L72
	.loc 1 206 0 is_stmt 0 discriminator 1
	leaq	.LC36(%rip), %rcx
	call	puts
	jmp	.L6
.L72:
	.loc 1 207 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	64(%rax), %eax
	cmpl	$2, %eax
	jne	.L73
	.loc 1 207 0 is_stmt 0 discriminator 1
	leaq	.LC37(%rip), %rcx
	call	puts
	jmp	.L6
.L73:
	.loc 1 208 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	64(%rax), %eax
	cmpl	$3, %eax
	jne	.L74
	.loc 1 208 0 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rcx
	call	puts
	jmp	.L6
.L74:
	.loc 1 209 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	64(%rax), %eax
	cmpl	$4, %eax
	jne	.L6
	.loc 1 209 0 is_stmt 0 discriminator 1
	leaq	.LC39(%rip), %rcx
	call	puts
	jmp	.L6
.L8:
	.loc 1 213 0 is_stmt 1
	cmpl	$2, -16(%rbp)
	jne	.L75
	.loc 1 214 0
	leaq	.LC40(%rip), %rcx
	call	puts
	jmp	.L6
.L75:
	.loc 1 216 0
	cmpl	$3, -16(%rbp)
	jne	.L76
	.loc 1 217 0
	leaq	.LC41(%rip), %rcx
	call	puts
	jmp	.L6
.L76:
	.loc 1 219 0
	cmpl	$4, -16(%rbp)
	jne	.L77
	.loc 1 220 0
	leaq	.LC42(%rip), %rcx
	call	puts
	.loc 1 221 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L77:
	.loc 1 223 0
	cmpl	$5, -16(%rbp)
	jne	.L78
	.loc 1 224 0
	leaq	.LC44(%rip), %rcx
	call	puts
	.loc 1 225 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L78:
	.loc 1 227 0
	cmpl	$6, -16(%rbp)
	jne	.L79
	.loc 1 228 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 229 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L79:
	.loc 1 231 0
	cmpl	$7, -16(%rbp)
	jne	.L80
	.loc 1 232 0
	leaq	.LC46(%rip), %rcx
	call	puts
	.loc 1 233 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L80:
	.loc 1 235 0
	cmpl	$8, -16(%rbp)
	jne	.L81
	.loc 1 236 0
	leaq	.LC47(%rip), %rcx
	call	puts
	jmp	.L6
.L81:
	.loc 1 238 0
	cmpl	$9, -16(%rbp)
	jne	.L82
	.loc 1 239 0
	leaq	.LC48(%rip), %rcx
	call	puts
	jmp	.L6
.L82:
	.loc 1 241 0
	cmpl	$10, -16(%rbp)
	jne	.L83
	.loc 1 242 0
	leaq	.LC49(%rip), %rcx
	call	puts
	jmp	.L6
.L83:
	.loc 1 244 0
	cmpl	$11, -16(%rbp)
	jne	.L84
	.loc 1 245 0
	leaq	.LC50(%rip), %rcx
	call	puts
	jmp	.L6
.L84:
	.loc 1 247 0
	cmpl	$12, -16(%rbp)
	jne	.L85
	.loc 1 248 0
	leaq	.LC51(%rip), %rcx
	call	puts
	jmp	.L6
.L85:
	.loc 1 250 0
	cmpl	$14, -16(%rbp)
	jne	.L86
	.loc 1 251 0
	leaq	.LC52(%rip), %rcx
	call	puts
	.loc 1 252 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	.loc 1 253 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC53(%rip), %rcx
	call	printf
	jmp	.L6
.L86:
	.loc 1 255 0
	cmpl	$15, -16(%rbp)
	jne	.L87
	.loc 1 256 0
	leaq	.LC54(%rip), %rcx
	call	puts
	.loc 1 257 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L87:
	.loc 1 259 0
	cmpl	$16, -16(%rbp)
	jne	.L88
	.loc 1 260 0
	leaq	.LC55(%rip), %rcx
	call	puts
	jmp	.L6
.L88:
	.loc 1 262 0
	cmpl	$17, -16(%rbp)
	jne	.L89
	.loc 1 263 0
	leaq	.LC56(%rip), %rcx
	call	puts
	.loc 1 264 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	jmp	.L6
.L89:
	.loc 1 266 0
	cmpl	$18, -16(%rbp)
	jne	.L90
	.loc 1 267 0
	leaq	.LC57(%rip), %rcx
	call	puts
	.loc 1 268 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rcx
	call	printf
	.loc 1 269 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rcx
	call	printf
	jmp	.L6
.L90:
	.loc 1 271 0
	cmpl	$19, -16(%rbp)
	jne	.L91
	.loc 1 272 0
	leaq	.LC59(%rip), %rcx
	call	puts
	jmp	.L6
.L91:
	.loc 1 274 0
	cmpl	$20, -16(%rbp)
	jne	.L92
	.loc 1 275 0
	leaq	.LC60(%rip), %rcx
	call	puts
	.loc 1 276 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC61(%rip), %rcx
	call	printf
	.loc 1 277 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC62(%rip), %rcx
	call	printf
	jmp	.L6
.L92:
	.loc 1 279 0
	cmpl	$21, -16(%rbp)
	jne	.L6
	.loc 1 280 0
	leaq	.LC63(%rip), %rcx
	call	puts
	jmp	.L6
.L7:
	.loc 1 286 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L6
.LBB2:
	.loc 1 287 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 288 0
	cmpl	$4, -20(%rbp)
	jne	.L93
	.loc 1 289 0
	leaq	.LC64(%rip), %rcx
	call	puts
	.loc 1 290 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 291 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L93:
	.loc 1 293 0
	cmpl	$5, -20(%rbp)
	jne	.L95
	.loc 1 294 0
	leaq	.LC67(%rip), %rcx
	call	puts
	.loc 1 295 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 296 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L95:
	.loc 1 298 0
	cmpl	$6, -20(%rbp)
	jne	.L96
	.loc 1 299 0
	leaq	.LC68(%rip), %rcx
	call	puts
	.loc 1 300 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 301 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L96:
	.loc 1 303 0
	cmpl	$7, -20(%rbp)
	jne	.L97
	.loc 1 304 0
	leaq	.LC69(%rip), %rcx
	call	puts
	.loc 1 305 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 306 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L97:
	.loc 1 308 0
	cmpl	$8, -20(%rbp)
	jne	.L98
	.loc 1 309 0
	leaq	.LC70(%rip), %rcx
	call	puts
	.loc 1 310 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC71(%rip), %rcx
	call	printf
	jmp	.L94
.L98:
	.loc 1 312 0
	cmpl	$9, -20(%rbp)
	jne	.L99
	.loc 1 313 0
	leaq	.LC72(%rip), %rcx
	call	puts
	.loc 1 314 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC71(%rip), %rcx
	call	printf
	jmp	.L94
.L99:
	.loc 1 316 0
	cmpl	$11, -20(%rbp)
	jne	.L100
	.loc 1 317 0
	leaq	.LC73(%rip), %rcx
	call	puts
	.loc 1 318 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 319 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L100:
	.loc 1 321 0
	cmpl	$12, -20(%rbp)
	jne	.L101
	.loc 1 322 0
	leaq	.LC74(%rip), %rcx
	call	puts
	.loc 1 323 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 324 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L101:
	.loc 1 326 0
	cmpl	$13, -20(%rbp)
	jne	.L102
	.loc 1 327 0
	leaq	.LC75(%rip), %rcx
	call	puts
	.loc 1 328 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 329 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L102:
	.loc 1 331 0
	cmpl	$14, -20(%rbp)
	jne	.L103
	.loc 1 332 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 333 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 334 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
	jmp	.L94
.L103:
	.loc 1 336 0
	cmpl	$15, -20(%rbp)
	jne	.L94
	.loc 1 337 0
	leaq	.LC77(%rip), %rcx
	call	puts
	.loc 1 338 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rcx
	call	printf
	.loc 1 339 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rcx
	call	printf
.L94:
	.loc 1 344 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$-1, %eax
	je	.L6
	.loc 1 346 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L105
	.loc 1 346 0 is_stmt 0 discriminator 1
	leaq	.LC36(%rip), %rcx
	call	puts
	jmp	.L6
.L105:
	.loc 1 347 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L106
	.loc 1 347 0 is_stmt 0 discriminator 1
	leaq	.LC37(%rip), %rcx
	call	puts
	jmp	.L6
.L106:
	.loc 1 348 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$3, %eax
	jne	.L107
	.loc 1 348 0 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rcx
	call	puts
	jmp	.L6
.L107:
	.loc 1 349 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$4, %eax
	jne	.L6
	.loc 1 349 0 is_stmt 0 discriminator 1
	leaq	.LC39(%rip), %rcx
	call	puts
.L6:
.LBE2:
	.loc 1 356 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L5:
	.loc 1 27 0
	cmpq	$0, -8(%rbp)
	jne	.L108
	.loc 1 358 0
	nop
	addq	$64, %rsp
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
	.long	0x155c
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
	.long	0xeee
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
	.long	0xc5c
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x7
	.byte	0x2d
	.long	0xf36
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x2e
	.long	0xeee
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x7
	.byte	0x2f
	.long	0xf36
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x7
	.byte	0x30
	.long	0xf7a
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xefc
	.uleb128 0xd
	.ascii "param_list\0"
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.long	0xf7a
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x35
	.long	0x661
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x36
	.long	0xf8c
	.byte	0x8
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x37
	.long	0xf7a
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf3c
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x7
	.byte	0x31
	.long	0xefc
	.uleb128 0xe
	.byte	0x8
	.long	0xf80
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12e
	.byte	0x7
	.byte	0x3e
	.long	0x10bf
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
	.long	0xf92
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x7
	.byte	0x51
	.long	0x1166
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x52
	.long	0x10bf
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x7
	.byte	0x53
	.long	0x1166
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x7
	.byte	0x54
	.long	0x1166
	.byte	0x10
	.uleb128 0xc
	.ascii "string_literal\0"
	.byte	0x7
	.byte	0x55
	.long	0x661
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x7
	.byte	0x56
	.long	0x661
	.byte	0x20
	.uleb128 0xc
	.ascii "integer_value\0"
	.byte	0x7
	.byte	0x57
	.long	0x127
	.byte	0x28
	.uleb128 0xc
	.ascii "character_value\0"
	.byte	0x7
	.byte	0x58
	.long	0x16d
	.byte	0x2c
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x59
	.long	0x127
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x10cd
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x7
	.byte	0x5a
	.long	0x10cd
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0x12e
	.byte	0x7
	.byte	0x5f
	.long	0x12a5
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
	.long	0x1178
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x48
	.byte	0x7
	.byte	0x78
	.long	0x1347
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x7
	.byte	0x79
	.long	0x12a5
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x7
	.byte	0x7a
	.long	0x139a
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x7
	.byte	0x7b
	.long	0x13a0
	.byte	0x10
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x7
	.byte	0x7c
	.long	0x13a0
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x7
	.byte	0x7d
	.long	0x13a0
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x7
	.byte	0x7e
	.long	0x13a6
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x7
	.byte	0x7f
	.long	0x13a6
	.byte	0x30
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x80
	.long	0x13a6
	.byte	0x38
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x81
	.long	0x127
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x7
	.byte	0x87
	.long	0x139a
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x7
	.byte	0x88
	.long	0x13b8
	.byte	0
	.uleb128 0xc
	.ascii "theType\0"
	.byte	0x7
	.byte	0x89
	.long	0xf8c
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x7
	.byte	0x8a
	.long	0x13a0
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x7
	.byte	0x8b
	.long	0x13c8
	.byte	0x78
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x7
	.byte	0x8c
	.long	0x139a
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1347
	.uleb128 0xe
	.byte	0x8
	.long	0x116c
	.uleb128 0xe
	.byte	0x8
	.long	0x12b3
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x7
	.byte	0x82
	.long	0x12b3
	.uleb128 0x9
	.long	0x16d
	.long	0x13c8
	.uleb128 0xa
	.long	0x14a
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13ac
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x7
	.byte	0x8d
	.long	0x1347
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x8
	.byte	0x6
	.long	0x1423
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x8
	.byte	0x8
	.long	0x1423
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x8
	.byte	0x9
	.long	0x13c8
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x8
	.byte	0xa
	.long	0x13a0
	.byte	0x10
	.uleb128 0xc
	.ascii "next\0"
	.byte	0x8
	.byte	0xb
	.long	0x1429
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13ce
	.uleb128 0xe
	.byte	0x8
	.long	0x13da
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x8
	.byte	0xc
	.long	0x13da
	.uleb128 0x26
	.ascii "print_commandList\0"
	.byte	0x1
	.byte	0x15
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e1
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x15
	.long	0x14e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.ascii "current\0"
	.byte	0x1
	.byte	0x16
	.long	0x14e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "counter\0"
	.byte	0x1
	.byte	0x17
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.ascii "value\0"
	.byte	0x1
	.byte	0x18
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.ascii "temp_type\0"
	.byte	0x1
	.byte	0x19
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2a
	.ascii "val\0"
	.byte	0x1
	.word	0x11f
	.long	0x127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x142f
	.uleb128 0x2b
	.ascii "push_commandList\0"
	.byte	0x1
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x6
	.long	0x14e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "aDecl\0"
	.byte	0x1
	.byte	0x6
	.long	0x1423
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.ascii "aStmt\0"
	.byte	0x1
	.byte	0x6
	.long	0x13c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.ascii "anExpr\0"
	.byte	0x1
	.byte	0x6
	.long	0x13a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.ascii "current\0"
	.byte	0x1
	.byte	0x7
	.long	0x14e1
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
	.uleb128 0x27
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2c
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
.LASF2:
	.ascii "commandNode\0"
.LASF1:
	.ascii "memberOf\0"
.LASF0:
	.ascii "_on_exit_args\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
