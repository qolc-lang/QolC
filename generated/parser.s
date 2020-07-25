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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 8 0
	movl	$32, %ecx
	call	malloc
	movq	%rax, -24(%rbp)
	.loc 1 9 0
	movl	$312, %ecx
	call	malloc
	movq	%rax, -16(%rbp)
	.loc 1 10 0
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 11 0
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	parsing
	.loc 1 12 0
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	print_commandList
	.loc 1 14 0
	nop
	.loc 1 15 0
	addq	$64, %rsp
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
	.ascii "if\0"
.LC37:
	.ascii "If statement to be built.\0"
.LC38:
	.ascii "while\0"
.LC39:
	.ascii "While statement to be built.\0"
.LC40:
	.ascii "for\0"
.LC41:
	.ascii "For statement to be built.\0"
.LC42:
	.ascii "each\0"
.LC43:
	.ascii "Each statement to be built.\0"
.LC44:
	.ascii "defer\0"
.LC45:
	.ascii "Defer statement to be built.\0"
.LC46:
	.ascii "+\0"
.LC47:
	.ascii "Operator + going in.\0"
.LC48:
	.ascii "-\0"
.LC49:
	.ascii "Operator - going in.\0"
.LC50:
	.ascii "*\0"
.LC51:
	.ascii "Operator * going in.\0"
.LC52:
	.ascii "/\0"
.LC53:
	.ascii "Operator / going in.\0"
.LC54:
	.ascii "++\0"
.LC55:
	.ascii "Operator ++ going in.\0"
.LC56:
	.ascii "--\0"
.LC57:
	.ascii "Operator -- going in.\0"
.LC58:
	.ascii "+=\0"
.LC59:
	.ascii "Operator += going in.\0"
.LC60:
	.ascii "-=\0"
.LC61:
	.ascii "Operator -= going in.\0"
.LC62:
	.ascii "*=\0"
.LC63:
	.ascii "Operator *= going in.\0"
.LC64:
	.ascii "/=\0"
.LC65:
	.ascii "Operator /= going in.\0"
.LC66:
	.ascii ">\0"
.LC67:
	.ascii "Operator > going in.\0"
.LC68:
	.ascii "<\0"
.LC69:
	.ascii "Operator < going in.\0"
.LC70:
	.ascii ">=\0"
.LC71:
	.ascii "Operator >= going in.\0"
.LC72:
	.ascii "<=\0"
.LC73:
	.ascii "Operator <= going in.\0"
.LC74:
	.ascii "@==\0"
.LC75:
	.ascii "Operator @== going in.\0"
.LC76:
	.ascii "Comment symbol going in.\0"
.LC77:
	.ascii "[\0"
.LC78:
	.ascii "Array start going in.\0"
.LC79:
	.ascii "]\0"
.LC80:
	.ascii "Array end going in.\0"
.LC81:
	.ascii "^\0"
.LC82:
	.ascii "Operator ^ going in.\0"
.LC83:
	.ascii "Value in the loop : %s\12\0"
.LC84:
	.ascii ".\0"
.LC85:
	.ascii "We spotted a dot. \0"
.LC86:
	.ascii "Now the current is : %s\12\0"
.LC87:
	.ascii "identifier\0"
.LC88:
	.ascii "Now the float value is : %s\12\0"
.LC89:
	.ascii "struct\0"
.LC90:
	.ascii "Struct statement to be built.\0"
.LC91:
	.ascii "The struct variable : %s\12\0"
.LC92:
	.ascii "enum\0"
.LC93:
	.ascii "Enum statement to be built.\0"
.LC94:
	.ascii "The enum variable : %s\12\0"
.LC95:
	.ascii "union\0"
.LC96:
	.ascii "Union statement to be built/\0"
.LC97:
	.ascii "The union variable : %s\12\0"
.LC98:
	.ascii "assert\0"
.LC99:
	.ascii "Assert statement to be built.\0"
.LC100:
	.ascii "return\0"
.LC101:
	.ascii "Return statement to be built.\0"
.LC102:
	.ascii "block end\0"
.LC103:
	.ascii "Going to clear the flags.\0"
	.align 8
.LC104:
	.ascii "The stack at string type is not empty\0"
.LC105:
	.ascii "Going to push the value : %s\12\0"
.LC106:
	.ascii "hexadecimal number\0"
.LC107:
	.ascii "It is member of : %d\12\0"
.LC108:
	.ascii "%d\0"
.LC109:
	.ascii "array end\0"
.LC110:
	.ascii "Valid array.\0"
.LC111:
	.ascii "Not a valid array.\0"
.LC112:
	.ascii "end of command\0"
	.align 8
.LC113:
	.ascii "The stack at number type is not empty.\0"
	.align 8
.LC114:
	.ascii "Going to insert the value : %s\12\0"
	.align 8
.LC115:
	.ascii "The stack at number type is empty.\0"
	.align 8
.LC116:
	.ascii "This is the last part of the comment\0"
	.align 8
.LC117:
	.ascii "Operator @ is in the stack now.\0"
.LC118:
	.ascii "global\0"
.LC119:
	.ascii "This is part of a comment %s\12\0"
	.align 8
.LC120:
	.ascii "The stack at identifier type is not empty\0"
.LC121:
	.ascii "Now the floatValue : %s\12\0"
.LC122:
	.ascii "Now in the stack 1 : %s\12\0"
	.align 8
.LC123:
	.ascii "The stack at identifier type is empty.\0"
.LC124:
	.ascii "character\0"
	.align 8
.LC125:
	.ascii "The stack at character type is not empty.\0"
.LC126:
	.ascii "keyword\0"
.LC127:
	.ascii "break\0"
.LC128:
	.ascii "continue\0"
.LC129:
	.ascii "new\0"
.LC130:
	.ascii "null\0"
.LC131:
	.ascii "true\0"
.LC132:
	.ascii "false\0"
.LC133:
	.ascii "End of the comment.\0"
	.align 8
.LC134:
	.ascii "Going to build delete statement.\0"
.LC135:
	.ascii "The current before delete %s\12\0"
	.align 8
.LC136:
	.ascii "The current after delete 1 %s\12\0"
.LC137:
	.ascii "Going for just a declaration\0"
	.align 8
.LC138:
	.ascii "Going to clear assert flags at the end of command.\0"
	.text
	.globl	parsing
	.def	parsing;	.scl	2;	.type	32;	.endef
	.seh_proc	parsing
