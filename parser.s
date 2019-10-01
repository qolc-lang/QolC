	.file	"parser.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	parseProgram
	.def	parseProgram;	.scl	2;	.type	32;	.endef
	.seh_proc	parseProgram
parseProgram:
.LFB9:
	.file 1 "./src/parser.c"
	.loc 1 7 0
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
	.loc 1 8 0
	movl	$64, %ecx
	call	malloc
	movq	%rax, -16(%rbp)
	.loc 1 9 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 10 0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	parsing
	.loc 1 11 0
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	print_commandList
	.loc 1 12 0
	nop
	.loc 1 13 0
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
	.ascii "Type in the loop : %s\12\0"
.LC1:
	.ascii "import\0"
.LC2:
	.ascii "Import statement to be built.\0"
	.align 8
.LC3:
	.ascii "**********************************************************\0"
.LC4:
	.ascii "main\0"
.LC5:
	.ascii "Main statement to be built.\0"
.LC6:
	.ascii "load\0"
.LC7:
	.ascii "Load statement to be built.\0"
.LC8:
	.ascii "print\0"
.LC9:
	.ascii "Print statement to be built.\0"
.LC10:
	.ascii "sleep\0"
.LC11:
	.ascii "Sleep statement to be built.\0"
.LC12:
	.ascii "delete\0"
.LC13:
	.ascii "Delete statement to be built.\0"
.LC14:
	.ascii "cast\0"
.LC15:
	.ascii "Cast statement to be built.\0"
.LC16:
	.ascii "array_add\0"
	.align 8
.LC17:
	.ascii "Array_add statement to be built.\0"
.LC18:
	.ascii "scan\0"
.LC19:
	.ascii "Scan statement to be built.\0"
.LC20:
	.ascii "string\0"
.LC21:
	.ascii "String keyword going in.\0"
.LC22:
	.ascii "int\0"
.LC23:
	.ascii "Int keyword going in.\0"
.LC24:
	.ascii "float\0"
.LC25:
	.ascii "Float keyword going in.\0"
.LC26:
	.ascii "char\0"
.LC27:
	.ascii "Char keyword going in.\0"
.LC28:
	.ascii "bool\0"
.LC29:
	.ascii "Bool keyword going in.\0"
.LC30:
	.ascii "void\0"
.LC31:
	.ascii "Void keyword going in.\0"
.LC32:
	.ascii "@\0"
.LC33:
	.ascii "/@\0"
.LC34:
	.ascii "Part of comment %s.\12\0"
.LC35:
	.ascii "Operator @ going in.\0"
.LC36:
	.ascii "return\0"
.LC37:
	.ascii "Return statement to be built.\0"
.LC38:
	.ascii "if\0"
.LC39:
	.ascii "If statement to be built.\0"
.LC40:
	.ascii "while\0"
.LC41:
	.ascii "While statement to be built.\0"
.LC42:
	.ascii "for\0"
.LC43:
	.ascii "For statement to be built.\0"
.LC44:
	.ascii "each\0"
.LC45:
	.ascii "Each statement to be built.\0"
.LC46:
	.ascii "defer\0"
.LC47:
	.ascii "Defer statement to be built.\0"
.LC48:
	.ascii "+\0"
.LC49:
	.ascii "Operator + going in.\0"
.LC50:
	.ascii "-\0"
.LC51:
	.ascii "Operator - going in.\0"
.LC52:
	.ascii "++\0"
.LC53:
	.ascii "Operator ++ going in.\0"
.LC54:
	.ascii "--\0"
.LC55:
	.ascii "Operator -- going in.\0"
.LC56:
	.ascii "+=\0"
.LC57:
	.ascii "Operator += going in.\0"
.LC58:
	.ascii "-=\0"
.LC59:
	.ascii "Operator -= going in.\0"
.LC60:
	.ascii "*=\0"
.LC61:
	.ascii "Operator *= going in.\0"
.LC62:
	.ascii "/=\0"
.LC63:
	.ascii "Operator /= going in.\0"
.LC64:
	.ascii ">\0"
.LC65:
	.ascii "Operator > going in.\0"
.LC66:
	.ascii "<\0"
.LC67:
	.ascii "Operator < going in.\0"
.LC68:
	.ascii ">=\0"
.LC69:
	.ascii "Operator >= going in.\0"
.LC70:
	.ascii "<=\0"
.LC71:
	.ascii "Operator <= going in.\0"
.LC72:
	.ascii "@==\0"
.LC73:
	.ascii "Operator @== going in.\0"
.LC74:
	.ascii "Comment symbol going in.\0"
.LC75:
	.ascii "^\0"
.LC76:
	.ascii "Operator ^ going in.\0"
.LC77:
	.ascii "Value in the loop : %s\12\0"
.LC78:
	.ascii "struct\0"
.LC79:
	.ascii "Struct statement to be built.\0"
.LC80:
	.ascii "The struct variable : %s\12\0"
.LC81:
	.ascii "enum\0"
.LC82:
	.ascii "Enum statement to be built.\0"
.LC83:
	.ascii "The enum variable : %s\12\0"
.LC84:
	.ascii "union\0"
.LC85:
	.ascii "Union statement to be built/\0"
.LC86:
	.ascii "The union variable : %s\12\0"
.LC87:
	.ascii "assert\0"
.LC88:
	.ascii "Assert statement to be built.\0"
.LC89:
	.ascii "block end\0"
.LC90:
	.ascii "Going to clear the flags.\0"
	.align 8
.LC91:
	.ascii "The stack at string type is not empty\0"
.LC92:
	.ascii "Going to push the value : %s\12\0"
.LC93:
	.ascii "hexadecimal number\0"
.LC94:
	.ascii "It is member of : %d\12\0"
.LC95:
	.ascii "%d\0"
	.align 8
.LC96:
	.ascii "The stack at number type is not empty.\0"
	.align 8
.LC97:
	.ascii "Going to insert the value : %s\12\0"
	.align 8
.LC98:
	.ascii "The stack at number type is empty.\0"
	.align 8
.LC99:
	.ascii "This is the last part of the comment\0"
	.align 8
.LC100:
	.ascii "Operator @ is in the stack now.\0"
.LC101:
	.ascii "This is part of a comment %s\12\0"
	.align 8
.LC102:
	.ascii "The stack at identifier type is not empty\0"
	.align 8
.LC103:
	.ascii "The stack at identifier type is empty.\0"
.LC104:
	.ascii "character\0"
	.align 8
.LC105:
	.ascii "The stack at character type is not empty.\0"
.LC106:
	.ascii "keyword\0"
.LC107:
	.ascii "break\0"
.LC108:
	.ascii "continue\0"
.LC109:
	.ascii "new\0"
.LC110:
	.ascii "null\0"
.LC111:
	.ascii "true\0"
.LC112:
	.ascii "false\0"
.LC113:
	.ascii "end of command\0"
.LC114:
	.ascii "End of the comment.\0"
	.align 8
.LC115:
	.ascii "Going to build delete statement.\0"
.LC116:
	.ascii "Going for just a declaration\0"
	.align 8
.LC117:
	.ascii "Going to clear assert flags at the end of command.\0"
	.text
	.globl	parsing
	.def	parsing;	.scl	2;	.type	32;	.endef
	.seh_proc	parsing