parsing:
.LFB10:
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$21080, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	21080
	.cfi_def_cfa_offset 21104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 20976
	.seh_endprologue
	movq	%rcx, 8(%rbp)
	movq	%rdx, 0(%rbp)
	movq	%r8, -8(%rbp)
	.loc 1 20 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, 20936(%rbp)
	xorl	%ebx, %ebx
	.loc 1 22 0
	movl	$0, 32(%rbp)
	.loc 1 23 0
	movl	$0, 36(%rbp)
	.loc 1 24 0
	movl	$0, 40(%rbp)
	.loc 1 28 0
	movl	$0, 48(%rbp)
	.loc 1 30 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	init
	.loc 1 31 0
	leaq	20496(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 32 0
	leaq	20608(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 33 0
	leaq	20720(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 34 0
	leaq	20832(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 38 0
	jmp	.L4
.L170:
	.loc 1 39 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	.loc 1 41 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 42 0
	leaq	.LC2(%rip), %rcx
	call	puts
	.loc 1 43 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 44 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 45 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 46 0
	jmp	.L4
.L5:
	.loc 1 48 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
.LBB2:
	.loc 1 49 0
	leaq	.LC5(%rip), %rcx
	call	puts
	.loc 1 50 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$16, %ecx
	call	stmt_create
	movq	%rax, 424(%rbp)
	.loc 1 51 0
	movq	424(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 52 0
	movl	$1, 448(%rbp)
	.loc 1 53 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 54 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 55 0
	jmp	.L4
.L6:
.LBE2:
	.loc 1 57 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	.loc 1 58 0
	leaq	.LC7(%rip), %rcx
	call	puts
	.loc 1 59 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 60 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 61 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 62 0
	jmp	.L4
.L7:
	.loc 1 64 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	.loc 1 65 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 66 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 67 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 68 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 69 0
	jmp	.L4
.L8:
	.loc 1 71 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	.loc 1 72 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 73 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 74 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 75 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 76 0
	jmp	.L4
.L9:
	.loc 1 78 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	.loc 1 79 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 80 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 81 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 82 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 83 0
	jmp	.L4
.L10:
	.loc 1 85 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	.loc 1 86 0
	leaq	.LC15(%rip), %rcx
	call	puts
	.loc 1 87 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 88 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 89 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 90 0
	jmp	.L4
.L11:
	.loc 1 92 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	.loc 1 93 0
	leaq	.LC17(%rip), %rcx
	call	puts
	.loc 1 94 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 95 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 96 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 97 0
	jmp	.L4
.L12:
	.loc 1 99 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L13
	.loc 1 100 0
	leaq	.LC19(%rip), %rcx
	call	puts
	.loc 1 101 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 102 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 103 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 104 0
	jmp	.L4
.L13:
	.loc 1 106 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L14
	.loc 1 107 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 108 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 109 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 110 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 111 0
	jmp	.L4
.L14:
	.loc 1 113 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	.loc 1 114 0
	leaq	.LC23(%rip), %rcx
	call	puts
	.loc 1 115 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 116 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 117 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 118 0
	jmp	.L4
.L15:
	.loc 1 120 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L16
	.loc 1 121 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 122 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 123 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 124 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 125 0
	jmp	.L4
.L16:
	.loc 1 127 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	.loc 1 128 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 129 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 130 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 131 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 132 0
	jmp	.L4
.L17:
	.loc 1 134 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L18
	.loc 1 135 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 136 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 137 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 138 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 139 0
	jmp	.L4
.L18:
	.loc 1 141 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 142 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 143 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 144 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 145 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 146 0
	jmp	.L4
.L19:
	.loc 1 148 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L20
	.loc 1 151 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 152 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	.loc 1 154 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rcx
	call	printf
	.loc 1 155 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 156 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 157 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 158 0
	jmp	.L4
.L21:
	.loc 1 160 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 161 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 162 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 163 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 164 0
	jmp	.L4
.L20:
	.loc 1 166 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L22
	.loc 1 167 0
	leaq	.LC37(%rip), %rcx
	call	puts
	.loc 1 168 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 169 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 170 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 171 0
	jmp	.L4
.L22:
	.loc 1 173 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	.loc 1 174 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 175 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 176 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 177 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 178 0
	jmp	.L4
.L23:
	.loc 1 180 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	.loc 1 181 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 182 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 183 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 184 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 185 0
	jmp	.L4
.L24:
	.loc 1 187 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L25
	.loc 1 188 0
	leaq	.LC43(%rip), %rcx
	call	puts
	.loc 1 189 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 190 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 191 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 192 0
	jmp	.L4
.L25:
	.loc 1 194 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L26
	.loc 1 195 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 196 0
	movl	$1, 40(%rbp)
	.loc 1 197 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 198 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 199 0
	jmp	.L4
.L26:
	.loc 1 201 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L27
	.loc 1 202 0
	leaq	.LC47(%rip), %rcx
	call	puts
	.loc 1 203 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 204 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 205 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 206 0
	jmp	.L4
.L27:
	.loc 1 208 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L28
	.loc 1 209 0
	leaq	.LC49(%rip), %rcx
	call	puts
	.loc 1 210 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 211 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 212 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 213 0
	jmp	.L4
.L28:
	.loc 1 215 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L29
	.loc 1 216 0
	leaq	.LC51(%rip), %rcx
	call	puts
	.loc 1 217 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 218 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 219 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 220 0
	jmp	.L4
.L29:
	.loc 1 222 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	.loc 1 223 0
	leaq	.LC53(%rip), %rcx
	call	puts
	.loc 1 224 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 225 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 226 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 227 0
	jmp	.L4
.L30:
	.loc 1 229 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L31
	.loc 1 230 0
	leaq	.LC55(%rip), %rcx
	call	puts
	.loc 1 231 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 232 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 233 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 234 0
	movl	$1, 36(%rbp)
	.loc 1 235 0
	jmp	.L4
.L31:
	.loc 1 237 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC56(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L32
	.loc 1 238 0
	leaq	.LC57(%rip), %rcx
	call	puts
	.loc 1 239 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 240 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 241 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 242 0
	movl	$1, 36(%rbp)
	.loc 1 243 0
	jmp	.L4
.L32:
	.loc 1 245 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC58(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L33
	.loc 1 246 0
	leaq	.LC59(%rip), %rcx
	call	puts
	.loc 1 247 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 248 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 249 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 250 0
	movl	$1, 36(%rbp)
	.loc 1 251 0
	jmp	.L4
.L33:
	.loc 1 253 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L34
	.loc 1 254 0
	leaq	.LC61(%rip), %rcx
	call	puts
	.loc 1 255 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 256 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 257 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 258 0
	movl	$1, 36(%rbp)
	.loc 1 259 0
	jmp	.L4
.L34:
	.loc 1 261 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC62(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L35
	.loc 1 262 0
	leaq	.LC63(%rip), %rcx
	call	puts
	.loc 1 263 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 264 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 265 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 266 0
	movl	$1, 36(%rbp)
	.loc 1 267 0
	jmp	.L4
.L35:
	.loc 1 269 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC64(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L36
	.loc 1 270 0
	leaq	.LC65(%rip), %rcx
	call	puts
	.loc 1 271 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 272 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 273 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 274 0
	movl	$1, 36(%rbp)
	.loc 1 275 0
	jmp	.L4
.L36:
	.loc 1 277 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC66(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L37
	.loc 1 278 0
	leaq	.LC67(%rip), %rcx
	call	puts
	.loc 1 279 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 280 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 281 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 282 0
	jmp	.L4
.L37:
	.loc 1 284 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC68(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	.loc 1 285 0
	leaq	.LC69(%rip), %rcx
	call	puts
	.loc 1 286 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 287 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 288 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 289 0
	jmp	.L4
.L38:
	.loc 1 291 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC70(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	.loc 1 292 0
	leaq	.LC71(%rip), %rcx
	call	puts
	.loc 1 293 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 294 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 295 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 296 0
	jmp	.L4
.L39:
	.loc 1 298 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L40
	.loc 1 299 0
	leaq	.LC73(%rip), %rcx
	call	puts
	.loc 1 300 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 301 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 302 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 303 0
	jmp	.L4
.L40:
	.loc 1 305 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	.loc 1 306 0
	leaq	.LC75(%rip), %rcx
	call	puts
	.loc 1 307 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 308 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 309 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 310 0
	jmp	.L4
.L41:
	.loc 1 312 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L42
	.loc 1 313 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 314 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 315 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 316 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 317 0
	jmp	.L4
.L42:
	.loc 1 319 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC77(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L43
	.loc 1 320 0
	leaq	.LC78(%rip), %rcx
	call	puts
	.loc 1 321 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 322 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 323 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 324 0
	jmp	.L4
.L43:
	.loc 1 326 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L44
	.loc 1 327 0
	leaq	.LC80(%rip), %rcx
	call	puts
	.loc 1 331 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 332 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 333 0
	jmp	.L4
.L44:
	.loc 1 335 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L45
	.loc 1 336 0
	leaq	.LC82(%rip), %rcx
	call	puts
	.loc 1 337 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 338 0
	movl	$1, 48(%rbp)
	.loc 1 339 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 340 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 341 0
	jmp	.L4
.L45:
	.loc 1 345 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC83(%rip), %rcx
	call	printf
	.loc 1 347 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC84(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	.loc 1 348 0
	leaq	.LC85(%rip), %rcx
	call	puts
	.loc 1 349 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 350 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 351 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L46
	.loc 1 352 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 353 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 354 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 355 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 357 0
	leaq	20608(%rbp), %rdx
	leaq	20832(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 358 0
	leaq	20496(%rbp), %rdx
	leaq	20832(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	.loc 1 359 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L47
	.loc 1 360 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	jmp	.L46
.L47:
	.loc 1 363 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 364 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	.loc 1 365 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 366 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20832(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	.loc 1 367 0
	leaq	20832(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC88(%rip), %rcx
	call	printf
.L46:
	.loc 1 373 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC89(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L48
.LBB3:
	.loc 1 374 0
	leaq	.LC90(%rip), %rcx
	call	puts
	.loc 1 375 0
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC91(%rip), %rcx
	call	printf
	.loc 1 377 0
	movq	8(%rbp), %rax
	movq	%rax, 392(%rbp)
	.loc 1 378 0
	movl	448(%rbp), %eax
	cmpl	$1, %eax
	jne	.L49
	.loc 1 378 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L50
.L49:
	.loc 1 378 0 discriminator 2
	leaq	20464(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L50:
	.loc 1 379 0 is_stmt 1
	movq	392(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 380 0
	movq	392(%rbp), %rax
	addq	$4, %rax
	movl	$1970435187, (%rax)
	movw	$29795, 4(%rax)
	movb	$0, 6(%rax)
	.loc 1 381 0
	movq	-8(%rbp), %rcx
	leaq	20464(%rbp), %rdx
	movq	392(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 382 0
	movl	$1, 432(%rbp)
	.loc 1 383 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$13, %ecx
	call	type_create
	movq	%rax, 400(%rbp)
	.loc 1 384 0
	movq	400(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 408(%rbp)
	.loc 1 385 0
	movq	408(%rbp), %rax
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
	movq	%rax, 416(%rbp)
	.loc 1 386 0
	movq	416(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 387 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 388 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L48:
.LBE3:
	.loc 1 392 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC92(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L51
.LBB4:
	.loc 1 393 0
	leaq	.LC93(%rip), %rcx
	call	puts
	.loc 1 394 0
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC94(%rip), %rcx
	call	printf
	.loc 1 396 0
	movq	8(%rbp), %rax
	movq	%rax, 360(%rbp)
	.loc 1 397 0
	movl	448(%rbp), %eax
	cmpl	$1, %eax
	jne	.L52
	.loc 1 397 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L53
.L52:
	.loc 1 397 0 discriminator 2
	leaq	20464(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L53:
	.loc 1 398 0 is_stmt 1
	movq	360(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 399 0
	movq	360(%rbp), %rax
	addq	$4, %rax
	movl	$1836412517, (%rax)
	movb	$0, 4(%rax)
	.loc 1 400 0
	movq	-8(%rbp), %rcx
	leaq	20464(%rbp), %rdx
	movq	360(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 401 0
	movl	$1, 440(%rbp)
	.loc 1 402 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$14, %ecx
	call	type_create
	movq	%rax, 368(%rbp)
	.loc 1 403 0
	movq	368(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 376(%rbp)
	.loc 1 404 0
	movq	376(%rbp), %rax
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
	movq	%rax, 384(%rbp)
	.loc 1 405 0
	movq	384(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 406 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 407 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L51:
.LBE4:
	.loc 1 411 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC95(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L54
.LBB5:
	.loc 1 412 0
	leaq	.LC96(%rip), %rcx
	call	puts
	.loc 1 413 0
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC97(%rip), %rcx
	call	printf
	.loc 1 415 0
	movq	8(%rbp), %rax
	movq	%rax, 328(%rbp)
	.loc 1 416 0
	movl	448(%rbp), %eax
	cmpl	$1, %eax
	jne	.L55
	.loc 1 416 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L56
.L55:
	.loc 1 416 0 discriminator 2
	leaq	20464(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L56:
	.loc 1 417 0 is_stmt 1
	movq	328(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 418 0
	movq	328(%rbp), %rax
	addq	$4, %rax
	movl	$1869180533, (%rax)
	movw	$110, 4(%rax)
	.loc 1 419 0
	movq	-8(%rbp), %rcx
	leaq	20464(%rbp), %rdx
	movq	328(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 420 0
	movl	$1, 436(%rbp)
	.loc 1 421 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$15, %ecx
	call	type_create
	movq	%rax, 336(%rbp)
	.loc 1 422 0
	movq	336(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 344(%rbp)
	.loc 1 423 0
	movq	344(%rbp), %rax
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
	movq	%rax, 352(%rbp)
	.loc 1 424 0
	movq	352(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 425 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 426 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L54:
.LBE5:
	.loc 1 430 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC98(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L57
.LBB6:
	.loc 1 431 0
	leaq	.LC99(%rip), %rcx
	call	puts
	.loc 1 432 0
	movl	$1, 444(%rbp)
	.loc 1 433 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	stmt_create
	movq	%rax, 320(%rbp)
	.loc 1 434 0
	movq	320(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 435 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 436 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 437 0
	jmp	.L4
.L57:
.LBE6:
	.loc 1 440 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC100(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L58
.LBB7:
	.loc 1 441 0
	leaq	.LC101(%rip), %rcx
	call	puts
	.loc 1 442 0
	movl	$1, 452(%rbp)
	.loc 1 443 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$10, %ecx
	call	stmt_create
	movq	%rax, 312(%rbp)
	.loc 1 444 0
	movq	312(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 445 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 446 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 447 0
	jmp	.L4
.L58:
.LBE7:
	.loc 1 450 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC102(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L59
	.loc 1 451 0
	leaq	.LC103(%rip), %rcx
	call	puts
	.loc 1 452 0
	leaq	432(%rbp), %rax
	movq	%rax, %rcx
	call	ClearFlags
.L59:
	.loc 1 455 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L60
.LBB8:
	.loc 1 456 0
	movl	$0, 56(%rbp)
	.loc 1 457 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 458 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L61
	.loc 1 459 0
	movl	$1, 56(%rbp)
	.loc 1 460 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 461 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 462 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L60
.L61:
	.loc 1 464 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L62
	.loc 1 465 0
	movl	$1, 56(%rbp)
	.loc 1 466 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 467 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 468 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L60
.L62:
	.loc 1 470 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L63
	.loc 1 471 0
	movl	$1, 56(%rbp)
	.loc 1 472 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 473 0
	cmpl	$1, 40(%rbp)
	jne	.L64
.LBB9:
	.loc 1 475 0
	movl	$0, 40(%rbp)
	.loc 1 476 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	stmt_create
	movq	%rax, 80(%rbp)
	.loc 1 477 0
	movq	80(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 478 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
.LBE9:
	jmp	.L60
.L64:
	.loc 1 481 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L60
.L63:
	.loc 1 483 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L66
	.loc 1 484 0
	movl	$1, 56(%rbp)
	.loc 1 485 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 486 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 487 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 488 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 489 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 490 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 491 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L60
.L66:
	.loc 1 494 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L60
	.loc 1 494 0 is_stmt 0 discriminator 2
	cmpl	$0, 56(%rbp)
	jne	.L60
	.loc 1 495 0 is_stmt 1
	leaq	.LC104(%rip), %rcx
	call	puts
	.loc 1 496 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC105(%rip), %rcx
	call	printf
	.loc 1 497 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 498 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L60:
.LBE8:
	.loc 1 503 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC106(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L67
	.loc 1 504 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 505 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 506 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 507 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 508 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L67:
	.loc 1 511 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	jne	.L68
.LBB10:
	.loc 1 512 0
	movl	$0, 60(%rbp)
	.loc 1 513 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 515 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 516 0
	cmpl	$-1, 44(%rbp)
	je	.L69
	.loc 1 517 0
	movl	44(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC107(%rip), %rcx
	call	printf
.L69:
	.loc 1 520 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L70
	.loc 1 521 0
	movl	$1, 60(%rbp)
	.loc 1 522 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 523 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L68
.L70:
	.loc 1 525 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L71
	.loc 1 526 0
	movl	$1, 60(%rbp)
	.loc 1 527 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 528 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L68
.L71:
	.loc 1 530 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L72
	.loc 1 531 0
	movl	$1, 60(%rbp)
	.loc 1 532 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 533 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 534 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 535 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 536 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 537 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 538 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L68
.L72:
	.loc 1 540 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L73
	.loc 1 541 0
	movl	$1, 60(%rbp)
	.loc 1 542 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 543 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 544 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 545 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 546 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 547 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 548 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L68
.L73:
	.loc 1 550 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L74
.LBB11:
	.loc 1 551 0
	movl	$1, 60(%rbp)
	.loc 1 552 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 553 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 554 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	atoi
	addl	%ebx, %eax
	movl	%eax, 72(%rbp)
	.loc 1 555 0
	movl	72(%rbp), %edx
	leaq	20496(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC108(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 556 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 557 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 558 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 559 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 560 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 561 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 562 0
	movq	0(%rbp), %rcx
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE11:
	jmp	.L68
.L74:
	.loc 1 564 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L75
.LBB12:
	.loc 1 565 0
	movl	$1, 60(%rbp)
	.loc 1 566 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 567 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 568 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	atoi
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, 68(%rbp)
	.loc 1 569 0
	movl	68(%rbp), %edx
	leaq	20496(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC108(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 570 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 571 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 572 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 573 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 574 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 575 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 576 0
	movq	0(%rbp), %rcx
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE12:
	jmp	.L68
.L75:
	.loc 1 578 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC77(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L76
.LBB13:
	.loc 1 579 0
	movl	$1, 60(%rbp)
	.loc 1 580 0
	movl	$0, 64(%rbp)
	.loc 1 581 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 582 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 583 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 584 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 585 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 586 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 587 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 588 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 589 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 590 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 591 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC109(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L77
	.loc 1 593 0
	leaq	.LC110(%rip), %rcx
	call	puts
	.loc 1 594 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 595 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckArrayType
	movl	%eax, 64(%rbp)
	.loc 1 596 0
	movl	64(%rbp), %r9d
	leaq	20608(%rbp), %r8
	movq	0(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, %rcx
	call	BuildDeclarationExprStatement
	.loc 1 597 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L68
.L77:
	.loc 1 598 0
	leaq	.LC111(%rip), %rcx
	call	puts
	jmp	.L68
.L76:
.LBE13:
	.loc 1 600 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L79
	.loc 1 601 0
	movl	$1, 60(%rbp)
	.loc 1 602 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 603 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 604 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L80
	.loc 1 606 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L80:
	.loc 1 608 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 609 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 610 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 611 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 612 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 613 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L79:
	.loc 1 615 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L81
	.loc 1 616 0
	movl	$1, 60(%rbp)
	.loc 1 617 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 618 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 619 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L82
	.loc 1 621 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L82:
	.loc 1 623 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 624 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 625 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 626 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 627 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 628 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L81:
	.loc 1 630 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L83
	.loc 1 631 0
	movl	$1, 60(%rbp)
	.loc 1 632 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 633 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 634 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L84
	.loc 1 636 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L84:
	.loc 1 638 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 639 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 640 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 641 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 642 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 643 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L83:
	.loc 1 645 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L85
	.loc 1 646 0
	movl	$1, 60(%rbp)
	.loc 1 647 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 648 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 649 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L86
	.loc 1 651 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L86:
	.loc 1 653 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 654 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 655 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 656 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 657 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 658 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L85:
	.loc 1 660 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L87
	.loc 1 662 0
	movl	$1, 60(%rbp)
	.loc 1 663 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 664 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 665 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 666 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 667 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 668 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 669 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 670 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L87:
	.loc 1 672 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L88
	.loc 1 674 0
	movl	$1, 60(%rbp)
	.loc 1 675 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 676 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 677 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 678 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 679 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 680 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 681 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 682 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L88:
	.loc 1 684 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L89
	.loc 1 686 0
	movl	$1, 60(%rbp)
	.loc 1 687 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 688 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 689 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 690 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 691 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 692 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 693 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 694 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L89:
	.loc 1 696 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L90
	.loc 1 698 0
	movl	$1, 60(%rbp)
	.loc 1 699 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 700 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 701 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 702 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 703 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 704 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 705 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 706 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L90:
	.loc 1 708 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L91
	.loc 1 710 0
	movl	$1, 60(%rbp)
	.loc 1 711 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 712 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 713 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 714 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 715 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 716 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 717 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 718 0
	movl	$0, 36(%rbp)
	jmp	.L68
.L91:
	.loc 1 721 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L92
	.loc 1 721 0 is_stmt 0 discriminator 2
	cmpl	$0, 60(%rbp)
	jne	.L92
	.loc 1 722 0 is_stmt 1
	leaq	.LC113(%rip), %rcx
	call	puts
	.loc 1 723 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 724 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 725 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L68
.L92:
	.loc 1 728 0
	movl	444(%rbp), %eax
	cmpl	$1, %eax
	jne	.L68
	.loc 1 729 0
	leaq	.LC115(%rip), %rcx
	call	puts
	.loc 1 730 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 731 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 732 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L68:
.LBE10:
	.loc 1 739 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	jne	.L93
.LBB14:
	.loc 1 740 0
	movl	$0, 52(%rbp)
	.loc 1 742 0
	cmpl	$1, 32(%rbp)
	jne	.L94
	.loc 1 743 0
	leaq	.LC116(%rip), %rcx
	call	puts
	.loc 1 744 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 745 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 746 0
	movl	$0, 32(%rbp)
	.loc 1 747 0
	jmp	.L4
.L94:
	.loc 1 751 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L95
	.loc 1 752 0
	leaq	.LC117(%rip), %rcx
	call	puts
	.loc 1 753 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 754 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 755 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 756 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 757 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 758 0
	jmp	.L4
.L95:
	.loc 1 761 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 763 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L96
	.loc 1 764 0
	movl	$1, 52(%rbp)
	.loc 1 765 0
	leaq	.LC117(%rip), %rcx
	call	puts
	.loc 1 766 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 767 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 768 0
	cmpl	$-1, 44(%rbp)
	je	.L97
.LBB15:
	.loc 1 770 0
	leaq	20464(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 771 0
	movl	44(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC107(%rip), %rcx
	call	printf
	.loc 1 772 0
	cmpl	$1, 44(%rbp)
	jne	.L98
	.loc 1 772 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1970435187, (%rax)
	movw	$29795, 4(%rax)
	movb	$0, 6(%rax)
	jmp	.L99
.L98:
	.loc 1 773 0 is_stmt 1
	cmpl	$2, 44(%rbp)
	jne	.L100
	.loc 1 773 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1869180533, (%rax)
	movw	$110, 4(%rax)
	jmp	.L99
.L100:
	.loc 1 774 0 is_stmt 1
	cmpl	$3, 44(%rbp)
	jne	.L101
	.loc 1 774 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1836412517, (%rax)
	movb	$0, 4(%rax)
	jmp	.L99
.L101:
	.loc 1 775 0 is_stmt 1
	cmpl	$4, 44(%rbp)
	jne	.L102
	.loc 1 775 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1702064993, (%rax)
	movw	$29810, 4(%rax)
	movb	$0, 6(%rax)
	jmp	.L99
.L102:
	.loc 1 776 0 is_stmt 1
	cmpl	$5, 44(%rbp)
	jne	.L99
	.loc 1 776 0 is_stmt 0 discriminator 1
	leaq	20464(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
.L99:
	.loc 1 778 0 is_stmt 1
	movq	-8(%rbp), %rcx
	leaq	20464(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
.LBE15:
	jmp	.L103
.L97:
	.loc 1 781 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC118(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
.L103:
	.loc 1 783 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 784 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L93
.L96:
	.loc 1 786 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L104
	.loc 1 787 0
	movl	$1, 52(%rbp)
	.loc 1 788 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 789 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L93
.L104:
	.loc 1 791 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L105
	.loc 1 792 0
	movl	$1, 52(%rbp)
	.loc 1 793 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 794 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L93
.L105:
	.loc 1 796 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L106
	.loc 1 797 0
	movl	$1, 52(%rbp)
	.loc 1 798 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 799 0
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L93
.L106:
	.loc 1 801 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L107
	.loc 1 802 0
	movl	$1, 52(%rbp)
	.loc 1 803 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 804 0
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L93
.L107:
	.loc 1 806 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L108
	.loc 1 807 0
	movl	$1, 52(%rbp)
	.loc 1 808 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 809 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L93
.L108:
	.loc 1 811 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L109
	.loc 1 812 0
	movl	$1, 52(%rbp)
	.loc 1 813 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC119(%rip), %rcx
	call	printf
	.loc 1 814 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 815 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 816 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 817 0
	jmp	.L4
.L109:
	.loc 1 820 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L93
	.loc 1 824 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	je	.L93
	.loc 1 828 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	je	.L93
	.loc 1 832 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	je	.L93
	.loc 1 835 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L110
.LBB16:
	.loc 1 836 0
	movl	$1, 52(%rbp)
	.loc 1 837 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 838 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 838 0
	movl	44(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	expr_create
	movq	%rax, 96(%rbp)
	.loc 1 839 0
	movq	96(%rbp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 840 0
	movl	$0, 36(%rbp)
.LBE16:
	jmp	.L93
.L110:
	.loc 1 842 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L111
.LBB17:
	.loc 1 843 0
	movl	$1, 52(%rbp)
	.loc 1 844 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 845 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 845 0
	movl	44(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	expr_create
	movq	%rax, 88(%rbp)
	.loc 1 846 0
	movq	88(%rbp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 847 0
	movl	$0, 36(%rbp)
.LBE17:
	jmp	.L93
.L111:
	.loc 1 849 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L112
	.loc 1 850 0
	movl	$1, 52(%rbp)
	.loc 1 851 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 852 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 853 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L113
	.loc 1 855 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L113:
	.loc 1 857 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 858 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 859 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 860 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 861 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 862 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L112:
	.loc 1 864 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L114
	.loc 1 865 0
	movl	$1, 52(%rbp)
	.loc 1 866 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 867 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 868 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L115
	.loc 1 870 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L115:
	.loc 1 872 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 873 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 874 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 875 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 876 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 877 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L114:
	.loc 1 879 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L116
	.loc 1 880 0
	movl	$1, 52(%rbp)
	.loc 1 881 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 882 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 883 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L117
	.loc 1 885 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L117:
	.loc 1 887 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 888 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 889 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 890 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 891 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 892 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L116:
	.loc 1 894 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L118
	.loc 1 895 0
	movl	$1, 52(%rbp)
	.loc 1 896 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 897 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 898 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L119
	.loc 1 900 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L119:
	.loc 1 902 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC86(%rip), %rcx
	call	printf
	.loc 1 903 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 904 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 905 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 906 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 907 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L118:
	.loc 1 909 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L120
	.loc 1 911 0
	movl	$1, 52(%rbp)
	.loc 1 912 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 913 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 914 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 915 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 916 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 917 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 918 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 919 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L120:
	.loc 1 921 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L121
	.loc 1 923 0
	movl	$1, 52(%rbp)
	.loc 1 924 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 925 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 926 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 927 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 928 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 929 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 930 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 931 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L121:
	.loc 1 933 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L122
	.loc 1 935 0
	movl	$1, 52(%rbp)
	.loc 1 936 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 937 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 938 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 939 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 940 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 941 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 942 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 943 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L122:
	.loc 1 945 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L123
	.loc 1 947 0
	movl	$1, 52(%rbp)
	.loc 1 948 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 949 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 950 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 951 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 952 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 953 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 954 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 955 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L123:
	.loc 1 957 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L124
	.loc 1 959 0
	movl	$1, 52(%rbp)
	.loc 1 960 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 961 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 962 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 963 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 964 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 965 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 966 0
	movq	0(%rbp), %r8
	leaq	20608(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 967 0
	movl	$0, 36(%rbp)
	jmp	.L93
.L124:
	.loc 1 971 0
	leaq	20608(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L125
	.loc 1 972 0
	movl	$1, 52(%rbp)
	.loc 1 973 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 974 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L126
.L125:
	.loc 1 976 0
	leaq	20608(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L127
	.loc 1 977 0
	movl	$1, 52(%rbp)
	.loc 1 978 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 979 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L126
.L127:
	.loc 1 981 0
	leaq	20608(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L128
	.loc 1 982 0
	movl	$1, 52(%rbp)
	.loc 1 983 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 984 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L126
.L128:
	.loc 1 986 0
	leaq	20608(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L126
	.loc 1 987 0
	movl	$1, 52(%rbp)
	.loc 1 988 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 989 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20496(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L126:
	.loc 1 992 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L129
	.loc 1 992 0 is_stmt 0 discriminator 2
	cmpl	$0, 52(%rbp)
	jne	.L129
	.loc 1 993 0 is_stmt 1
	leaq	.LC120(%rip), %rcx
	call	puts
	.loc 1 995 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L130
	.loc 1 996 0
	movl	$1, 52(%rbp)
	.loc 1 997 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 998 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 999 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1000 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1001 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1002 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1003 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L130:
	.loc 1 1005 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L132
	.loc 1 1006 0
	movl	$1, 52(%rbp)
	.loc 1 1007 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1008 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1009 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1010 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1011 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1012 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1013 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L132:
	.loc 1 1015 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L133
	.loc 1 1016 0
	movl	$1, 52(%rbp)
	.loc 1 1017 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1018 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1019 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1020 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1021 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1022 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1023 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L133:
	.loc 1 1025 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L134
	.loc 1 1026 0
	movl	$1, 52(%rbp)
	.loc 1 1027 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1028 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1029 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1030 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1031 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1032 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1033 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L134:
	.loc 1 1035 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L135
	.loc 1 1036 0
	movl	$1, 52(%rbp)
	.loc 1 1037 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1038 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1039 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1040 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1041 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1042 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1043 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$10, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L135:
	.loc 1 1045 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L136
	.loc 1 1046 0
	movl	$1, 52(%rbp)
	.loc 1 1047 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1048 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1049 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1050 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1051 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1052 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1053 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$12, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	.loc 1 995 0
	jmp	.L93
.L136:
	.loc 1 1056 0
	movzbl	20832(%rbp), %eax
	testb	%al, %al
	je	.L137
	.loc 1 1057 0
	leaq	20832(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1058 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC122(%rip), %rcx
	call	printf
	.loc 1 1059 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %r8
	movq	0(%rbp), %rdx
	leaq	20832(%rbp), %rax
	movl	44(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildDeclarationExprStatement
	.loc 1 1060 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1061 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1062 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1063 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1064 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1065 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1066 0
	movb	$0, 20832(%rbp)
	.loc 1 995 0
	jmp	.L93
.L137:
	.loc 1 1069 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 1070 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 1071 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 995 0
	jmp	.L93
.L129:
	.loc 1 1077 0
	leaq	.LC123(%rip), %rcx
	call	puts
	.loc 1 1078 0
	movq	432(%rbp), %rax
	movq	440(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	448(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 44(%rbp)
	.loc 1 1079 0
	cmpl	$-1, 44(%rbp)
	je	.L138
	.loc 1 1080 0
	movl	44(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC107(%rip), %rcx
	call	printf
	.loc 1 1081 0
	cmpl	$6, 44(%rbp)
	jne	.L138
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L138:
	.loc 1 1083 0 is_stmt 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 1084 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 1085 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L93:
.LBE14:
	.loc 1 1091 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC124(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L139
.LBB18:
	.loc 1 1092 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1093 0
	movl	$0, 76(%rbp)
	.loc 1 1094 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L140
	.loc 1 1095 0
	leaq	.LC117(%rip), %rcx
	call	puts
	.loc 1 1096 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 1097 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 1098 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L139
.L140:
	.loc 1 1100 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L141
	.loc 1 1101 0
	movl	$1, 76(%rbp)
	.loc 1 1102 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1103 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1104 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1105 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1106 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1107 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1108 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L139
.L141:
	.loc 1 1110 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	je	.L139
	.loc 1 1113 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L139
	.loc 1 1113 0 is_stmt 0 discriminator 2
	cmpl	$0, 76(%rbp)
	jne	.L139
	.loc 1 1114 0 is_stmt 1
	leaq	.LC125(%rip), %rcx
	call	puts
	.loc 1 1115 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rcx
	call	printf
	.loc 1 1116 0
	movl	28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbp)
	.loc 1 1117 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	28(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L139:
.LBE18:
	.loc 1 1123 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC126(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L142
	.loc 1 1124 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC127(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L143
.LBB19:
	.loc 1 1125 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$11, %ecx
	call	stmt_create
	movq	%rax, 112(%rbp)
	.loc 1 1126 0
	movq	112(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1127 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1128 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1129 0
	jmp	.L4
.L143:
.LBE19:
	.loc 1 1131 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC128(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L144
.LBB20:
	.loc 1 1132 0
	movl	$-1, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$12, %ecx
	call	stmt_create
	movq	%rax, 104(%rbp)
	.loc 1 1133 0
	movq	104(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1134 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1135 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1136 0
	jmp	.L4
.L144:
.LBE20:
	.loc 1 1138 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC129(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L145
	.loc 1 1139 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1140 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1141 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1142 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1143 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1144 0
	leaq	20496(%rbp), %rcx
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildNewStatement
	.loc 1 1145 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1146 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1147 0
	jmp	.L4
.L145:
	.loc 1 1149 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC130(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L146
	.loc 1 1150 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1151 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L147
	.loc 1 1152 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1153 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1154 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1155 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1156 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1157 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1158 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1159 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1160 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L147:
	.loc 1 1162 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L149
	.loc 1 1163 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1164 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1165 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1166 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1167 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1168 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1169 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1170 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1171 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L149:
	.loc 1 1173 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L150
	.loc 1 1174 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1175 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1176 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1177 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1178 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1179 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1180 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1181 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1182 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L150:
	.loc 1 1184 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L151
	.loc 1 1185 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1186 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1187 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1188 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1189 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1190 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1191 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1192 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1193 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L151:
	.loc 1 1195 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L152
	.loc 1 1195 0 is_stmt 0 discriminator 1
	cmpl	$1, 48(%rbp)
	jne	.L152
	.loc 1 1196 0 is_stmt 1
	movl	$0, 48(%rbp)
	.loc 1 1197 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1198 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1199 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1200 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1201 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1202 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1203 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1204 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1205 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$11, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L152:
	.loc 1 1207 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L142
	.loc 1 1207 0 is_stmt 0 discriminator 1
	cmpl	$0, 48(%rbp)
	jne	.L142
	.loc 1 1208 0 is_stmt 1
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1209 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1210 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1211 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1212 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1213 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1214 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$12, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L142
.L146:
	.loc 1 1217 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC131(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L153
	.loc 1 1217 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC132(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L142
.L153:
	.loc 1 1218 0 is_stmt 1
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1219 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L142
	.loc 1 1220 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1221 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1222 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1223 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1224 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1225 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1226 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20496(%rbp), %r8
	movq	0(%rbp), %rax
	movl	44(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$10, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L142:
	.loc 1 1234 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC112(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L154
	.loc 1 1236 0
	movl	28(%rbp), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 1238 0
	movl	452(%rbp), %eax
	cmpl	$1, %eax
	jne	.L156
	.loc 1 1239 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1240 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L156:
	.loc 1 1243 0
	cmpl	$1, 36(%rbp)
	jne	.L157
	.loc 1 1245 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1246 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1247 0
	jmp	.L4
.L157:
	.loc 1 1250 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1251 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L158
	.loc 1 1252 0
	leaq	.LC133(%rip), %rcx
	call	puts
	.loc 1 1253 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1254 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1255 0
	movl	$0, 32(%rbp)
	.loc 1 1256 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1257 0
	jmp	.L4
.L158:
	.loc 1 1260 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L159
	.loc 1 1261 0
	leaq	.LC134(%rip), %rcx
	call	puts
	.loc 1 1262 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC135(%rip), %rcx
	call	printf
	.loc 1 1263 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1264 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC136(%rip), %rcx
	call	printf
	.loc 1 1265 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1266 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	.loc 1 1267 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1268 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1269 0
	jmp	.L4
.L159:
	.loc 1 1272 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1273 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1274 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1275 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1277 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L160
	.loc 1 1278 0
	jmp	.L4
.L160:
	.loc 1 1281 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
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
	jne	.L161
	.loc 1 1282 0
	leaq	.LC137(%rip), %rcx
	call	puts
	.loc 1 1283 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1284 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L162
.LBB21:
	.loc 1 1285 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$3, %ecx
	call	type_create
	movq	%rax, 288(%rbp)
	.loc 1 1286 0
	movq	288(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 296(%rbp)
	.loc 1 1287 0
	movq	296(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 304(%rbp)
	.loc 1 1288 0
	movq	304(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE21:
	jmp	.L155
.L162:
	.loc 1 1290 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L164
.LBB22:
	.loc 1 1291 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	type_create
	movq	%rax, 264(%rbp)
	.loc 1 1292 0
	movq	264(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 272(%rbp)
	.loc 1 1293 0
	movq	272(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 280(%rbp)
	.loc 1 1294 0
	movq	280(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE22:
	jmp	.L155
.L164:
	.loc 1 1296 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L165
.LBB23:
	.loc 1 1297 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	type_create
	movq	%rax, 240(%rbp)
	.loc 1 1298 0
	movq	240(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 248(%rbp)
	.loc 1 1299 0
	movq	248(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 256(%rbp)
	.loc 1 1300 0
	movq	256(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE23:
	jmp	.L155
.L165:
	.loc 1 1302 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L166
.LBB24:
	.loc 1 1303 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$2, %ecx
	call	type_create
	movq	%rax, 216(%rbp)
	.loc 1 1304 0
	movq	216(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 224(%rbp)
	.loc 1 1305 0
	movq	224(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 232(%rbp)
	.loc 1 1306 0
	movq	232(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE24:
	jmp	.L155
.L166:
	.loc 1 1308 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L167
.LBB25:
	.loc 1 1309 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$1, %ecx
	call	type_create
	movq	%rax, 192(%rbp)
	.loc 1 1310 0
	movq	192(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 200(%rbp)
	.loc 1 1311 0
	movq	200(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 208(%rbp)
	.loc 1 1312 0
	movq	208(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE25:
	jmp	.L155
.L167:
	.loc 1 1314 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L168
.LBB26:
	.loc 1 1315 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	type_create
	movq	%rax, 168(%rbp)
	.loc 1 1316 0
	movq	168(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 176(%rbp)
	.loc 1 1317 0
	movq	176(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 184(%rbp)
	.loc 1 1318 0
	movq	184(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE26:
	jmp	.L155
.L168:
	.loc 1 1320 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC132(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L169
	.loc 1 1320 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC131(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L155
.L169:
.LBB27:
	.loc 1 1321 0 is_stmt 1
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1322 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1323 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 144(%rbp)
	.loc 1 1324 0
	movq	144(%rbp), %rdx
	leaq	20496(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 152(%rbp)
	.loc 1 1325 0
	movq	152(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 160(%rbp)
	.loc 1 1326 0
	movq	160(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	jmp	.L155
.L161:
.LBE27:
.LBB28:
	.loc 1 1331 0
	movl	28(%rbp), %eax
	leaq	464(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20608(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1332 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1333 0
	leaq	28(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1334 0
	movl	28(%rbp), %eax
	cltq
	movb	$0, 464(%rbp,%rax)
	.loc 1 1335 0
	leaq	20496(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 120(%rbp)
	.loc 1 1336 0
	movq	120(%rbp), %rdx
	leaq	20608(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 128(%rbp)
	.loc 1 1337 0
	movq	128(%rbp), %rax
	movl	44(%rbp), %edx
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
	movq	%rax, 136(%rbp)
	.loc 1 1338 0
	movq	136(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.L155:
.LBE28:
	.loc 1 1342 0
	movl	444(%rbp), %eax
	cmpl	$1, %eax
	jne	.L154
	.loc 1 1344 0
	leaq	.LC138(%rip), %rcx
	call	puts
	.loc 1 1345 0
	movl	$0, 444(%rbp)
.L154:
	.loc 1 1349 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1350 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L4:
	.loc 1 38 0
	cmpq	$0, 8(%rbp)
	jne	.L170
	.loc 1 1353 0
	nop
	.loc 1 1354 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	20936(%rbp), %rbx
	xorq	(%rax), %rbx
	je	.L172
	call	__stack_chk_fail
	nop
.L172:
	addq	$21080, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 21096
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
	.file 7 "./src/../inc/../inc/parse_state.h"
	.file 8 "./src/../inc/../inc/ast.h"
	.file 9 "./src/../inc/../inc/command.h"
	.file 10 "./src/../inc/../inc/../inc/symbol_table.h"
	.file 11 "./src/../inc/parserFunctions.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1e66
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
	.long	0xf4e
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
	.long	0xcbc
	.uleb128 0xd
	.ascii "type\0"
	.byte	0x18
	.byte	0x8
	.byte	0x2d
	.long	0xf96
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x2e
	.long	0xf4e
	.byte	0
	.uleb128 0xc
	.ascii "subtype\0"
	.byte	0x8
	.byte	0x2f
	.long	0xf96
	.byte	0x8
	.uleb128 0xc
	.ascii "params\0"
	.byte	0x8
	.byte	0x30
	.long	0xfd5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf5c
	.uleb128 0xd
	.ascii "param_list\0"
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0xfd5
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x35
	.long	0x660
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x36
	.long	0xfe7
	.byte	0x8
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x37
	.long	0xfd5
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xf9c
	.uleb128 0x3
	.ascii "type\0"
	.byte	0x8
	.byte	0x31
	.long	0xf5c
	.uleb128 0xe
	.byte	0x8
	.long	0xfdb
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x12d
	.byte	0x8
	.byte	0x3e
	.long	0x111a
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
	.long	0xfed
	.uleb128 0xd
	.ascii "expr\0"
	.byte	0x38
	.byte	0x8
	.byte	0x51
	.long	0x11c1
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x52
	.long	0x111a
	.byte	0
	.uleb128 0xc
	.ascii "left\0"
	.byte	0x8
	.byte	0x53
	.long	0x11c1
	.byte	0x8
	.uleb128 0xc
	.ascii "right\0"
	.byte	0x8
	.byte	0x54
	.long	0x11c1
	.byte	0x10
	.uleb128 0xc
	.ascii "string_literal\0"
	.byte	0x8
	.byte	0x55
	.long	0x660
	.byte	0x18
	.uleb128 0xc
	.ascii "string_id\0"
	.byte	0x8
	.byte	0x56
	.long	0x660
	.byte	0x20
	.uleb128 0xc
	.ascii "integer_value\0"
	.byte	0x8
	.byte	0x57
	.long	0x126
	.byte	0x28
	.uleb128 0xc
	.ascii "character_value\0"
	.byte	0x8
	.byte	0x58
	.long	0x16c
	.byte	0x2c
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x59
	.long	0x126
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1128
	.uleb128 0x3
	.ascii "expr\0"
	.byte	0x8
	.byte	0x5a
	.long	0x1128
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x12d
	.byte	0x8
	.byte	0x5f
	.long	0x1300
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
	.long	0x11d3
	.uleb128 0xd
	.ascii "stmt\0"
	.byte	0x48
	.byte	0x8
	.byte	0x78
	.long	0x13a1
	.uleb128 0xc
	.ascii "kind\0"
	.byte	0x8
	.byte	0x79
	.long	0x1300
	.byte	0
	.uleb128 0xc
	.ascii "decl\0"
	.byte	0x8
	.byte	0x7a
	.long	0x13ef
	.byte	0x8
	.uleb128 0xc
	.ascii "init_expr\0"
	.byte	0x8
	.byte	0x7b
	.long	0x13f5
	.byte	0x10
	.uleb128 0xc
	.ascii "theExpr\0"
	.byte	0x8
	.byte	0x7c
	.long	0x13f5
	.byte	0x18
	.uleb128 0xc
	.ascii "next_expr\0"
	.byte	0x8
	.byte	0x7d
	.long	0x13f5
	.byte	0x20
	.uleb128 0xc
	.ascii "body\0"
	.byte	0x8
	.byte	0x7e
	.long	0x13fb
	.byte	0x28
	.uleb128 0xc
	.ascii "else_body\0"
	.byte	0x8
	.byte	0x7f
	.long	0x13fb
	.byte	0x30
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x80
	.long	0x13fb
	.byte	0x38
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x81
	.long	0x126
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "decl\0"
	.byte	0x88
	.byte	0x8
	.byte	0x87
	.long	0x13ef
	.uleb128 0xc
	.ascii "name\0"
	.byte	0x8
	.byte	0x88
	.long	0xc9b
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x8
	.byte	0x89
	.long	0xfe7
	.byte	0x68
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x8
	.byte	0x8a
	.long	0x13f5
	.byte	0x70
	.uleb128 0xc
	.ascii "code\0"
	.byte	0x8
	.byte	0x8b
	.long	0x140d
	.byte	0x78
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x8c
	.long	0x13ef
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x13a1
	.uleb128 0xe
	.byte	0x8
	.long	0x11c7
	.uleb128 0xe
	.byte	0x8
	.long	0x130e
	.uleb128 0x3
	.ascii "stmt\0"
	.byte	0x8
	.byte	0x82
	.long	0x130e
	.uleb128 0xe
	.byte	0x8
	.long	0x1401
	.uleb128 0x3
	.ascii "decl\0"
	.byte	0x8
	.byte	0x8d
	.long	0x13a1
	.uleb128 0xd
	.ascii "command\0"
	.byte	0x20
	.byte	0x9
	.byte	0x6
	.long	0x1467
	.uleb128 0xc
	.ascii "aDecl\0"
	.byte	0x9
	.byte	0x8
	.long	0x1467
	.byte	0
	.uleb128 0xc
	.ascii "aStmt\0"
	.byte	0x9
	.byte	0x9
	.long	0x140d
	.byte	0x8
	.uleb128 0xc
	.ascii "anExpr\0"
	.byte	0x9
	.byte	0xa
	.long	0x13f5
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x9
	.byte	0xb
	.long	0x146d
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1413
	.uleb128 0xe
	.byte	0x8
	.long	0x141f
	.uleb128 0x3
	.ascii "command\0"
	.byte	0x9
	.byte	0xc
	.long	0x141f
	.uleb128 0xf
	.secrel32	.LASF5
	.word	0x138
	.byte	0xa
	.byte	0x4
	.long	0x14ee
	.uleb128 0xc
	.ascii "variableName\0"
	.byte	0xa
	.byte	0x5
	.long	0xc9b
	.byte	0
	.uleb128 0xc
	.ascii "variableType\0"
	.byte	0xa
	.byte	0x6
	.long	0xc9b
	.byte	0x64
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0xa
	.byte	0x7
	.long	0xc9b
	.byte	0xc8
	.uleb128 0x10
	.ascii "isAlreadyDeclared\0"
	.byte	0xa
	.byte	0x8
	.long	0x126
	.word	0x12c
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0xa
	.byte	0x9
	.long	0x14ee
	.word	0x130
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x1482
	.uleb128 0x25
	.secrel32	.LASF5
	.byte	0xa
	.byte	0xa
	.long	0x1482
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0x18
	.byte	0xb
	.byte	0x12
	.long	0x1597
	.uleb128 0xc
	.ascii "nIsStructMember\0"
	.byte	0xb
	.byte	0x14
	.long	0x126
	.byte	0
	.uleb128 0xc
	.ascii "nIsUnionMember\0"
	.byte	0xb
	.byte	0x15
	.long	0x126
	.byte	0x4
	.uleb128 0xc
	.ascii "nIsEnumMember\0"
	.byte	0xb
	.byte	0x16
	.long	0x126
	.byte	0x8
	.uleb128 0xc
	.ascii "nIsAssertMember\0"
	.byte	0xb
	.byte	0x17
	.long	0x126
	.byte	0xc
	.uleb128 0xc
	.ascii "nIsMainMember\0"
	.byte	0xb
	.byte	0x18
	.long	0x126
	.byte	0x10
	.uleb128 0xc
	.ascii "nIsReturnMember\0"
	.byte	0xb
	.byte	0x19
	.long	0x126
	.byte	0x14
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF7
	.byte	0xb
	.byte	0x1a
	.long	0x14ff
	.uleb128 0x28
	.ascii "parsing\0"
	.byte	0x1
	.byte	0x14
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dd1
	.uleb128 0x29
	.ascii "current\0"
	.byte	0x1
	.byte	0x14
	.long	0x1dd1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20968
	.uleb128 0x2a
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x14
	.long	0x1dd7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20976
	.uleb128 0x2a
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x14
	.long	0x1ddd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20984
	.uleb128 0x2b
	.ascii "top\0"
	.byte	0x1
	.byte	0x15
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20948
	.uleb128 0x2b
	.ascii "partOfComment\0"
	.byte	0x1
	.byte	0x16
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20944
	.uleb128 0x2b
	.ascii "notTheEndFlag\0"
	.byte	0x1
	.byte	0x17
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20940
	.uleb128 0x2b
	.ascii "hasDefer\0"
	.byte	0x1
	.byte	0x18
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20936
	.uleb128 0x2b
	.ascii "theStack\0"
	.byte	0x1
	.byte	0x19
	.long	0x1de3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20512
	.uleb128 0x2b
	.ascii "temp\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2b
	.ascii "temp2\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2b
	.ascii "temp3\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.ascii "floatValue\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.ascii "sTypeOfMember\0"
	.byte	0x1
	.byte	0x1b
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20932
	.uleb128 0x2b
	.ascii "iIsPointer\0"
	.byte	0x1
	.byte	0x1c
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20928
	.uleb128 0x2b
	.ascii "flags\0"
	.byte	0x1
	.byte	0x24
	.long	0x1597
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20544
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x171c
	.uleb128 0x2b
	.ascii "main_stmt\0"
	.byte	0x1
	.byte	0x32
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20552
	.byte	0
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x178e
	.uleb128 0x2d
	.secrel32	.LASF6
	.byte	0x1
	.word	0x178
	.long	0x1df9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x1
	.word	0x179
	.long	0x1dd1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20584
	.uleb128 0x2d
	.secrel32	.LASF3
	.byte	0x1
	.word	0x17f
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20576
	.uleb128 0x2d
	.secrel32	.LASF11
	.byte	0x1
	.word	0x180
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20568
	.uleb128 0x2e
	.ascii "struct_stmt\0"
	.byte	0x1
	.word	0x181
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20560
	.byte	0
	.uleb128 0x2c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x17fe
	.uleb128 0x2d
	.secrel32	.LASF6
	.byte	0x1
	.word	0x18b
	.long	0x1df9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x1
	.word	0x18c
	.long	0x1dd1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20616
	.uleb128 0x2d
	.secrel32	.LASF3
	.byte	0x1
	.word	0x192
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20608
	.uleb128 0x2d
	.secrel32	.LASF11
	.byte	0x1
	.word	0x193
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20600
	.uleb128 0x2e
	.ascii "enum_stmt\0"
	.byte	0x1
	.word	0x194
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20592
	.byte	0
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x186f
	.uleb128 0x2d
	.secrel32	.LASF6
	.byte	0x1
	.word	0x19e
	.long	0x1df9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x1
	.word	0x19f
	.long	0x1dd1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20648
	.uleb128 0x2d
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1a5
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20640
	.uleb128 0x2d
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1a6
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20632
	.uleb128 0x2e
	.ascii "union_stmt\0"
	.byte	0x1
	.word	0x1a7
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20624
	.byte	0
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x189a
	.uleb128 0x2e
	.ascii "theStmt\0"
	.byte	0x1
	.word	0x1b1
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20656
	.byte	0
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x18c5
	.uleb128 0x2e
	.ascii "theStmt\0"
	.byte	0x1
	.word	0x1bb
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20664
	.byte	0
	.uleb128 0x2c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1916
	.uleb128 0x2d
	.secrel32	.LASF12
	.byte	0x1
	.word	0x1c8
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20920
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2e
	.ascii "defer_stmt\0"
	.byte	0x1
	.word	0x1dc
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20896
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x19b7
	.uleb128 0x2d
	.secrel32	.LASF12
	.byte	0x1
	.word	0x200
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20916
	.uleb128 0x2c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1963
	.uleb128 0x2d
	.secrel32	.LASF13
	.byte	0x1
	.word	0x22a
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20904
	.byte	0
	.uleb128 0x2c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x198a
	.uleb128 0x2d
	.secrel32	.LASF13
	.byte	0x1
	.word	0x238
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20908
	.byte	0
	.uleb128 0x2f
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.ascii "theArrayType\0"
	.byte	0x1
	.word	0x244
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20912
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1a62
	.uleb128 0x2d
	.secrel32	.LASF12
	.byte	0x1
	.word	0x2e4
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20924
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1a03
	.uleb128 0x2d
	.secrel32	.LASF4
	.byte	0x1
	.word	0x301
	.long	0x1df9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1a34
	.uleb128 0x2e
	.ascii "incrementExpr\0"
	.byte	0x1
	.word	0x346
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20880
	.byte	0
	.uleb128 0x2f
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2e
	.ascii "decrementExpr\0"
	.byte	0x1
	.word	0x34d
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20888
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1a89
	.uleb128 0x2d
	.secrel32	.LASF12
	.byte	0x1
	.word	0x445
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20900
	.byte	0
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1abc
	.uleb128 0x2e
	.ascii "break_decl_stmt\0"
	.byte	0x1
	.word	0x465
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20864
	.byte	0
	.uleb128 0x2c
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1aee
	.uleb128 0x2e
	.ascii "cont_decl_stmt\0"
	.byte	0x1
	.word	0x46c
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20872
	.byte	0
	.uleb128 0x2c
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1b52
	.uleb128 0x2e
	.ascii "int_type\0"
	.byte	0x1
	.word	0x505
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20688
	.uleb128 0x2e
	.ascii "int_declaration\0"
	.byte	0x1
	.word	0x506
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20680
	.uleb128 0x2e
	.ascii "int_decl_stmt\0"
	.byte	0x1
	.word	0x507
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20672
	.byte	0
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x1ba3
	.uleb128 0x2e
	.ascii "string_type\0"
	.byte	0x1
	.word	0x50b
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20712
	.uleb128 0x2d
	.secrel32	.LASF14
	.byte	0x1
	.word	0x50c
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20704
	.uleb128 0x2d
	.secrel32	.LASF15
	.byte	0x1
	.word	0x50d
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20696
	.byte	0
	.uleb128 0x2c
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x1c0d
	.uleb128 0x2e
	.ascii "float_type\0"
	.byte	0x1
	.word	0x511
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20736
	.uleb128 0x2e
	.ascii "float_declaration\0"
	.byte	0x1
	.word	0x512
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20728
	.uleb128 0x2e
	.ascii "float_decl_stmt\0"
	.byte	0x1
	.word	0x513
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20720
	.byte	0
	.uleb128 0x2c
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1c74
	.uleb128 0x2e
	.ascii "char_type\0"
	.byte	0x1
	.word	0x517
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20760
	.uleb128 0x2e
	.ascii "char_declaration\0"
	.byte	0x1
	.word	0x518
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20752
	.uleb128 0x2e
	.ascii "char_decl_stmt\0"
	.byte	0x1
	.word	0x519
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20744
	.byte	0
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1cdb
	.uleb128 0x2e
	.ascii "bool_type\0"
	.byte	0x1
	.word	0x51d
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20784
	.uleb128 0x2e
	.ascii "bool_declaration\0"
	.byte	0x1
	.word	0x51e
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20776
	.uleb128 0x2e
	.ascii "bool_decl_stmt\0"
	.byte	0x1
	.word	0x51f
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20768
	.byte	0
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1d42
	.uleb128 0x2e
	.ascii "void_type\0"
	.byte	0x1
	.word	0x523
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20808
	.uleb128 0x2e
	.ascii "void_declaration\0"
	.byte	0x1
	.word	0x524
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20800
	.uleb128 0x2e
	.ascii "void_decl_stmt\0"
	.byte	0x1
	.word	0x525
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20792
	.byte	0
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x1d8b
	.uleb128 0x2d
	.secrel32	.LASF16
	.byte	0x1
	.word	0x52b
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20832
	.uleb128 0x2d
	.secrel32	.LASF14
	.byte	0x1
	.word	0x52c
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20824
	.uleb128 0x2d
	.secrel32	.LASF15
	.byte	0x1
	.word	0x52d
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20816
	.byte	0
	.uleb128 0x2f
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2d
	.secrel32	.LASF16
	.byte	0x1
	.word	0x537
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20856
	.uleb128 0x2d
	.secrel32	.LASF14
	.byte	0x1
	.word	0x538
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20848
	.uleb128 0x2d
	.secrel32	.LASF15
	.byte	0x1
	.word	0x539
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20840
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0xcb1
	.uleb128 0xe
	.byte	0x8
	.long	0x1473
	.uleb128 0xe
	.byte	0x8
	.long	0x14f4
	.uleb128 0x9
	.long	0x16c
	.long	0x1df9
	.uleb128 0xa
	.long	0x149
	.byte	0xc7
	.uleb128 0xa
	.long	0x149
	.byte	0x63
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0x1e09
	.uleb128 0xa
	.long	0x149
	.byte	0x13
	.byte	0
	.uleb128 0x30
	.ascii "parseProgram\0"
	.byte	0x1
	.byte	0x7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.ascii "node\0"
	.byte	0x1
	.byte	0x7
	.long	0x1dd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x8
	.long	0x1dd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x9
	.long	0x1ddd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.ascii "current\0"
	.byte	0x1
	.byte	0xa
	.long	0x1dd1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
.LASF5:
	.ascii "symbolTable\0"
.LASF8:
	.ascii "commandNode\0"
.LASF13:
	.ascii "theResult\0"
.LASF9:
	.ascii "symTable\0"
.LASF14:
	.ascii "string_declaration\0"
.LASF3:
	.ascii "theType\0"
.LASF6:
	.ascii "scope\0"
.LASF16:
	.ascii "stringExpr\0"
.LASF7:
	.ascii "memberFlags\0"
.LASF15:
	.ascii "string_decl_stmt\0"
.LASF10:
	.ascii "tempParse\0"
.LASF12:
	.ascii "doneFlag\0"
.LASF11:
	.ascii "theDeclaration\0"
.LASF0:
	.ascii "_on_exit_args\0"
.LASF4:
	.ascii "memberOf\0"
.LASF1:
	.ascii "parse_state\0"
.LASF2:
	.ascii "next\0"
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
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
	.def	InsertSymbolTable;	.scl	2;	.type	32;	.endef
	.def	type_create;	.scl	2;	.type	32;	.endef
	.def	decl_create;	.scl	2;	.type	32;	.endef
	.def	ClearFlags;	.scl	2;	.type	32;	.endef
	.def	BuildSingleExprStatement;	.scl	2;	.type	32;	.endef
	.def	BuildDeclarationExprStatement;	.scl	2;	.type	32;	.endef
	.def	empty;	.scl	2;	.type	32;	.endef
	.def	isNumberType;	.scl	2;	.type	32;	.endef
	.def	CheckIfMemberOfStatement;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	BuildDeclarationStatement;	.scl	2;	.type	32;	.endef
	.def	CheckArrayType;	.scl	2;	.type	32;	.endef
	.def	BuildAssignAndCompareExprStatement;	.scl	2;	.type	32;	.endef
	.def	isIdentifierType;	.scl	2;	.type	32;	.endef
	.def	BuildDoubleExprStatement;	.scl	2;	.type	32;	.endef
	.def	expr_create;	.scl	2;	.type	32;	.endef
	.def	BuildSimpleExpressionStatement;	.scl	2;	.type	32;	.endef
	.def	BuildNewStatement;	.scl	2;	.type	32;	.endef
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