parsing:
.LFB10:
	.loc 1 18 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$20728, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	20728
	.cfi_def_cfa_offset 20752
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 20624
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 1 18 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, 20584(%rbp)
	xorl	%ebx, %ebx
	.loc 1 20 0
	movl	$0, -12(%rbp)
	.loc 1 21 0
	movl	$0, -8(%rbp)
	.loc 1 22 0
	movl	$0, -4(%rbp)
	.loc 1 26 0
	movl	$0, 4(%rbp)
	.loc 1 28 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	init
	.loc 1 29 0
	leaq	20368(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 30 0
	leaq	20480(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 34 0
	jmp	.L4
.L128:
	.loc 1 35 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	.loc 1 37 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 38 0
	leaq	.LC2(%rip), %rcx
	call	puts
	.loc 1 39 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 40 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 41 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 42 0
	jmp	.L4
.L5:
	.loc 1 44 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
.LBB2:
	.loc 1 45 0
	leaq	.LC5(%rip), %rcx
	call	puts
	.loc 1 46 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$16, %ecx
	call	stmt_create
	movq	%rax, 344(%rbp)
	.loc 1 47 0
	movq	344(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 48 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 49 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 50 0
	jmp	.L4
.L6:
.LBE2:
	.loc 1 52 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	.loc 1 53 0
	leaq	.LC7(%rip), %rcx
	call	puts
	.loc 1 54 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 55 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 56 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 57 0
	jmp	.L4
.L7:
	.loc 1 59 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	.loc 1 60 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 61 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 62 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 63 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 64 0
	jmp	.L4
.L8:
	.loc 1 66 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	.loc 1 67 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 68 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 69 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 70 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 71 0
	jmp	.L4
.L9:
	.loc 1 73 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	.loc 1 74 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 75 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 76 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 77 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 78 0
	jmp	.L4
.L10:
	.loc 1 80 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	.loc 1 81 0
	leaq	.LC15(%rip), %rcx
	call	puts
	.loc 1 82 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 83 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 84 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 85 0
	jmp	.L4
.L11:
	.loc 1 87 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	.loc 1 88 0
	leaq	.LC17(%rip), %rcx
	call	puts
	.loc 1 89 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 90 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 91 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 92 0
	jmp	.L4
.L12:
	.loc 1 94 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L13
	.loc 1 95 0
	leaq	.LC19(%rip), %rcx
	call	puts
	.loc 1 96 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 97 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 98 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 99 0
	jmp	.L4
.L13:
	.loc 1 101 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L14
	.loc 1 102 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 103 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 104 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 105 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 106 0
	jmp	.L4
.L14:
	.loc 1 108 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	.loc 1 109 0
	leaq	.LC23(%rip), %rcx
	call	puts
	.loc 1 110 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 111 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 112 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 113 0
	jmp	.L4
.L15:
	.loc 1 115 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L16
	.loc 1 116 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 117 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 118 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 119 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 120 0
	jmp	.L4
.L16:
	.loc 1 122 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	.loc 1 123 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 124 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 125 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 126 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 127 0
	jmp	.L4
.L17:
	.loc 1 129 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L18
	.loc 1 130 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 131 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 132 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 133 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 134 0
	jmp	.L4
.L18:
	.loc 1 136 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 137 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 138 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 139 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 140 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 141 0
	jmp	.L4
.L19:
	.loc 1 143 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L20
	.loc 1 146 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 147 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L21
	.loc 1 149 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rcx
	call	printf
	.loc 1 150 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 151 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 152 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 153 0
	jmp	.L4
.L21:
	.loc 1 155 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 156 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 157 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 158 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 159 0
	jmp	.L4
.L20:
	.loc 1 161 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L22
	.loc 1 162 0
	leaq	.LC37(%rip), %rcx
	call	puts
	.loc 1 163 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 164 0
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %r8
	leaq	368(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	checkTheStack
	movq	%rax, -24(%rbp)
	.loc 1 165 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 166 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 167 0
	jmp	.L4
.L22:
	.loc 1 169 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	.loc 1 170 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 171 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 172 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 173 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 174 0
	jmp	.L4
.L23:
	.loc 1 176 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	.loc 1 177 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 178 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 179 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 180 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 181 0
	jmp	.L4
.L24:
	.loc 1 183 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L25
	.loc 1 184 0
	leaq	.LC43(%rip), %rcx
	call	puts
	.loc 1 185 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 186 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 187 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 188 0
	jmp	.L4
.L25:
	.loc 1 190 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L26
	.loc 1 191 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 192 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 193 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 194 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 195 0
	jmp	.L4
.L26:
	.loc 1 197 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L27
	.loc 1 198 0
	leaq	.LC47(%rip), %rcx
	call	puts
	.loc 1 199 0
	movl	$1, -4(%rbp)
	.loc 1 200 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 201 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 202 0
	jmp	.L4
.L27:
	.loc 1 204 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L28
	.loc 1 205 0
	leaq	.LC49(%rip), %rcx
	call	puts
	.loc 1 206 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 207 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 208 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 209 0
	jmp	.L4
.L28:
	.loc 1 211 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L29
	.loc 1 212 0
	leaq	.LC51(%rip), %rcx
	call	puts
	.loc 1 213 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 214 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 215 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 216 0
	jmp	.L4
.L29:
	.loc 1 218 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	.loc 1 219 0
	leaq	.LC53(%rip), %rcx
	call	puts
	.loc 1 220 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 221 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 222 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 223 0
	movl	$1, -8(%rbp)
	.loc 1 224 0
	jmp	.L4
.L30:
	.loc 1 226 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L31
	.loc 1 227 0
	leaq	.LC55(%rip), %rcx
	call	puts
	.loc 1 228 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 229 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 230 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 231 0
	movl	$1, -8(%rbp)
	.loc 1 232 0
	jmp	.L4
.L31:
	.loc 1 234 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L32
	.loc 1 235 0
	leaq	.LC57(%rip), %rcx
	call	puts
	.loc 1 236 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 237 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 238 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 239 0
	movl	$1, -8(%rbp)
	.loc 1 240 0
	jmp	.L4
.L32:
	.loc 1 242 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L33
	.loc 1 243 0
	leaq	.LC59(%rip), %rcx
	call	puts
	.loc 1 244 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 245 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 246 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 247 0
	movl	$1, -8(%rbp)
	.loc 1 248 0
	jmp	.L4
.L33:
	.loc 1 250 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L34
	.loc 1 251 0
	leaq	.LC61(%rip), %rcx
	call	puts
	.loc 1 252 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 253 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 254 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 255 0
	movl	$1, -8(%rbp)
	.loc 1 256 0
	jmp	.L4
.L34:
	.loc 1 258 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC62(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L35
	.loc 1 259 0
	leaq	.LC63(%rip), %rcx
	call	puts
	.loc 1 260 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 261 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 262 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 263 0
	movl	$1, -8(%rbp)
	.loc 1 264 0
	jmp	.L4
.L35:
	.loc 1 266 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC64(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L36
	.loc 1 267 0
	leaq	.LC65(%rip), %rcx
	call	puts
	.loc 1 268 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 269 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 270 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 271 0
	jmp	.L4
.L36:
	.loc 1 273 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L37
	.loc 1 274 0
	leaq	.LC67(%rip), %rcx
	call	puts
	.loc 1 275 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 276 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 277 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 278 0
	jmp	.L4
.L37:
	.loc 1 280 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC68(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	.loc 1 281 0
	leaq	.LC69(%rip), %rcx
	call	puts
	.loc 1 282 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 283 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 284 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 285 0
	jmp	.L4
.L38:
	.loc 1 287 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC70(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	.loc 1 288 0
	leaq	.LC71(%rip), %rcx
	call	puts
	.loc 1 289 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 290 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 291 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 292 0
	jmp	.L4
.L39:
	.loc 1 294 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L40
	.loc 1 295 0
	leaq	.LC73(%rip), %rcx
	call	puts
	.loc 1 296 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 297 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 298 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 299 0
	jmp	.L4
.L40:
	.loc 1 301 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	.loc 1 302 0
	leaq	.LC74(%rip), %rcx
	call	puts
	.loc 1 303 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 304 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 305 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 306 0
	jmp	.L4
.L41:
	.loc 1 308 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L42
	.loc 1 309 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 310 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 311 0
	movl	$1, 4(%rbp)
	.loc 1 312 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 313 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 314 0
	jmp	.L4
.L42:
	.loc 1 318 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC77(%rip), %rcx
	call	printf
	.loc 1 320 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC78(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L43
.LBB3:
	.loc 1 321 0
	leaq	.LC79(%rip), %rcx
	call	puts
	.loc 1 322 0
	leaq	20368(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rcx
	call	printf
	.loc 1 323 0
	movl	$1, 352(%rbp)
	.loc 1 324 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$13, %ecx
	call	type_create
	movq	%rax, 320(%rbp)
	.loc 1 325 0
	movq	320(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 328(%rbp)
	.loc 1 326 0
	movq	328(%rbp), %rax
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
	movq	%rax, 336(%rbp)
	.loc 1 327 0
	movq	336(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 328 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 329 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 330 0
	jmp	.L4
.L43:
.LBE3:
	.loc 1 333 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L44
.LBB4:
	.loc 1 334 0
	leaq	.LC82(%rip), %rcx
	call	puts
	.loc 1 335 0
	leaq	20368(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC83(%rip), %rcx
	call	printf
	.loc 1 336 0
	movl	$1, 360(%rbp)
	.loc 1 337 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$14, %ecx
	call	type_create
	movq	%rax, 296(%rbp)
	.loc 1 338 0
	movq	296(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 304(%rbp)
	.loc 1 339 0
	movq	304(%rbp), %rax
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
	movq	%rax, 312(%rbp)
	.loc 1 340 0
	movq	312(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 341 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 342 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 343 0
	jmp	.L4
.L44:
.LBE4:
	.loc 1 346 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC84(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L45
.LBB5:
	.loc 1 347 0
	leaq	.LC85(%rip), %rcx
	call	puts
	.loc 1 348 0
	leaq	20368(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 349 0
	movl	$1, 356(%rbp)
	.loc 1 350 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$15, %ecx
	call	type_create
	movq	%rax, 272(%rbp)
	.loc 1 351 0
	movq	272(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 280(%rbp)
	.loc 1 352 0
	movq	280(%rbp), %rax
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
	movq	%rax, 288(%rbp)
	.loc 1 353 0
	movq	288(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 354 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 355 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 356 0
	jmp	.L4
.L45:
.LBE5:
	.loc 1 359 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L46
.LBB6:
	.loc 1 360 0
	leaq	.LC88(%rip), %rcx
	call	puts
	.loc 1 361 0
	movl	$1, 364(%rbp)
	.loc 1 362 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	stmt_create
	movq	%rax, 264(%rbp)
	.loc 1 363 0
	movq	264(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 364 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 365 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 366 0
	jmp	.L4
.L46:
.LBE6:
	.loc 1 369 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC89(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L47
	.loc 1 370 0
	leaq	.LC90(%rip), %rcx
	call	puts
	.loc 1 371 0
	leaq	352(%rbp), %rax
	movq	%rax, %rcx
	call	ClearFlags
.L47:
	.loc 1 374 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L48
.LBB7:
	.loc 1 375 0
	movl	$0, 8(%rbp)
	.loc 1 376 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 377 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L49
	.loc 1 378 0
	movl	$1, 8(%rbp)
	.loc 1 379 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 380 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L48
.L49:
	.loc 1 382 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L50
	.loc 1 383 0
	movl	$1, 8(%rbp)
	.loc 1 384 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 385 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L48
.L50:
	.loc 1 387 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L51
	.loc 1 388 0
	movl	$1, 8(%rbp)
	.loc 1 389 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 390 0
	cmpl	$1, -4(%rbp)
	jne	.L52
.LBB8:
	.loc 1 392 0
	movl	$0, -4(%rbp)
	.loc 1 393 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	stmt_create
	movq	%rax, 32(%rbp)
	.loc 1 394 0
	movq	32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 395 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
.LBE8:
	jmp	.L48
.L52:
	.loc 1 398 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L48
.L51:
	.loc 1 400 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L54
	.loc 1 401 0
	movl	$1, 8(%rbp)
	.loc 1 402 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 403 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 404 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 405 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 406 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 407 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 408 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L48
.L54:
	.loc 1 411 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L48
	.loc 1 411 0 is_stmt 0 discriminator 2
	cmpl	$0, 8(%rbp)
	jne	.L48
	.loc 1 412 0 is_stmt 1
	leaq	.LC91(%rip), %rcx
	call	puts
	.loc 1 413 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC92(%rip), %rcx
	call	printf
	.loc 1 414 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 415 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L48:
.LBE7:
	.loc 1 420 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC93(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L55
	.loc 1 421 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 422 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 423 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 424 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 425 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L55:
	.loc 1 428 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	jne	.L56
.LBB9:
	.loc 1 429 0
	movl	$0, 12(%rbp)
	.loc 1 430 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 432 0
	movq	352(%rbp), %rax
	movq	360(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 0(%rbp)
	.loc 1 433 0
	cmpl	$-1, 0(%rbp)
	je	.L57
	.loc 1 434 0
	movl	0(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC94(%rip), %rcx
	call	printf
.L57:
	.loc 1 437 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L58
	.loc 1 438 0
	movl	$1, 12(%rbp)
	.loc 1 439 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 440 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L56
.L58:
	.loc 1 442 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L59
	.loc 1 443 0
	movl	$1, 12(%rbp)
	.loc 1 444 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 445 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L56
.L59:
	.loc 1 447 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L60
	.loc 1 448 0
	movl	$1, 12(%rbp)
	.loc 1 449 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 450 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 451 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 452 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 453 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 454 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 455 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L56
.L60:
	.loc 1 457 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L61
	.loc 1 458 0
	movl	$1, 12(%rbp)
	.loc 1 459 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 460 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 461 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 462 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 463 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 464 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 465 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L56
.L61:
	.loc 1 467 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L62
.LBB10:
	.loc 1 468 0
	movl	$1, 12(%rbp)
	.loc 1 469 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 470 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 471 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	atoi
	addl	%ebx, %eax
	movl	%eax, 20(%rbp)
	.loc 1 472 0
	movl	20(%rbp), %edx
	leaq	20368(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC95(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 473 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 474 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 475 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 476 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 477 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 478 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 479 0
	movq	-32(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE10:
	jmp	.L56
.L62:
	.loc 1 481 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L63
.LBB11:
	.loc 1 482 0
	movl	$1, 12(%rbp)
	.loc 1 483 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 484 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 485 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	atoi
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, 16(%rbp)
	.loc 1 486 0
	movl	16(%rbp), %edx
	leaq	20368(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC95(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 487 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 488 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 489 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 490 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 491 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 492 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 493 0
	movq	-32(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE11:
	jmp	.L56
.L63:
	.loc 1 495 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L64
	.loc 1 496 0
	movl	$1, 12(%rbp)
	.loc 1 497 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 498 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 499 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 500 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 501 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 502 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 503 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 504 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L64:
	.loc 1 506 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L65
	.loc 1 507 0
	movl	$1, 12(%rbp)
	.loc 1 508 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 509 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 510 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 511 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 512 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 513 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 514 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 515 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L65:
	.loc 1 517 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L66
	.loc 1 518 0
	movl	$1, 12(%rbp)
	.loc 1 519 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 520 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 521 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 522 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 523 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 524 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 525 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 526 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L66:
	.loc 1 528 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC62(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L67
	.loc 1 529 0
	movl	$1, 12(%rbp)
	.loc 1 530 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 531 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 532 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 533 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 534 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 535 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 536 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 537 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L67:
	.loc 1 539 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC64(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L68
	.loc 1 541 0
	movl	$1, 12(%rbp)
	.loc 1 542 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 543 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 544 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 545 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 546 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 547 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 548 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 549 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L68:
	.loc 1 551 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC68(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L69
	.loc 1 553 0
	movl	$1, 12(%rbp)
	.loc 1 554 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 555 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 556 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 557 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 558 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 559 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 560 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 561 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L69:
	.loc 1 563 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L70
	.loc 1 565 0
	movl	$1, 12(%rbp)
	.loc 1 566 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 567 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 568 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 569 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 570 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 571 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 572 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 573 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L70:
	.loc 1 575 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC70(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L71
	.loc 1 577 0
	movl	$1, 12(%rbp)
	.loc 1 578 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 579 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 580 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 581 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 582 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 583 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 584 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 585 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L71:
	.loc 1 587 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L72
	.loc 1 589 0
	movl	$1, 12(%rbp)
	.loc 1 590 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 591 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 592 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 593 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 594 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 595 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 596 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 597 0
	movl	$0, -8(%rbp)
	jmp	.L56
.L72:
	.loc 1 600 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L73
	.loc 1 600 0 is_stmt 0 discriminator 2
	cmpl	$0, 12(%rbp)
	jne	.L73
	.loc 1 601 0 is_stmt 1
	leaq	.LC96(%rip), %rcx
	call	puts
	.loc 1 602 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 603 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 604 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L56
.L73:
	.loc 1 607 0
	movl	364(%rbp), %eax
	cmpl	$1, %eax
	jne	.L56
	.loc 1 608 0
	leaq	.LC98(%rip), %rcx
	call	puts
	.loc 1 609 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 610 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 611 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L56:
.LBE9:
	.loc 1 618 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	jne	.L74
.LBB12:
	.loc 1 619 0
	movl	$0, 24(%rbp)
	.loc 1 621 0
	cmpl	$1, -12(%rbp)
	jne	.L75
	.loc 1 622 0
	leaq	.LC99(%rip), %rcx
	call	puts
	.loc 1 623 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 624 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 625 0
	movl	$0, -12(%rbp)
	.loc 1 626 0
	jmp	.L4
.L75:
	.loc 1 630 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L76
	.loc 1 631 0
	leaq	.LC100(%rip), %rcx
	call	puts
	.loc 1 632 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 633 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 634 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 635 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 636 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 637 0
	jmp	.L4
.L76:
	.loc 1 640 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 642 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L77
	.loc 1 643 0
	movl	$1, 24(%rbp)
	.loc 1 644 0
	leaq	.LC100(%rip), %rcx
	call	puts
	.loc 1 645 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 646 0
	movq	352(%rbp), %rax
	movq	360(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 0(%rbp)
	.loc 1 647 0
	cmpl	$-1, 0(%rbp)
	je	.L78
	.loc 1 648 0
	movl	0(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC94(%rip), %rcx
	call	printf
.L78:
	.loc 1 650 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 651 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L74
.L77:
	.loc 1 653 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L79
	.loc 1 654 0
	movl	$1, 24(%rbp)
	.loc 1 655 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 656 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L74
.L79:
	.loc 1 658 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L80
	.loc 1 659 0
	movl	$1, 24(%rbp)
	.loc 1 660 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 661 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L74
.L80:
	.loc 1 663 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L81
	.loc 1 664 0
	movl	$1, 24(%rbp)
	.loc 1 665 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 666 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L74
.L81:
	.loc 1 668 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L82
	.loc 1 669 0
	movl	$1, 24(%rbp)
	.loc 1 670 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 671 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L74
.L82:
	.loc 1 673 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L83
	.loc 1 674 0
	movl	$1, 24(%rbp)
	.loc 1 675 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 676 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L74
.L83:
	.loc 1 678 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L84
	.loc 1 679 0
	movl	$1, 24(%rbp)
	.loc 1 680 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC101(%rip), %rcx
	call	printf
	.loc 1 681 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 682 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 683 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 684 0
	jmp	.L4
.L84:
	.loc 1 686 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L85
.LBB13:
	.loc 1 687 0
	movl	$1, 24(%rbp)
	.loc 1 688 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 689 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 689 0
	movl	0(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	expr_create
	movq	%rax, 48(%rbp)
	.loc 1 690 0
	movq	48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 691 0
	movl	$0, -8(%rbp)
.LBE13:
	jmp	.L74
.L85:
	.loc 1 693 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L86
.LBB14:
	.loc 1 694 0
	movl	$1, 24(%rbp)
	.loc 1 695 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 696 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 696 0
	movl	0(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	expr_create
	movq	%rax, 40(%rbp)
	.loc 1 697 0
	movq	40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 698 0
	movl	$0, -8(%rbp)
.LBE14:
	jmp	.L74
.L86:
	.loc 1 700 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L87
	.loc 1 701 0
	movl	$1, 24(%rbp)
	.loc 1 702 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 703 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 704 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 705 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 706 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 707 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 708 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 709 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L87:
	.loc 1 711 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L88
	.loc 1 712 0
	movl	$1, 24(%rbp)
	.loc 1 713 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 714 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 715 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 716 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 717 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 718 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 719 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 720 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L88:
	.loc 1 722 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L89
	.loc 1 723 0
	movl	$1, 24(%rbp)
	.loc 1 724 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 725 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 726 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 727 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 728 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 729 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 730 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 731 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L89:
	.loc 1 733 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC62(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L90
	.loc 1 734 0
	movl	$1, 24(%rbp)
	.loc 1 735 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 736 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 737 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 738 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 739 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 740 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 741 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 742 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L90:
	.loc 1 744 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC64(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L91
	.loc 1 746 0
	movl	$1, 24(%rbp)
	.loc 1 747 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 748 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 749 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 750 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 751 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 752 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 753 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 754 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L91:
	.loc 1 756 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC68(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L92
	.loc 1 758 0
	movl	$1, 24(%rbp)
	.loc 1 759 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 760 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 761 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 762 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 763 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 764 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 765 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 766 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L92:
	.loc 1 768 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L93
	.loc 1 770 0
	movl	$1, 24(%rbp)
	.loc 1 771 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 772 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 773 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 774 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 775 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 776 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 777 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 778 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L93:
	.loc 1 780 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC70(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L94
	.loc 1 782 0
	movl	$1, 24(%rbp)
	.loc 1 783 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 784 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 785 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 786 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 787 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 788 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 789 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 790 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L94:
	.loc 1 792 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L95
	.loc 1 794 0
	movl	$1, 24(%rbp)
	.loc 1 795 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 796 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 797 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 798 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 799 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 800 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 801 0
	movq	-32(%rbp), %r8
	leaq	20480(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	0(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 802 0
	movl	$0, -8(%rbp)
	jmp	.L74
.L95:
	.loc 1 805 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L96
	.loc 1 805 0 is_stmt 0 discriminator 2
	cmpl	$0, 24(%rbp)
	jne	.L96
	.loc 1 806 0 is_stmt 1
	leaq	.LC102(%rip), %rcx
	call	puts
	.loc 1 807 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 808 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 809 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L74
.L96:
	.loc 1 812 0
	leaq	.LC103(%rip), %rcx
	call	puts
	.loc 1 813 0
	movq	352(%rbp), %rax
	movq	360(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 0(%rbp)
	.loc 1 814 0
	cmpl	$-1, 0(%rbp)
	je	.L97
	.loc 1 815 0
	movl	0(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC94(%rip), %rcx
	call	printf
.L97:
	.loc 1 817 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 818 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 819 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L74:
.LBE12:
	.loc 1 825 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC104(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L98
.LBB15:
	.loc 1 826 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 827 0
	movl	$0, 28(%rbp)
	.loc 1 828 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L99
	.loc 1 829 0
	leaq	.LC100(%rip), %rcx
	call	puts
	.loc 1 830 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 831 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 832 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L98
.L99:
	.loc 1 834 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L100
	.loc 1 835 0
	movl	$1, 28(%rbp)
	.loc 1 836 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 837 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 838 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 839 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 840 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 841 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 842 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L98
.L100:
	.loc 1 844 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L98
	.loc 1 847 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L98
	.loc 1 847 0 is_stmt 0 discriminator 2
	cmpl	$0, 28(%rbp)
	jne	.L98
	.loc 1 848 0 is_stmt 1
	leaq	.LC105(%rip), %rcx
	call	puts
	.loc 1 849 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 850 0
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 851 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L98:
.LBE15:
	.loc 1 858 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC106(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 859 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC107(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L102
.LBB16:
	.loc 1 860 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$11, %ecx
	call	stmt_create
	movq	%rax, 64(%rbp)
	.loc 1 861 0
	movq	64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 862 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 863 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 864 0
	jmp	.L4
.L102:
.LBE16:
	.loc 1 866 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC108(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L103
.LBB17:
	.loc 1 867 0
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$12, %ecx
	call	stmt_create
	movq	%rax, 56(%rbp)
	.loc 1 868 0
	movq	56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 869 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 870 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 871 0
	jmp	.L4
.L103:
.LBE17:
	.loc 1 873 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC109(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L104
	.loc 1 874 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 875 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 876 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 877 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 878 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 879 0
	leaq	20368(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildNewStatement
	.loc 1 880 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 881 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 882 0
	jmp	.L4
.L104:
	.loc 1 884 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC110(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L105
	.loc 1 885 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 886 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L106
	.loc 1 887 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 888 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 889 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 890 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 891 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 892 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 893 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 894 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 895 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L106:
	.loc 1 897 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L108
	.loc 1 898 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 899 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 900 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 901 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 902 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 903 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 904 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 905 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 906 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L108:
	.loc 1 908 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L109
	.loc 1 909 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 910 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 911 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 912 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 913 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 914 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 915 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 916 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 917 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L109:
	.loc 1 919 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L110
	.loc 1 920 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 921 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 922 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 923 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 924 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 925 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 926 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 927 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 928 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L110:
	.loc 1 930 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L111
	.loc 1 930 0 is_stmt 0 discriminator 1
	cmpl	$1, 4(%rbp)
	jne	.L111
	.loc 1 931 0 is_stmt 1
	movl	$0, 4(%rbp)
	.loc 1 932 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 933 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 934 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 935 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 936 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 937 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 938 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 939 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 940 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$11, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L111:
	.loc 1 942 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 942 0 is_stmt 0 discriminator 1
	cmpl	$0, 4(%rbp)
	jne	.L101
	.loc 1 943 0 is_stmt 1
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 944 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 945 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 946 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 947 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 948 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 949 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$12, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L101
.L105:
	.loc 1 952 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC111(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L112
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
.L112:
	.loc 1 953 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 954 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 955 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 956 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 957 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 958 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 959 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 960 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 961 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20368(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	0(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$10, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L101:
	.loc 1 969 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L113
	.loc 1 970 0
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L114
	.loc 1 972 0
	cmpl	$1, -8(%rbp)
	jne	.L115
	.loc 1 974 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 975 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 976 0
	jmp	.L4
.L115:
	.loc 1 979 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 980 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L116
	.loc 1 981 0
	leaq	.LC114(%rip), %rcx
	call	puts
	.loc 1 982 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 983 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 984 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 986 0
	movl	$1, -12(%rbp)
	.loc 1 987 0
	jmp	.L4
.L116:
	.loc 1 990 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L117
	.loc 1 991 0
	leaq	.LC115(%rip), %rcx
	call	puts
	.loc 1 992 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 993 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 994 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	.loc 1 995 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 996 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 997 0
	jmp	.L4
.L117:
	.loc 1 1000 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 1001 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1002 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 1003 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1005 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L118
	.loc 1 1006 0
	jmp	.L4
.L118:
	.loc 1 1009 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L119
	.loc 1 1010 0
	leaq	.LC116(%rip), %rcx
	call	puts
	.loc 1 1011 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 1012 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L120
.LBB18:
	.loc 1 1013 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$3, %ecx
	call	type_create
	movq	%rax, 240(%rbp)
	.loc 1 1014 0
	movq	240(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 248(%rbp)
	.loc 1 1015 0
	movq	248(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 256(%rbp)
	.loc 1 1016 0
	movq	256(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE18:
	jmp	.L114
.L120:
	.loc 1 1018 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L122
.LBB19:
	.loc 1 1019 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	type_create
	movq	%rax, 216(%rbp)
	.loc 1 1020 0
	movq	216(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 224(%rbp)
	.loc 1 1021 0
	movq	224(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 232(%rbp)
	.loc 1 1022 0
	movq	232(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE19:
	jmp	.L114
.L122:
	.loc 1 1024 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L123
.LBB20:
	.loc 1 1025 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	type_create
	movq	%rax, 192(%rbp)
	.loc 1 1026 0
	movq	192(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 200(%rbp)
	.loc 1 1027 0
	movq	200(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 208(%rbp)
	.loc 1 1028 0
	movq	208(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE20:
	jmp	.L114
.L123:
	.loc 1 1030 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L124
.LBB21:
	.loc 1 1031 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$2, %ecx
	call	type_create
	movq	%rax, 168(%rbp)
	.loc 1 1032 0
	movq	168(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 176(%rbp)
	.loc 1 1033 0
	movq	176(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 184(%rbp)
	.loc 1 1034 0
	movq	184(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE21:
	jmp	.L114
.L124:
	.loc 1 1036 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L125
.LBB22:
	.loc 1 1037 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$1, %ecx
	call	type_create
	movq	%rax, 144(%rbp)
	.loc 1 1038 0
	movq	144(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 152(%rbp)
	.loc 1 1039 0
	movq	152(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 160(%rbp)
	.loc 1 1040 0
	movq	160(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE22:
	jmp	.L114
.L125:
	.loc 1 1042 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L126
.LBB23:
	.loc 1 1043 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	type_create
	movq	%rax, 120(%rbp)
	.loc 1 1044 0
	movq	120(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 128(%rbp)
	.loc 1 1045 0
	movq	128(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 136(%rbp)
	.loc 1 1046 0
	movq	136(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE23:
	jmp	.L114
.L126:
	.loc 1 1048 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L127
	.loc 1 1048 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	leaq	.LC111(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L114
.L127:
.LBB24:
	.loc 1 1049 0 is_stmt 1
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1050 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 1051 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 96(%rbp)
	.loc 1 1052 0
	movq	96(%rbp), %rdx
	leaq	20368(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 104(%rbp)
	.loc 1 1053 0
	movq	104(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 112(%rbp)
	.loc 1 1054 0
	movq	112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	jmp	.L114
.L119:
.LBE24:
.LBB25:
	.loc 1 1059 0
	movl	-16(%rbp), %eax
	leaq	368(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20480(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1060 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 1061 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1062 0
	movl	-16(%rbp), %eax
	cltq
	movb	$0, 368(%rbp,%rax)
	.loc 1 1063 0
	leaq	20368(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 72(%rbp)
	.loc 1 1064 0
	movq	72(%rbp), %rdx
	leaq	20480(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 80(%rbp)
	.loc 1 1065 0
	movq	80(%rbp), %rax
	movl	0(%rbp), %edx
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
	movq	%rax, 88(%rbp)
	.loc 1 1066 0
	movq	88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.L114:
.LBE25:
	.loc 1 1070 0
	movl	364(%rbp), %eax
	cmpl	$1, %eax
	jne	.L113
	.loc 1 1072 0
	leaq	.LC117(%rip), %rcx
	call	puts
	.loc 1 1073 0
	movl	$0, 364(%rbp)
.L113:
	.loc 1 1077 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1078 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
.L4:
	.loc 1 34 0
	cmpq	$0, -24(%rbp)
	jne	.L128
	.loc 1 1081 0
	nop
	.loc 1 1082 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	20584(%rbp), %rbx
	xorq	(%rax), %rbx
	je	.L130
	call	__stack_chk_fail
	nop
.L130:
	addq	$20728, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 20744
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.section .rdata,"dr"
.LC118:
	.ascii "Going in return loop\0"
.LC119:
	.ascii "operator\0"
.LC120:
	.ascii "Not the type we need : %s\12\0"
	.align 8
.LC121:
	.ascii "now the starting eoc current : %s\12\0"
	.align 8
.LC122:
	.ascii "now the current in tempTop 0 : %s\12\0"
	.align 8
.LC123:
	.ascii "an operator already in the stack\0"
.LC124:
	.ascii "not an operator in\0"
	.align 8
.LC125:
	.ascii "before going in with value : %s\12\0"
.LC126:
	.ascii "now in the stack : %s\12\0"
.LC127:
	.ascii "before hereeee\0"
	.align 8
.LC128:
	.ascii "going for null break 1 --- in return stmt\0"
.LC129:
	.ascii "the tempCurrent now : %s\12\0"
	.align 8
.LC130:
	.ascii "going for null break 2 --- in return stmt\0"
	.align 8
.LC131:
	.ascii "in return eoc loop with value : %s\12\0"
	.align 8
.LC132:
	.ascii "going for eoc break --- in return stmt\0"
	.text
	.globl	checkTheStack
	.def	checkTheStack;	.scl	2;	.type	32;	.endef
	.seh_proc	checkTheStack
checkTheStack:
.LFB11:
	.loc 1 1087 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$20208, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	20208
	.cfi_def_cfa_offset 20224
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 20096
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%r8d, 20112(%rbp)
	movq	%r9, -40(%rbp)
	.loc 1 1087 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 20072(%rbp)
	xorl	%ecx, %ecx
	.loc 1 1090 0
	movl	$0, -4(%rbp)
	.loc 1 1094 0
	movl	$206, %ecx
	call	malloc
	movq	%rax, 16(%rbp)
	.loc 1 1096 0
	movq	-32(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L132
.LBB26:
	.loc 1 1097 0
	leaq	.LC118(%rip), %rcx
	call	puts
	.loc 1 1098 0
	movl	$0, 0(%rbp)
	.loc 1 1099 0
	movl	$0, 4(%rbp)
	.loc 1 1101 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
.L152:
	.loc 1 1105 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L133
	.loc 1 1105 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L133
	.loc 1 1105 0 discriminator 2
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	je	.L133
	.loc 1 1105 0 discriminator 4
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	je	.L133
	.loc 1 1105 0 discriminator 6
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L133
	.loc 1 1105 0 discriminator 7
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC104(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L133
	.loc 1 1106 0 is_stmt 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	leaq	.LC120(%rip), %rcx
	call	printf
	.loc 1 1107 0
	movq	-24(%rbp), %rax
	jmp	.L153
.L133:
	.loc 1 1110 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L135
	.loc 1 1111 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 1112 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L136
	.loc 1 1112 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L136
	.loc 1 1112 0 discriminator 2
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	je	.L136
	.loc 1 1112 0 discriminator 4
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	je	.L136
	.loc 1 1112 0 discriminator 6
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L136
	.loc 1 1112 0 discriminator 7
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC104(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L136
.LBB27:
	.loc 1 1113 0 is_stmt 1
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 40(%rbp)
	.loc 1 1114 0
	movq	40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1115 0
	movq	-24(%rbp), %rax
	jmp	.L153
.L136:
.LBE27:
.LBB28:
	.loc 1 1118 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1119 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 48(%rbp)
	.loc 1 1120 0
	movq	48(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 56(%rbp)
	.loc 1 1121 0
	movq	56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1122 0
	movq	-24(%rbp), %rax
	jmp	.L153
.L135:
.LBE28:
	.loc 1 1127 0
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L137
	.loc 1 1129 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L138
	.loc 1 1130 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L139
.L138:
	.loc 1 1133 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1134 0
	movl	$1, 4(%rbp)
.L139:
	.loc 1 1136 0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc 1 1137 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-4(%rbp), %eax
	leaq	64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 1138 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1139 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 1140 0
	cmpq	$0, -24(%rbp)
	je	.L140
	.loc 1 1140 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L141
.L140:
.LBB29:
	.loc 1 1142 0
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 24(%rbp)
	.loc 1 1143 0
	movq	24(%rbp), %rax
	movl	$-1, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 32(%rbp)
	.loc 1 1144 0
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1145 0
	movq	-24(%rbp), %rax
	jmp	.L153
.L141:
.LBE29:
	.loc 1 1148 0
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC122(%rip), %rcx
	call	printf
	.loc 1 1150 0
	jmp	.L142
.L137:
	.loc 1 1153 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L143
	.loc 1 1155 0
	cmpl	$1, 0(%rbp)
	jne	.L144
	.loc 1 1156 0
	leaq	.LC123(%rip), %rcx
	call	puts
	.loc 1 1158 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$103, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1159 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 1160 0
	jmp	.L142
.L144:
	.loc 1 1163 0
	leaq	.LC124(%rip), %rcx
	call	puts
	.loc 1 1164 0
	movl	$1, 0(%rbp)
	.loc 1 1165 0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc 1 1166 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %r8
	movl	-4(%rbp), %eax
	leaq	64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 1167 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1168 0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 1169 0
	jmp	.L142
.L143:
	.loc 1 1172 0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	je	.L145
	.loc 1 1172 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	jne	.L146
.L145:
	.loc 1 1173 0 is_stmt 1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC125(%rip), %rcx
	call	printf
	.loc 1 1174 0
	cmpl	$0, 4(%rbp)
	jne	.L147
	.loc 1 1175 0
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$106, %rax
	movq	%rax, %rcx
	call	strcpy
.L147:
	.loc 1 1176 0
	leaq	-4(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1177 0
	movl	-4(%rbp), %eax
	leaq	64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC126(%rip), %rcx
	call	printf
	.loc 1 1179 0
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1180 0
	movl	-4(%rbp), %r8d
	movl	-4(%rbp), %eax
	leaq	64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	checkForReturnOperator
	movq	%rax, 8(%rbp)
.L146:
	.loc 1 1183 0
	leaq	.LC127(%rip), %rcx
	call	puts
	.loc 1 1185 0
	cmpq	$0, 8(%rbp)
	jne	.L148
	.loc 1 1186 0
	leaq	.LC128(%rip), %rcx
	call	puts
	.loc 1 1187 0
	jmp	.L132
.L148:
	.loc 1 1190 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC129(%rip), %rcx
	call	printf
	.loc 1 1192 0
	cmpq	$0, 8(%rbp)
	jne	.L149
	.loc 1 1193 0
	leaq	.LC130(%rip), %rcx
	call	puts
	.loc 1 1194 0
	jmp	.L132
.L149:
	.loc 1 1197 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC113(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L150
	.loc 1 1198 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1199 0
	cmpq	$0, 8(%rbp)
	je	.L151
	.loc 1 1200 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC131(%rip), %rcx
	call	printf
.L151:
	.loc 1 1203 0
	leaq	.LC132(%rip), %rcx
	call	puts
	.loc 1 1204 0
	jmp	.L132
.L150:
	.loc 1 1207 0
	movq	8(%rbp), %rax
	jmp	.L153
.L142:
	.loc 1 1105 0
	jmp	.L152
.L132:
.LBE26:
	.loc 1 1233 0
	movq	-24(%rbp), %rax
.L153:
	.loc 1 1234 0
	movq	.refptr.__stack_chk_guard(%rip), %rdx
	movq	20072(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	.L154
	call	__stack_chk_fail
.L154:
	addq	$20208, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 20216
	ret
	.cfi_endproc
.LFE11:
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
	.long	0x1d82
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C89 7.4.0 -mtune=generic -march=x86-64 -g -ansi -funsigned-char -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie\0"
	.byte	0x1
	.ascii "./src/parser.c\0"
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
	.long	0x149
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "char\0"
	.uleb128 0x4
	.long	0x16c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0x3
	.byte	0xc
	.long	0x199
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0x4
	.byte	0x5e
	.long	0x179
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0x4
	.byte	0x72
	.long	0x13d
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0x4
	.byte	0x78
	.long	0x19b
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0x4
	.byte	0x91
	.long	0x13d
	.uleb128 0x6
	.ascii "wint_t\0"
	.byte	0x2
	.word	0x165
	.long	0x12d
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0x20e
	.uleb128 0x8
	.ascii "__wch\0"
	.byte	0x4
	.byte	0xa8
	.long	0x1db
	.uleb128 0x8
	.ascii "__wchb\0"
	.byte	0x4
	.byte	0xa9
	.long	0x20e
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x21e
	.uleb128 0xa
	.long	0x149
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x247
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x4
	.byte	0xa5
	.long	0x126
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x4
	.byte	0xaa
	.long	0x1ea
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0x4
	.byte	0xab
	.long	0x21e
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0x4
	.byte	0xaf
	.long	0x18a
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0x5
	.byte	0x19
	.long	0x12d
	.uleb128 0xd
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x5
	.byte	0x2f
	.long	0x2d8
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x31
	.long	0x2d8
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x5
	.byte	0x32
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x5
	.byte	0x32
	.long	0x126
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x5
	.byte	0x32
	.long	0x126
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x5
	.byte	0x32
	.long	0x126
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x5
	.byte	0x33
	.long	0x2de
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x278
	.uleb128 0x9
	.long	0x269
	.long	0x2ee
	.uleb128 0xa
	.long	0x149
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x39c
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x5
	.byte	0x39
	.long	0x126
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x5
	.byte	0x3a
	.long	0x126
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x5
	.byte	0x3b
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x5
	.byte	0x3c
	.long	0x126
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x5
	.byte	0x3d
	.long	0x126
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x5
	.byte	0x3e
	.long	0x126
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x5
	.byte	0x3f
	.long	0x126
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x5
	.byte	0x40
	.long	0x126
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x5
	.byte	0x41
	.long	0x126
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.secrel32	.LASF0
	.word	0x208
	.byte	0x5
	.byte	0x4a
	.long	0x3f2
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x5
	.byte	0x4b
	.long	0x3f2
	.byte	0
	.uleb128 0x10
	.ascii "_dso_handle\0"
	.byte	0x5
	.byte	0x4c
	.long	0x3f2
	.word	0x100
	.uleb128 0x10
	.ascii "_fntypes\0"
	.byte	0x5
	.byte	0x4e
	.long	0x269
	.word	0x200
	.uleb128 0x10
	.ascii "_is_cxa\0"
	.byte	0x5
	.byte	0x51
	.long	0x269
	.word	0x204
	.byte	0
	.uleb128 0x9
	.long	0x199
	.long	0x402
	.uleb128 0xa
	.long	0x149
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x5
	.byte	0x5d
	.long	0x449
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x5
	.byte	0x5e
	.long	0x449
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x5
	.byte	0x5f
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x5
	.byte	0x61
	.long	0x44f
	.byte	0x10
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x5
	.byte	0x62
	.long	0x39c
	.word	0x110
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x402
	.uleb128 0x9
	.long	0x45f
	.long	0x45f
	.uleb128 0xa
	.long	0x149
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x465
	.uleb128 0x13
	.uleb128 0xd
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x5
	.byte	0x75
	.long	0x492
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x5
	.byte	0x76
	.long	0x492
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x5
	.byte	0x77
	.long	0x126
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf2
	.uleb128 0x14
	.long	0x1cb
	.long	0x4b6
	.uleb128 0x15
	.long	0x4b6
	.uleb128 0x15
	.long	0x199
	.uleb128 0x15
	.long	0x660
	.uleb128 0x15
	.long	0x15e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x4c1
	.uleb128 0x4
	.long	0x4b6
	.uleb128 0x16
	.ascii "_reent\0"
	.word	0x760
	.byte	0x5
	.word	0x260
	.long	0x660
	.uleb128 0x17
	.ascii "_errno\0"
	.byte	0x5
	.word	0x262
	.long	0x126
	.byte	0
	.uleb128 0x17
	.ascii "_stdin\0"
	.byte	0x5
	.word	0x267
	.long	0x8eb
	.byte	0x8
	.uleb128 0x17
	.ascii "_stdout\0"
	.byte	0x5
	.word	0x267
	.long	0x8eb
	.byte	0x10
	.uleb128 0x17
	.ascii "_stderr\0"
	.byte	0x5
	.word	0x267
	.long	0x8eb
	.byte	0x18
	.uleb128 0x17
	.ascii "_inc\0"
	.byte	0x5
	.word	0x269
	.long	0x126
	.byte	0x20
	.uleb128 0x17
	.ascii "_emergency\0"
	.byte	0x5
	.word	0x26a
	.long	0xbad
	.byte	0x24
	.uleb128 0x17
	.ascii "_unspecified_locale_info\0"
	.byte	0x5
	.word	0x26d
	.long	0x126
	.byte	0x40
	.uleb128 0x17
	.ascii "_locale\0"
	.byte	0x5
	.word	0x26e
	.long	0xbc9
	.byte	0x48
	.uleb128 0x17
	.ascii "__sdidinit\0"
	.byte	0x5
	.word	0x270
	.long	0x126
	.byte	0x50
	.uleb128 0x17
	.ascii "__cleanup\0"
	.byte	0x5
	.word	0x272
	.long	0xbda
	.byte	0x58
	.uleb128 0x17
	.ascii "_result\0"
	.byte	0x5
	.word	0x275
	.long	0x2d8
	.byte	0x60
	.uleb128 0x17
	.ascii "_result_k\0"
	.byte	0x5
	.word	0x276
	.long	0x126
	.byte	0x68
	.uleb128 0x17
	.ascii "_p5s\0"
	.byte	0x5
	.word	0x277
	.long	0x2d8
	.byte	0x70
	.uleb128 0x17
	.ascii "_freelist\0"
	.byte	0x5
	.word	0x278
	.long	0xbe0
	.byte	0x78
	.uleb128 0x17
	.ascii "_cvtlen\0"
	.byte	0x5
	.word	0x27b
	.long	0x126
	.byte	0x80
	.uleb128 0x17
	.ascii "_cvtbuf\0"
	.byte	0x5
	.word	0x27c
	.long	0x660
	.byte	0x88
	.uleb128 0x17
	.ascii "_new\0"
	.byte	0x5
	.word	0x29f
	.long	0xb83
	.byte	0x90
	.uleb128 0x18
	.ascii "_atexit\0"
	.byte	0x5
	.word	0x2a3
	.long	0x449
	.word	0x1f8
	.uleb128 0x18
	.ascii "_atexit0\0"
	.byte	0x5
	.word	0x2a4
	.long	0x402
	.word	0x200
	.uleb128 0x18
	.ascii "_sig_func\0"
	.byte	0x5
	.word	0x2a8
	.long	0xbf1
	.word	0x518
	.uleb128 0x18
	.ascii "__sglue\0"
	.byte	0x5
	.word	0x2ad
	.long	0x8a7
	.word	0x520
	.uleb128 0x18
	.ascii "__sf\0"
	.byte	0x5
	.word	0x2af
	.long	0xbfd
	.word	0x538
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x16c
	.uleb128 0xe
	.byte	0x8
	.long	0x498
	.uleb128 0x14
	.long	0x1cb
	.long	0x68a
	.uleb128 0x15
	.long	0x4b6
	.uleb128 0x15
	.long	0x199
	.uleb128 0x15
	.long	0x68a
	.uleb128 0x15
	.long	0x15e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x174
	.uleb128 0xe
	.byte	0x8
	.long	0x66c
	.uleb128 0x14
	.long	0x1ab
	.long	0x6b4
	.uleb128 0x15
	.long	0x4b6
	.uleb128 0x15
	.long	0x199
	.uleb128 0x15
	.long	0x1ab
	.uleb128 0x15
	.long	0x126
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x696
	.uleb128 0x14
	.long	0x126
	.long	0x6ce
	.uleb128 0x15
	.long	0x4b6
	.uleb128 0x15
	.long	0x199
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x6ba
	.uleb128 0x9
	.long	0xf2
	.long	0x6e4
	.uleb128 0xa
	.long	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x6f4
	.uleb128 0xa
	.long	0x149
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x5
	.byte	0xef
	.long	0x874
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x5
	.byte	0xf0
	.long	0x492
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x5
	.byte	0xf1
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x5
	.byte	0xf2
	.long	0x126
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x5
	.byte	0xf3
	.long	0x103
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x5
	.byte	0xf4
	.long	0x103
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x5
	.byte	0xf5
	.long	0x466
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x5
	.byte	0xf6
	.long	0x126
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x5
	.byte	0xf8
	.long	0x4b6
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x5
	.byte	0xfb
	.long	0x199
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x5
	.byte	0xfd
	.long	0x666
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x5
	.byte	0xff
	.long	0x690
	.byte	0x48
	.uleb128 0x17
	.ascii "_seek\0"
	.byte	0x5
	.word	0x102
	.long	0x6b4
	.byte	0x50
	.uleb128 0x17
	.ascii "_close\0"
	.byte	0x5
	.word	0x103
	.long	0x6ce
	.byte	0x58
	.uleb128 0x17
	.ascii "_ub\0"
	.byte	0x5
	.word	0x106
	.long	0x466
	.byte	0x60
	.uleb128 0x17
	.ascii "_up\0"
	.byte	0x5
	.word	0x107
	.long	0x492
	.byte	0x70
	.uleb128 0x17
	.ascii "_ur\0"
	.byte	0x5
	.word	0x108
	.long	0x126
	.byte	0x78
	.uleb128 0x17
	.ascii "_ubuf\0"
	.byte	0x5
	.word	0x10b
	.long	0x6d4
	.byte	0x7c
	.uleb128 0x17
	.ascii "_nbuf\0"
	.byte	0x5
	.word	0x10c
	.long	0x6e4
	.byte	0x7f
	.uleb128 0x17
	.ascii "_lb\0"
	.byte	0x5
	.word	0x10f
	.long	0x466
	.byte	0x80
	.uleb128 0x17
	.ascii "_blksize\0"
	.byte	0x5
	.word	0x112
	.long	0x126
	.byte	0x90
	.uleb128 0x17
	.ascii "_flags2\0"
	.byte	0x5
	.word	0x113
	.long	0x126
	.byte	0x94
	.uleb128 0x17
	.ascii "_offset\0"
	.byte	0x5
	.word	0x115
	.long	0x19b
	.byte	0x98
	.uleb128 0x17
	.ascii "_seek64\0"
	.byte	0x5
	.word	0x116
	.long	0x892
	.byte	0xa0
	.uleb128 0x17
	.ascii "_lock\0"
	.byte	0x5
	.word	0x119
	.long	0x259
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbstate\0"
	.byte	0x5
	.word	0x11b
	.long	0x247
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	0x1ba
	.long	0x892
	.uleb128 0x15
	.long	0x4b6
	.uleb128 0x15
	.long	0x199
	.uleb128 0x15
	.long	0x1ba
	.uleb128 0x15
	.long	0x126
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x874
	.uleb128 0x6
	.ascii "__FILE\0"
	.byte	0x5
	.word	0x11d
	.long	0x6f4
	.uleb128 0x19
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x5
	.word	0x123
	.long	0x8e5
	.uleb128 0x17
	.ascii "_next\0"
	.byte	0x5
	.word	0x125
	.long	0x8e5
	.byte	0
	.uleb128 0x17
	.ascii "_niobs\0"
	.byte	0x5
	.word	0x126
	.long	0x126
	.byte	0x8
	.uleb128 0x17
	.ascii "_iobs\0"
	.byte	0x5
	.word	0x127
	.long	0x8eb
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x8a7
	.uleb128 0xe
	.byte	0x8
	.long	0x898
	.uleb128 0x19
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x5
	.word	0x13f
	.long	0x92f
	.uleb128 0x17
	.ascii "_seed\0"
	.byte	0x5
	.word	0x140
	.long	0x92f
	.byte	0
	.uleb128 0x17
	.ascii "_mult\0"
	.byte	0x5
	.word	0x141
	.long	0x92f
	.byte	0x6
	.uleb128 0x17
	.ascii "_add\0"
	.byte	0x5
	.word	0x142
	.long	0x110
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x110
	.long	0x93f
	.uleb128 0xa
	.long	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xd8
	.byte	0x5
	.word	0x280
	.long	0xaec
	.uleb128 0x17
	.ascii "_unused_rand\0"
	.byte	0x5
	.word	0x282
	.long	0x12d
	.byte	0
	.uleb128 0x17
	.ascii "_strtok_last\0"
	.byte	0x5
	.word	0x283
	.long	0x660
	.byte	0x8
	.uleb128 0x17
	.ascii "_asctime_buf\0"
	.byte	0x5
	.word	0x284
	.long	0xaec
	.byte	0x10
	.uleb128 0x17
	.ascii "_localtime_buf\0"
	.byte	0x5
	.word	0x285
	.long	0x2ee
	.byte	0x2c
	.uleb128 0x17
	.ascii "_gamma_signgam\0"
	.byte	0x5
	.word	0x286
	.long	0x126
	.byte	0x50
	.uleb128 0x17
	.ascii "_rand_next\0"
	.byte	0x5
	.word	0x287
	.long	0xafc
	.byte	0x58
	.uleb128 0x17
	.ascii "_r48\0"
	.byte	0x5
	.word	0x288
	.long	0x8f1
	.byte	0x60
	.uleb128 0x17
	.ascii "_mblen_state\0"
	.byte	0x5
	.word	0x289
	.long	0x247
	.byte	0x70
	.uleb128 0x17
	.ascii "_mbtowc_state\0"
	.byte	0x5
	.word	0x28a
	.long	0x247
	.byte	0x78
	.uleb128 0x17
	.ascii "_wctomb_state\0"
	.byte	0x5
	.word	0x28b
	.long	0x247
	.byte	0x80
	.uleb128 0x17
	.ascii "_l64a_buf\0"
	.byte	0x5
	.word	0x28c
	.long	0xb16
	.byte	0x88
	.uleb128 0x17
	.ascii "_signal_buf\0"
	.byte	0x5
	.word	0x28d
	.long	0xb26
	.byte	0x90
	.uleb128 0x17
	.ascii "_getdate_err\0"
	.byte	0x5
	.word	0x28e
	.long	0x126
	.byte	0xa8
	.uleb128 0x17
	.ascii "_mbrlen_state\0"
	.byte	0x5
	.word	0x28f
	.long	0x247
	.byte	0xac
	.uleb128 0x17
	.ascii "_mbrtowc_state\0"
	.byte	0x5
	.word	0x290
	.long	0x247
	.byte	0xb4
	.uleb128 0x17
	.ascii "_mbsrtowcs_state\0"
	.byte	0x5
	.word	0x291
	.long	0x247
	.byte	0xbc
	.uleb128 0x17
	.ascii "_wcrtomb_state\0"
	.byte	0x5
	.word	0x292
	.long	0x247
	.byte	0xc4
	.uleb128 0x17
	.ascii "_wcsrtombs_state\0"
	.byte	0x5
	.word	0x293
	.long	0x247
	.byte	0xcc
	.uleb128 0x17
	.ascii "_h_errno\0"
	.byte	0x5
	.word	0x294
	.long	0x126
	.byte	0xd4
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0xafc
	.uleb128 0xa
	.long	0x149
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.long	0x16c
	.long	0xb26
	.uleb128 0xa
	.long	0x149
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0xb36
	.uleb128 0xa
	.long	0x149
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.word	0x168
	.byte	0x5
	.word	0x299
	.long	0xb63
	.uleb128 0x17
	.ascii "_nextf\0"
	.byte	0x5
	.word	0x29c
	.long	0xb63
	.byte	0
	.uleb128 0x17
	.ascii "_nmalloc\0"
	.byte	0x5
	.word	0x29d
	.long	0xb73
	.byte	0xf0
	.byte	0
	.uleb128 0x9
	.long	0x492
	.long	0xb73
	.uleb128 0xa
	.long	0x149
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x12d
	.long	0xb83
	.uleb128 0xa
	.long	0x149
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.word	0x168
	.byte	0x5
	.word	0x27e
	.long	0xbad
	.uleb128 0x1d
	.ascii "_reent\0"
	.byte	0x5
	.word	0x295
	.long	0x93f
	.uleb128 0x1d
	.ascii "_unused\0"
	.byte	0x5
	.word	0x29e
	.long	0xb36
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0xbbd
	.uleb128 0xa
	.long	0x149
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.ascii "__locale_t\0"
	.uleb128 0xe
	.byte	0x8
	.long	0xbbd
	.uleb128 0x1f
	.long	0xbda
	.uleb128 0x15
	.long	0x4b6
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbcf
	.uleb128 0xe
	.byte	0x8
	.long	0x2d8
	.uleb128 0x1f
	.long	0xbf1
	.uleb128 0x15
	.long	0x126
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xbf7
	.uleb128 0xe
	.byte	0x8
	.long	0xbe6
	.uleb128 0x9
	.long	0x898
	.long	0xc0d
	.uleb128 0xa
	.long	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "_impure_ptr\0"
	.byte	0x5
	.word	0x32e
	.long	0x4b6
	.uleb128 0x20
	.ascii "_global_impure_ptr\0"
	.byte	0x5
	.word	0x32f
	.long	0x4bc
	.uleb128 0x9
	.long	0x174
	.long	0xc47
	.uleb128 0x21
	.byte	0
	.uleb128 0x4
	.long	0xc3c
	.uleb128 0x22
	.ascii "_ctype_\0"
	.byte	0x6
	.byte	0xae
	.long	0xc47
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0xd8
	.byte	0x7
	.byte	0x6
	.long	0xc9b
	.uleb128 0xc
	.ascii "pos\0"
	.byte	0x7
	.byte	0x8
	.long	0x126
	.byte	0
	.uleb128 0xc
	.ascii "type\0"
	.byte	0x7
	.byte	0x9
	.long	0xc9b
	.byte	0x4
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x7
	.byte	0xa
	.long	0xc9b
	.byte	0x68
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x7
	.byte	0xb
	.long	0xcab
	.byte	0xd0
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0xcab
	.uleb128 0xa
	.long	0x149
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xc5b
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x7
	.byte	0xc
	.long	0xc5b
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x12d
	.byte	0x8
	.byte	0x9
	.long	0xdd8
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
	.ascii "TYPE_ARRAY\0"
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
	.ascii "TYPE_VOID_POINTER\0"
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.ascii "type_t\0"
	.byte	0x8
	.byte	0x1b
	.long	0xcbc
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x8
	.byte	0x1d
	.long	0xe20
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x1e
	.long	0xdd8
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x8
	.byte	0x1f
	.long	0xe20
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x8
	.byte	0x20
	.long	0xe5f
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xde6
	.uleb128 0xd
	.ascii "param_list\0"
	.byte	0x18
	.byte	0x8
	.byte	0x24
	.long	0xe5f
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x25
	.long	0x660
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x26
	.long	0xe71
	.byte	0x8
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x27
	.long	0xe5f
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xe26
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x8
	.byte	0x21
	.long	0xde6
	.uleb128 0xe
	.byte	0x8
	.long	0xe65
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x12d
	.byte	0x8
	.byte	0x2e
	.long	0xfa4
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
	.byte	0x3f
	.long	0xe77
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x8
	.byte	0x41
	.long	0x104b
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x42
	.long	0xfa4
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x8
	.byte	0x43
	.long	0x104b
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x8
	.byte	0x44
	.long	0x104b
	.byte	0x10
	.uleb128 0xc
	.ascii "string_literal\0"
	.byte	0x8
	.byte	0x45
	.long	0x660
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x8
	.byte	0x46
	.long	0x660
	.byte	0x20
	.uleb128 0xc
	.ascii "integer_value\0"
	.byte	0x8
	.byte	0x47
	.long	0x126
	.byte	0x28
	.uleb128 0xc
	.ascii "character_value\0"
	.byte	0x8
	.byte	0x48
	.long	0x16c
	.byte	0x2c
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x49
	.long	0x126
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xfb2
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x8
	.byte	0x4a
	.long	0xfb2
	.uleb128 0x23
	.secrel32	.LASF5
	.byte	0x10
	.byte	0x8
	.byte	0x4c
	.long	0x1086
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x8
	.byte	0x4e
	.long	0x1086
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x4f
	.long	0x108c
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1051
	.uleb128 0xe
	.byte	0x8
	.long	0x105d
	.uleb128 0x25
	.secrel32	.LASF5
	.byte	0x8
	.byte	0x50
	.long	0x105d
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x12d
	.byte	0x8
	.byte	0x56
	.long	0x11ca
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
	.byte	0x6d
	.long	0x109d
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x50
	.byte	0x8
	.byte	0x6f
	.long	0x1282
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x70
	.long	0x11ca
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x8
	.byte	0x71
	.long	0x12d0
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x8
	.byte	0x72
	.long	0x1086
	.byte	0x10
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x8
	.byte	0x73
	.long	0x1086
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x8
	.byte	0x74
	.long	0x1086
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x8
	.byte	0x75
	.long	0x12d6
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x8
	.byte	0x76
	.long	0x12d6
	.byte	0x30
	.uleb128 0xc
	.ascii "expressionList\0"
	.byte	0x8
	.byte	0x77
	.long	0x12dc
	.byte	0x38
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x78
	.long	0x12d6
	.byte	0x40
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x79
	.long	0x126
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x8
	.byte	0x7f
	.long	0x12d0
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x80
	.long	0xc9b
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x81
	.long	0xe71
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0x82
	.long	0x1086
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x8
	.byte	0x83
	.long	0x12ee
	.byte	0x78
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x84
	.long	0x12d0
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1282
	.uleb128 0xe
	.byte	0x8
	.long	0x11d8
	.uleb128 0xe
	.byte	0x8
	.long	0x1092
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x8
	.byte	0x7a
	.long	0x11d8
	.uleb128 0xe
	.byte	0x8
	.long	0x12e2
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x8
	.byte	0x85
	.long	0x1282
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x9
	.byte	0x6
	.long	0x1348
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x9
	.byte	0x8
	.long	0x1348
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x9
	.byte	0x9
	.long	0x12ee
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x9
	.byte	0xa
	.long	0x1086
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x9
	.byte	0xb
	.long	0x134e
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x12f4
	.uleb128 0xe
	.byte	0x8
	.long	0x1300
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x9
	.byte	0xc
	.long	0x1300
	.uleb128 0x23
	.secrel32	.LASF6
	.byte	0xce
	.byte	0xa
	.byte	0x9
	.long	0x13aa
	.uleb128 0xc
	.ascii "temp\0"
	.byte	0xa
	.byte	0xb
	.long	0xc9b
	.byte	0
	.uleb128 0xc
	.ascii "tempOp\0"
	.byte	0xa
	.byte	0xc
	.long	0x13aa
	.byte	0x64
	.uleb128 0xc
	.ascii "tempOp2\0"
	.byte	0xa
	.byte	0xd
	.long	0x13aa
	.byte	0x67
	.uleb128 0xc
	.ascii "value\0"
	.byte	0xa
	.byte	0xe
	.long	0xc9b
	.byte	0x6a
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0x13ba
	.uleb128 0xa
	.long	0x149
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0xa
	.byte	0xf
	.long	0x1363
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.long	0x142f
	.uleb128 0xc
	.ascii "nIsStructMember\0"
	.byte	0xa
	.byte	0x14
	.long	0x126
	.byte	0
	.uleb128 0xc
	.ascii "nIsUnionMember\0"
	.byte	0xa
	.byte	0x15
	.long	0x126
	.byte	0x4
	.uleb128 0xc
	.ascii "nIsEnumMember\0"
	.byte	0xa
	.byte	0x16
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "nIsAssertMember\0"
	.byte	0xa
	.byte	0x17
	.long	0x126
	.byte	0xc
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF7
	.byte	0xa
	.byte	0x18
	.long	0x13c5
	.uleb128 0x28
	.ascii "checkTheStack\0"
	.byte	0x1
	.word	0x43f
	.long	0x15ff
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ff
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x43f
	.long	0x15ff
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20120
	.uleb128 0x2a
	.ascii "theStackTop\0"
	.byte	0x1
	.word	0x43f
	.long	0x660
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20128
	.uleb128 0x2a
	.ascii "top\0"
	.byte	0x1
	.word	0x43f
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.secrel32	.LASF9
	.byte	0x1
	.word	0x43f
	.long	0x1605
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20136
	.uleb128 0x2b
	.ascii "tempStack\0"
	.byte	0x1
	.word	0x441
	.long	0x160b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20032
	.uleb128 0x2b
	.ascii "tempTop\0"
	.byte	0x1
	.word	0x442
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20100
	.uleb128 0x2b
	.ascii "tempCurrent\0"
	.byte	0x1
	.word	0x443
	.long	0x15ff
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20088
	.uleb128 0x2b
	.ascii "tempVariablesNode\0"
	.byte	0x1
	.word	0x446
	.long	0x1621
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20080
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.ascii "operatorInsideStack\0"
	.byte	0x1
	.word	0x44a
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20096
	.uleb128 0x2b
	.ascii "identifierCopiedInTemp\0"
	.byte	0x1
	.word	0x44b
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20092
	.uleb128 0x2d
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x1591
	.uleb128 0x2e
	.secrel32	.LASF10
	.byte	0x1
	.word	0x459
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20056
	.byte	0
	.uleb128 0x2d
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x15c9
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x45f
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20048
	.uleb128 0x2e
	.secrel32	.LASF10
	.byte	0x1
	.word	0x460
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20040
	.byte	0
	.uleb128 0x2c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x476
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20072
	.uleb128 0x2e
	.secrel32	.LASF10
	.byte	0x1
	.word	0x477
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20064
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xcb1
	.uleb128 0xe
	.byte	0x8
	.long	0x1354
	.uleb128 0x9
	.long	0x16c
	.long	0x1621
	.uleb128 0xa
	.long	0x149
	.byte	0xc7
	.uleb128 0xa
	.long	0x149
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13ba
	.uleb128 0x2f
	.ascii "parsing\0"
	.byte	0x1
	.byte	0x12
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d37
	.uleb128 0x30
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x12
	.long	0x15ff
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20648
	.uleb128 0x30
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x12
	.long	0x1605
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20656
	.uleb128 0x31
	.ascii "top\0"
	.byte	0x1
	.byte	0x13
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20640
	.uleb128 0x31
	.ascii "partOfComment\0"
	.byte	0x1
	.byte	0x14
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20636
	.uleb128 0x31
	.ascii "notTheEndFlag\0"
	.byte	0x1
	.byte	0x15
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20632
	.uleb128 0x31
	.ascii "hasDefer\0"
	.byte	0x1
	.byte	0x16
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20628
	.uleb128 0x31
	.ascii "theStack\0"
	.byte	0x1
	.byte	0x17
	.long	0x160b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20256
	.uleb128 0x31
	.ascii "temp\0"
	.byte	0x1
	.byte	0x18
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.ascii "temp2\0"
	.byte	0x1
	.byte	0x18
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.ascii "sTypeOfMember\0"
	.byte	0x1
	.byte	0x19
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20624
	.uleb128 0x31
	.ascii "iIsPointer\0"
	.byte	0x1
	.byte	0x1a
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20620
	.uleb128 0x31
	.ascii "flags\0"
	.byte	0x1
	.byte	0x20
	.long	0x142f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20272
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1766
	.uleb128 0x31
	.ascii "main_stmt\0"
	.byte	0x1
	.byte	0x2e
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20280
	.byte	0
	.uleb128 0x2d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x17b7
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x144
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20304
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x145
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20296
	.uleb128 0x2b
	.ascii "struct_stmt\0"
	.byte	0x1
	.word	0x146
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20288
	.byte	0
	.uleb128 0x2d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1806
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x151
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20328
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x152
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20320
	.uleb128 0x2b
	.ascii "enum_stmt\0"
	.byte	0x1
	.word	0x153
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20312
	.byte	0
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1856
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x15e
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20352
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x15f
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20344
	.uleb128 0x2b
	.ascii "union_stmt\0"
	.byte	0x1
	.word	0x160
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20336
	.byte	0
	.uleb128 0x2d
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1881
	.uleb128 0x2b
	.ascii "theStmt\0"
	.byte	0x1
	.word	0x16a
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20360
	.byte	0
	.uleb128 0x2d
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x18d2
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x177
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20616
	.uleb128 0x2c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2b
	.ascii "defer_stmt\0"
	.byte	0x1
	.word	0x189
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20592
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1943
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x1ad
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20612
	.uleb128 0x2d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x191f
	.uleb128 0x2e
	.secrel32	.LASF14
	.byte	0x1
	.word	0x1d7
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20604
	.byte	0
	.uleb128 0x2c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2e
	.secrel32	.LASF14
	.byte	0x1
	.word	0x1e5
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20608
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x19c8
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x26b
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20600
	.uleb128 0x2d
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x199a
	.uleb128 0x2b
	.ascii "incrementExpr\0"
	.byte	0x1
	.word	0x2b1
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20576
	.byte	0
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.ascii "decrementExpr\0"
	.byte	0x1
	.word	0x2b8
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20584
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x19ef
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x33b
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20596
	.byte	0
	.uleb128 0x2d
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1a22
	.uleb128 0x2b
	.ascii "break_decl_stmt\0"
	.byte	0x1
	.word	0x35c
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20560
	.byte	0
	.uleb128 0x2d
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1a54
	.uleb128 0x2b
	.ascii "cont_decl_stmt\0"
	.byte	0x1
	.word	0x363
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20568
	.byte	0
	.uleb128 0x2d
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1ab8
	.uleb128 0x2b
	.ascii "int_type\0"
	.byte	0x1
	.word	0x3f5
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20384
	.uleb128 0x2b
	.ascii "int_declaration\0"
	.byte	0x1
	.word	0x3f6
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20376
	.uleb128 0x2b
	.ascii "int_decl_stmt\0"
	.byte	0x1
	.word	0x3f7
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20368
	.byte	0
	.uleb128 0x2d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1b09
	.uleb128 0x2b
	.ascii "string_type\0"
	.byte	0x1
	.word	0x3fb
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20408
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x3fc
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20400
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x3fd
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20392
	.byte	0
	.uleb128 0x2d
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1b73
	.uleb128 0x2b
	.ascii "float_type\0"
	.byte	0x1
	.word	0x401
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20432
	.uleb128 0x2b
	.ascii "float_declaration\0"
	.byte	0x1
	.word	0x402
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20424
	.uleb128 0x2b
	.ascii "float_decl_stmt\0"
	.byte	0x1
	.word	0x403
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20416
	.byte	0
	.uleb128 0x2d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1bda
	.uleb128 0x2b
	.ascii "char_type\0"
	.byte	0x1
	.word	0x407
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20456
	.uleb128 0x2b
	.ascii "char_declaration\0"
	.byte	0x1
	.word	0x408
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20448
	.uleb128 0x2b
	.ascii "char_decl_stmt\0"
	.byte	0x1
	.word	0x409
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20440
	.byte	0
	.uleb128 0x2d
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x1c41
	.uleb128 0x2b
	.ascii "bool_type\0"
	.byte	0x1
	.word	0x40d
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20480
	.uleb128 0x2b
	.ascii "bool_declaration\0"
	.byte	0x1
	.word	0x40e
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20472
	.uleb128 0x2b
	.ascii "bool_decl_stmt\0"
	.byte	0x1
	.word	0x40f
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20464
	.byte	0
	.uleb128 0x2d
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x1ca8
	.uleb128 0x2b
	.ascii "void_type\0"
	.byte	0x1
	.word	0x413
	.long	0xe71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20504
	.uleb128 0x2b
	.ascii "void_declaration\0"
	.byte	0x1
	.word	0x414
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20496
	.uleb128 0x2b
	.ascii "void_decl_stmt\0"
	.byte	0x1
	.word	0x415
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20488
	.byte	0
	.uleb128 0x2d
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1cf1
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x41b
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20528
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x41c
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20520
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x41d
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20512
	.byte	0
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x427
	.long	0x1086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20552
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x428
	.long	0x1348
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20544
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x429
	.long	0x12ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20536
	.byte	0
	.byte	0
	.uleb128 0x32
	.ascii "parseProgram\0"
	.byte	0x1
	.byte	0x7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.ascii "node\0"
	.byte	0x1
	.byte	0x7
	.long	0x15ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x8
	.long	0x1605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x9
	.long	0x15ff
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
.LASF14:
	.ascii "theResult\0"
.LASF2:
	.ascii "next\0"
.LASF12:
	.ascii "theDeclaration\0"
.LASF5:
	.ascii "expr_list\0"
.LASF7:
	.ascii "memberFlags\0"
.LASF11:
	.ascii "stringExpr\0"
.LASF6:
	.ascii "tempVariables\0"
.LASF9:
	.ascii "commandNode\0"
.LASF16:
	.ascii "string_decl_stmt\0"
.LASF10:
	.ascii "ret_decl_stmt\0"
.LASF3:
	.ascii "theType\0"
.LASF15:
	.ascii "string_declaration\0"
.LASF4:
	.ascii "memberOf\0"
.LASF13:
	.ascii "doneFlag\0"
.LASF8:
	.ascii "current\0"
	.ident	"GCC: (GNU) 7.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	print_commandList;	.scl	2;	.type	32;	.endef
	.def	init;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	push;	.scl	2;	.type	32;	.endef
	.def	stmt_create;	.scl	2;	.type	32;	.endef
	.def	push_commandList;	.scl	2;	.type	32;	.endef
	.def	pop;	.scl	2;	.type	32;	.endef
	.def	type_create;	.scl	2;	.type	32;	.endef
	.def	decl_create;	.scl	2;	.type	32;	.endef
	.def	ClearFlags;	.scl	2;	.type	32;	.endef
	.def	BuildSingleExprStatement;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	BuildDeclarationExprStatement;	.scl	2;	.type	32;	.endef
	.def	empty;	.scl	2;	.type	32;	.endef
	.def	isNumberType;	.scl	2;	.type	32;	.endef
	.def	CheckIfMemberOfStatement;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	BuildDeclarationStatement;	.scl	2;	.type	32;	.endef
	.def	BuildAssignAndCompareExprStatement;	.scl	2;	.type	32;	.endef
	.def	isIdentifierType;	.scl	2;	.type	32;	.endef
	.def	BuildDoubleExprStatement;	.scl	2;	.type	32;	.endef
	.def	expr_create;	.scl	2;	.type	32;	.endef
	.def	BuildNewStatement;	.scl	2;	.type	32;	.endef
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.def	checkForReturnOperator;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
