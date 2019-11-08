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
	.ascii "operator\0"
.LC49:
	.ascii "Now the stack top : %s\12\0"
	.align 8
.LC50:
	.ascii "The CURRENT NOW UP ADD 1 : %s\12\0"
	.align 8
.LC51:
	.ascii "The CURRENT NOW UP ADD 2 : %s\12\0"
	.align 8
.LC52:
	.ascii "The CURRENT NOW UP ADD 3 : %s\12\0"
.LC53:
	.ascii "end of command\0"
.LC54:
	.ascii "-\0"
	.align 8
.LC55:
	.ascii "The CURRENT NOW UP ADD 4 : %s\12\0"
	.align 8
.LC56:
	.ascii "The CURRENT NOW UP ADD 5 : %s\12\0"
.LC57:
	.ascii "Operator - going in.\0"
	.align 8
.LC58:
	.ascii "The CURRENT NOW UP SUB 1 : %s\12\0"
.LC59:
	.ascii "The CURRENT NOW UP SUB 2: %s\12\0"
	.align 8
.LC60:
	.ascii "The CURRENT NOW UP SUB 3 : %s\12\0"
	.align 8
.LC61:
	.ascii "The CURRENT NOW UP SUB 4 : %s\12\0"
	.align 8
.LC62:
	.ascii "The CURRENT NOW UP SUB 5 : %s\12\0"
.LC63:
	.ascii "*\0"
.LC64:
	.ascii "Operator * going in.\0"
.LC65:
	.ascii "/\0"
.LC66:
	.ascii "Operator / going in.\0"
.LC67:
	.ascii "++\0"
.LC68:
	.ascii "Operator ++ going in.\0"
.LC69:
	.ascii "--\0"
.LC70:
	.ascii "Operator -- going in.\0"
.LC71:
	.ascii "+=\0"
.LC72:
	.ascii "Operator += going in.\0"
.LC73:
	.ascii "-=\0"
.LC74:
	.ascii "Operator -= going in.\0"
.LC75:
	.ascii "*=\0"
.LC76:
	.ascii "Operator *= going in.\0"
.LC77:
	.ascii "/=\0"
.LC78:
	.ascii "Operator /= going in.\0"
.LC79:
	.ascii ">\0"
.LC80:
	.ascii "Operator > going in.\0"
.LC81:
	.ascii "<\0"
.LC82:
	.ascii "Operator < going in.\0"
.LC83:
	.ascii ">=\0"
.LC84:
	.ascii "Operator >= going in.\0"
.LC85:
	.ascii "<=\0"
.LC86:
	.ascii "Operator <= going in.\0"
.LC87:
	.ascii "@==\0"
.LC88:
	.ascii "Operator @== going in.\0"
.LC89:
	.ascii "Comment symbol going in.\0"
.LC90:
	.ascii "[\0"
.LC91:
	.ascii "Array start going in.\0"
.LC92:
	.ascii "]\0"
.LC93:
	.ascii "Array end going in.\0"
.LC94:
	.ascii "^\0"
.LC95:
	.ascii "Operator ^ going in.\0"
.LC96:
	.ascii "Value in the loop : %s\12\0"
.LC97:
	.ascii "struct\0"
.LC98:
	.ascii "Struct statement to be built.\0"
.LC99:
	.ascii "The struct variable : %s\12\0"
.LC100:
	.ascii "enum\0"
.LC101:
	.ascii "Enum statement to be built.\0"
.LC102:
	.ascii "The enum variable : %s\12\0"
.LC103:
	.ascii "union\0"
.LC104:
	.ascii "Union statement to be built/\0"
.LC105:
	.ascii "The union variable : %s\12\0"
.LC106:
	.ascii "assert\0"
.LC107:
	.ascii "Assert statement to be built.\0"
.LC108:
	.ascii "return\0"
.LC109:
	.ascii "Return statement to be built.\0"
.LC110:
	.ascii "block end\0"
.LC111:
	.ascii "Going to clear the flags.\0"
	.align 8
.LC112:
	.ascii "The stack at string type is not empty\0"
.LC113:
	.ascii "Going to push the value : %s\12\0"
.LC114:
	.ascii "hexadecimal number\0"
.LC115:
	.ascii "It is member of : %d\12\0"
.LC116:
	.ascii "%d\0"
.LC117:
	.ascii "array end\0"
.LC118:
	.ascii "Valid array.\0"
.LC119:
	.ascii "Not a valid array.\0"
	.align 8
.LC120:
	.ascii "The stack at number type is not empty.\0"
	.align 8
.LC121:
	.ascii "Going to insert the value : %s\12\0"
	.align 8
.LC122:
	.ascii "The stack at number type is empty.\0"
	.align 8
.LC123:
	.ascii "This is the last part of the comment\0"
	.align 8
.LC124:
	.ascii "Operator @ is in the stack now.\0"
.LC125:
	.ascii "global\0"
.LC126:
	.ascii "This is part of a comment %s\12\0"
.LC127:
	.ascii "The top now : %d\12\0"
.LC128:
	.ascii "The CURRENT NOW 1 : %s\12\0"
.LC129:
	.ascii "The CURRENT NOW 2 : %s\12\0"
.LC130:
	.ascii "The CURRENT NOW 3 : %s\12\0"
.LC131:
	.ascii "The CURRENT NOW 4 : %s\12\0"
.LC132:
	.ascii "The CURRENT NOW 3.1 : %s\12\0"
.LC133:
	.ascii "The CURRENT NOW 3.2 : %s\12\0"
.LC134:
	.ascii "The CURRENT NOW 5.1 : %s\12\0"
.LC135:
	.ascii "The CURRENT NOW 5 : %s\12\0"
.LC136:
	.ascii "The CURRENT NOW 5.2 : %s\12\0"
.LC137:
	.ascii "The CURRENT NOW 5.3 : %s\12\0"
.LC138:
	.ascii "The CURRENT NOW 15 : %s\12\0"
.LC139:
	.ascii "The CURRENT NOW 16 : %s\12\0"
.LC140:
	.ascii "The CURRENT NOW 17 : %s\12\0"
.LC141:
	.ascii "The CURRENT NOW 19 : %s\12\0"
.LC142:
	.ascii "The CURRENT NOW 6 : %s\12\0"
.LC143:
	.ascii "The CURRENT NOW 20 : %s\12\0"
.LC144:
	.ascii "The CURRENT NOW 7 : %s\12\0"
	.align 8
.LC145:
	.ascii "The CURRENT NOW 18 little add: %s\12\0"
.LC146:
	.ascii "The CURRENT NOW 1 SUB : %s\12\0"
.LC147:
	.ascii "The CURRENT NOW 2 SUB : %s\12\0"
.LC148:
	.ascii "The CURRENT NOW 3 SUB: %s\12\0"
.LC149:
	.ascii "The CURRENT NOW 4 SUB: %s\12\0"
.LC150:
	.ascii "The CURRENT NOW 5 SUB: %s\12\0"
.LC151:
	.ascii "The CURRENT NOW 15 SUB: %s\12\0"
.LC152:
	.ascii "The CURRENT TEMP2 SUB: %s\12\0"
.LC153:
	.ascii "The CURRENT TEMP2_2 SUB: %s\12\0"
.LC154:
	.ascii "The CURRENT TEMP2_3 SUB: %s\12\0"
.LC155:
	.ascii "The CURRENT NOW 16 SUB: %s\12\0"
.LC156:
	.ascii "The CURRENT NOW 17 SUB: %s\12\0"
.LC157:
	.ascii "The CURRENT NOW 19 SUB: %s\12\0"
.LC158:
	.ascii "The CURRENT NOW 6 SUB: %s\12\0"
.LC159:
	.ascii "The CURRENT NOW 20 SUB: %s\12\0"
.LC160:
	.ascii "The CURRENT NOW 7 SUB: %s\12\0"
.LC161:
	.ascii "The CURRENT NOW 18 SUB: %s\12\0"
.LC162:
	.ascii "The CURRENT NOW 18: %s\12\0"
.LC163:
	.ascii "The CURRENT NOW 18.1: %s\12\0"
.LC164:
	.ascii "The CURRENT NOW 18.2: %s\12\0"
	.align 8
.LC165:
	.ascii "The stack at identifier type is not empty\0"
	.align 8
.LC166:
	.ascii "The stack at identifier type is empty.\0"
.LC167:
	.ascii "character\0"
	.align 8
.LC168:
	.ascii "The stack at character type is not empty.\0"
.LC169:
	.ascii "keyword\0"
.LC170:
	.ascii "break\0"
.LC171:
	.ascii "continue\0"
.LC172:
	.ascii "new\0"
.LC173:
	.ascii "null\0"
.LC174:
	.ascii "true\0"
.LC175:
	.ascii "false\0"
.LC176:
	.ascii "End of the comment.\0"
	.align 8
.LC177:
	.ascii "Going to build delete statement.\0"
.LC178:
	.ascii "Going for just a declaration\0"
	.align 8
.LC179:
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
	movl	$20984, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	20984
	.cfi_def_cfa_offset 21008
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 20880
	.seh_endprologue
	movq	%rcx, 8(%rbp)
	movq	%rdx, 0(%rbp)
	movq	%r8, -8(%rbp)
	.loc 1 20 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	(%rax), %rbx
	movq	%rbx, 20840(%rbp)
	xorl	%ebx, %ebx
	.loc 1 22 0
	movl	$0, 24(%rbp)
	.loc 1 23 0
	movl	$0, 28(%rbp)
	.loc 1 24 0
	movl	$0, 32(%rbp)
	.loc 1 28 0
	movl	$0, 40(%rbp)
	.loc 1 30 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	init
	.loc 1 31 0
	leaq	20512(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 32 0
	leaq	20624(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 33 0
	leaq	20736(%rbp), %rax
	movl	$100, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 37 0
	jmp	.L4
.L211:
	.loc 1 38 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	.loc 1 40 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
	.loc 1 41 0
	leaq	.LC2(%rip), %rcx
	call	puts
	.loc 1 42 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 43 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 44 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 45 0
	jmp	.L4
.L5:
	.loc 1 47 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
.LBB2:
	.loc 1 48 0
	leaq	.LC5(%rip), %rcx
	call	puts
	.loc 1 49 0
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
	movq	%rax, 440(%rbp)
	.loc 1 50 0
	movq	440(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 51 0
	movl	$1, 464(%rbp)
	.loc 1 52 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 53 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 54 0
	jmp	.L4
.L6:
.LBE2:
	.loc 1 56 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L7
	.loc 1 57 0
	leaq	.LC7(%rip), %rcx
	call	puts
	.loc 1 58 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 59 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 60 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 61 0
	jmp	.L4
.L7:
	.loc 1 63 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L8
	.loc 1 64 0
	leaq	.LC9(%rip), %rcx
	call	puts
	.loc 1 65 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 66 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 67 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 68 0
	jmp	.L4
.L8:
	.loc 1 70 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	.loc 1 71 0
	leaq	.LC11(%rip), %rcx
	call	puts
	.loc 1 72 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 73 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 74 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 75 0
	jmp	.L4
.L9:
	.loc 1 77 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	.loc 1 78 0
	leaq	.LC13(%rip), %rcx
	call	puts
	.loc 1 79 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 80 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 81 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 82 0
	jmp	.L4
.L10:
	.loc 1 84 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	.loc 1 85 0
	leaq	.LC15(%rip), %rcx
	call	puts
	.loc 1 86 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 87 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 88 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 89 0
	jmp	.L4
.L11:
	.loc 1 91 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	.loc 1 92 0
	leaq	.LC17(%rip), %rcx
	call	puts
	.loc 1 93 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 94 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 95 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 96 0
	jmp	.L4
.L12:
	.loc 1 98 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC18(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L13
	.loc 1 99 0
	leaq	.LC19(%rip), %rcx
	call	puts
	.loc 1 100 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 101 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 102 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 103 0
	jmp	.L4
.L13:
	.loc 1 105 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L14
	.loc 1 106 0
	leaq	.LC21(%rip), %rcx
	call	puts
	.loc 1 107 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 108 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 109 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 110 0
	jmp	.L4
.L14:
	.loc 1 112 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	.loc 1 113 0
	leaq	.LC23(%rip), %rcx
	call	puts
	.loc 1 114 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 115 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 116 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 117 0
	jmp	.L4
.L15:
	.loc 1 119 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L16
	.loc 1 120 0
	leaq	.LC25(%rip), %rcx
	call	puts
	.loc 1 121 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 122 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 123 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 124 0
	jmp	.L4
.L16:
	.loc 1 126 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	.loc 1 127 0
	leaq	.LC27(%rip), %rcx
	call	puts
	.loc 1 128 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 129 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 130 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 131 0
	jmp	.L4
.L17:
	.loc 1 133 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L18
	.loc 1 134 0
	leaq	.LC29(%rip), %rcx
	call	puts
	.loc 1 135 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 136 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 137 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 138 0
	jmp	.L4
.L18:
	.loc 1 140 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 141 0
	leaq	.LC31(%rip), %rcx
	call	puts
	.loc 1 142 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 143 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 144 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 145 0
	jmp	.L4
.L19:
	.loc 1 147 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L20
	.loc 1 150 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 151 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	.loc 1 153 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rcx
	call	printf
	.loc 1 154 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 155 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 156 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 157 0
	jmp	.L4
.L21:
	.loc 1 159 0
	leaq	.LC35(%rip), %rcx
	call	puts
	.loc 1 160 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 161 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 162 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 163 0
	jmp	.L4
.L20:
	.loc 1 165 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC36(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L22
	.loc 1 166 0
	leaq	.LC37(%rip), %rcx
	call	puts
	.loc 1 167 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 168 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 169 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 170 0
	jmp	.L4
.L22:
	.loc 1 172 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC38(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L23
	.loc 1 173 0
	leaq	.LC39(%rip), %rcx
	call	puts
	.loc 1 174 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 175 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 176 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 177 0
	jmp	.L4
.L23:
	.loc 1 179 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	.loc 1 180 0
	leaq	.LC41(%rip), %rcx
	call	puts
	.loc 1 181 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 182 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 183 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 184 0
	jmp	.L4
.L24:
	.loc 1 186 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L25
	.loc 1 187 0
	leaq	.LC43(%rip), %rcx
	call	puts
	.loc 1 188 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 189 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 190 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 191 0
	jmp	.L4
.L25:
	.loc 1 193 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L26
	.loc 1 194 0
	leaq	.LC45(%rip), %rcx
	call	puts
	.loc 1 195 0
	movl	$1, 32(%rbp)
	.loc 1 196 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 197 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 198 0
	jmp	.L4
.L26:
	.loc 1 200 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L27
.LBB3:
	.loc 1 201 0
	leaq	.LC47(%rip), %rcx
	call	puts
	.loc 1 202 0
	movq	8(%rbp), %rax
	movq	%rax, 432(%rbp)
	.loc 1 203 0
	movq	432(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 432(%rbp)
	.loc 1 204 0
	movq	432(%rbp), %rax
	addq	$4, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L28
	.loc 1 205 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 206 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC49(%rip), %rcx
	call	printf
	.loc 1 207 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 208 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC50(%rip), %rcx
	call	printf
	.loc 1 209 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 210 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 211 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC51(%rip), %rcx
	call	printf
	.loc 1 212 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 213 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rdx
	call	BuildSimpleExpressionStatement
	.loc 1 214 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 215 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC52(%rip), %rcx
	call	printf
	.loc 1 216 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L29
	.loc 1 217 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 218 0
	leaq	20512(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	.loc 1 220 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L31
.L30:
	.loc 1 222 0
	leaq	20512(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L31
	.loc 1 224 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L31:
	.loc 1 226 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L34
.L29:
	.loc 1 229 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 230 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC55(%rip), %rcx
	call	printf
	.loc 1 231 0
	leaq	20512(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L33
	.loc 1 233 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L34
.L33:
	.loc 1 235 0
	leaq	20512(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L34
	.loc 1 237 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L34
.L28:
	.loc 1 242 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 243 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 244 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC56(%rip), %rcx
	call	printf
.L34:
	.loc 1 246 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 247 0
	jmp	.L4
.L27:
.LBE3:
	.loc 1 249 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L35
.LBB4:
	.loc 1 250 0
	leaq	.LC57(%rip), %rcx
	call	puts
	.loc 1 251 0
	movq	8(%rbp), %rax
	movq	%rax, 424(%rbp)
	.loc 1 252 0
	movq	424(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 424(%rbp)
	.loc 1 253 0
	movq	424(%rbp), %rax
	addq	$4, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L36
	.loc 1 254 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 255 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	leaq	.LC49(%rip), %rcx
	call	printf
	.loc 1 256 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 257 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rcx
	call	printf
	.loc 1 258 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 259 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 260 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC59(%rip), %rcx
	call	printf
	.loc 1 261 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 262 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rdx
	call	BuildSimpleExpressionStatement
	.loc 1 263 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 264 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC60(%rip), %rcx
	call	printf
	.loc 1 265 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L37
	.loc 1 266 0
	leaq	20512(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	.loc 1 268 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L39
.L38:
	.loc 1 270 0
	leaq	20512(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	.loc 1 272 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L39:
	.loc 1 274 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L42
.L37:
	.loc 1 277 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 278 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC61(%rip), %rcx
	call	printf
	.loc 1 279 0
	leaq	20512(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	.loc 1 281 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L42
.L41:
	.loc 1 283 0
	leaq	20512(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L42
	.loc 1 285 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L42
.L36:
	.loc 1 290 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 291 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 292 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC62(%rip), %rcx
	call	printf
.L42:
	.loc 1 294 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 295 0
	jmp	.L4
.L35:
.LBE4:
	.loc 1 297 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC63(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L43
	.loc 1 298 0
	leaq	.LC64(%rip), %rcx
	call	puts
	.loc 1 299 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 300 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 301 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 302 0
	jmp	.L4
.L43:
	.loc 1 304 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L44
	.loc 1 305 0
	leaq	.LC66(%rip), %rcx
	call	puts
	.loc 1 306 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 307 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 308 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 309 0
	jmp	.L4
.L44:
	.loc 1 311 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC67(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L45
	.loc 1 312 0
	leaq	.LC68(%rip), %rcx
	call	puts
	.loc 1 313 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 314 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 315 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 316 0
	movl	$1, 28(%rbp)
	.loc 1 317 0
	jmp	.L4
.L45:
	.loc 1 319 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC69(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	.loc 1 320 0
	leaq	.LC70(%rip), %rcx
	call	puts
	.loc 1 321 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
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
	movl	$1, 28(%rbp)
	.loc 1 325 0
	jmp	.L4
.L46:
	.loc 1 327 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC71(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L47
	.loc 1 328 0
	leaq	.LC72(%rip), %rcx
	call	puts
	.loc 1 329 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 330 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 331 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 332 0
	movl	$1, 28(%rbp)
	.loc 1 333 0
	jmp	.L4
.L47:
	.loc 1 335 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC73(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L48
	.loc 1 336 0
	leaq	.LC74(%rip), %rcx
	call	puts
	.loc 1 337 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 338 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 339 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 340 0
	movl	$1, 28(%rbp)
	.loc 1 341 0
	jmp	.L4
.L48:
	.loc 1 343 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L49
	.loc 1 344 0
	leaq	.LC76(%rip), %rcx
	call	puts
	.loc 1 345 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 346 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 347 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 348 0
	movl	$1, 28(%rbp)
	.loc 1 349 0
	jmp	.L4
.L49:
	.loc 1 351 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC77(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L50
	.loc 1 352 0
	leaq	.LC78(%rip), %rcx
	call	puts
	.loc 1 353 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 354 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 355 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 356 0
	movl	$1, 28(%rbp)
	.loc 1 357 0
	jmp	.L4
.L50:
	.loc 1 359 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L51
	.loc 1 360 0
	leaq	.LC80(%rip), %rcx
	call	puts
	.loc 1 361 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 362 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 363 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 364 0
	jmp	.L4
.L51:
	.loc 1 366 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L52
	.loc 1 367 0
	leaq	.LC82(%rip), %rcx
	call	puts
	.loc 1 368 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 369 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 370 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 371 0
	jmp	.L4
.L52:
	.loc 1 373 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC83(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L53
	.loc 1 374 0
	leaq	.LC84(%rip), %rcx
	call	puts
	.loc 1 375 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 376 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 377 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 378 0
	jmp	.L4
.L53:
	.loc 1 380 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC85(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L54
	.loc 1 381 0
	leaq	.LC86(%rip), %rcx
	call	puts
	.loc 1 382 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 383 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 384 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 385 0
	jmp	.L4
.L54:
	.loc 1 387 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L55
	.loc 1 388 0
	leaq	.LC88(%rip), %rcx
	call	puts
	.loc 1 389 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 390 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 391 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 392 0
	jmp	.L4
.L55:
	.loc 1 394 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L56
	.loc 1 395 0
	leaq	.LC89(%rip), %rcx
	call	puts
	.loc 1 396 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 397 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 398 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 399 0
	jmp	.L4
.L56:
	.loc 1 401 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC90(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L57
	.loc 1 402 0
	leaq	.LC91(%rip), %rcx
	call	puts
	.loc 1 403 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 404 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 405 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 406 0
	jmp	.L4
.L57:
	.loc 1 408 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC92(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L58
	.loc 1 409 0
	leaq	.LC93(%rip), %rcx
	call	puts
	.loc 1 413 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 414 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 415 0
	jmp	.L4
.L58:
	.loc 1 417 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC94(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L59
	.loc 1 418 0
	leaq	.LC95(%rip), %rcx
	call	puts
	.loc 1 419 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 420 0
	movl	$1, 40(%rbp)
	.loc 1 421 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 422 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 423 0
	jmp	.L4
.L59:
	.loc 1 427 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC96(%rip), %rcx
	call	printf
	.loc 1 429 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC97(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L60
.LBB5:
	.loc 1 430 0
	leaq	.LC98(%rip), %rcx
	call	puts
	.loc 1 431 0
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC99(%rip), %rcx
	call	printf
	.loc 1 433 0
	movq	8(%rbp), %rax
	movq	%rax, 392(%rbp)
	.loc 1 434 0
	movl	464(%rbp), %eax
	cmpl	$1, %eax
	jne	.L61
	.loc 1 434 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L62
.L61:
	.loc 1 434 0 discriminator 2
	leaq	20480(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L62:
	.loc 1 435 0 is_stmt 1
	movq	392(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 436 0
	movq	392(%rbp), %rax
	addq	$4, %rax
	movl	$1970435187, (%rax)
	movw	$29795, 4(%rax)
	movb	$0, 6(%rax)
	.loc 1 437 0
	movq	-8(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	movq	392(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 438 0
	movl	$1, 448(%rbp)
	.loc 1 439 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$13, %ecx
	call	type_create
	movq	%rax, 400(%rbp)
	.loc 1 440 0
	movq	400(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 408(%rbp)
	.loc 1 441 0
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
	.loc 1 442 0
	movq	416(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 443 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 444 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L60:
.LBE5:
	.loc 1 448 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC100(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L63
.LBB6:
	.loc 1 449 0
	leaq	.LC101(%rip), %rcx
	call	puts
	.loc 1 450 0
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC102(%rip), %rcx
	call	printf
	.loc 1 452 0
	movq	8(%rbp), %rax
	movq	%rax, 360(%rbp)
	.loc 1 453 0
	movl	464(%rbp), %eax
	cmpl	$1, %eax
	jne	.L64
	.loc 1 453 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L65
.L64:
	.loc 1 453 0 discriminator 2
	leaq	20480(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L65:
	.loc 1 454 0 is_stmt 1
	movq	360(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 455 0
	movq	360(%rbp), %rax
	addq	$4, %rax
	movl	$1836412517, (%rax)
	movb	$0, 4(%rax)
	.loc 1 456 0
	movq	-8(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	movq	360(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 457 0
	movl	$1, 456(%rbp)
	.loc 1 458 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$14, %ecx
	call	type_create
	movq	%rax, 368(%rbp)
	.loc 1 459 0
	movq	368(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 376(%rbp)
	.loc 1 460 0
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
	.loc 1 461 0
	movq	384(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 462 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 463 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L63:
.LBE6:
	.loc 1 467 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC103(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L66
.LBB7:
	.loc 1 468 0
	leaq	.LC104(%rip), %rcx
	call	puts
	.loc 1 469 0
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC105(%rip), %rcx
	call	printf
	.loc 1 471 0
	movq	8(%rbp), %rax
	movq	%rax, 328(%rbp)
	.loc 1 472 0
	movl	464(%rbp), %eax
	cmpl	$1, %eax
	jne	.L67
	.loc 1 472 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
	jmp	.L68
.L67:
	.loc 1 472 0 discriminator 2
	leaq	20480(%rbp), %rax
	movl	$1651469415, (%rax)
	movw	$27745, 4(%rax)
	movb	$0, 6(%rax)
.L68:
	.loc 1 473 0 is_stmt 1
	movq	328(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	.loc 1 474 0
	movq	328(%rbp), %rax
	addq	$4, %rax
	movl	$1869180533, (%rax)
	movw	$110, 4(%rax)
	.loc 1 475 0
	movq	-8(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	movq	328(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 476 0
	movl	$1, 452(%rbp)
	.loc 1 477 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$15, %ecx
	call	type_create
	movq	%rax, 336(%rbp)
	.loc 1 478 0
	movq	336(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 344(%rbp)
	.loc 1 479 0
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
	.loc 1 480 0
	movq	352(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 481 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 482 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L4
.L66:
.LBE7:
	.loc 1 486 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC106(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L69
.LBB8:
	.loc 1 487 0
	leaq	.LC107(%rip), %rcx
	call	puts
	.loc 1 488 0
	movl	$1, 460(%rbp)
	.loc 1 489 0
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
	.loc 1 490 0
	movq	320(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 491 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 492 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 493 0
	jmp	.L4
.L69:
.LBE8:
	.loc 1 496 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC108(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L70
.LBB9:
	.loc 1 497 0
	leaq	.LC109(%rip), %rcx
	call	puts
	.loc 1 498 0
	movl	$1, 468(%rbp)
	.loc 1 499 0
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
	.loc 1 500 0
	movq	312(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 501 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 502 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 503 0
	jmp	.L4
.L70:
.LBE9:
	.loc 1 506 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC110(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L71
	.loc 1 507 0
	leaq	.LC111(%rip), %rcx
	call	puts
	.loc 1 508 0
	leaq	448(%rbp), %rax
	movq	%rax, %rcx
	call	ClearFlags
.L71:
	.loc 1 511 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L72
.LBB10:
	.loc 1 512 0
	movl	$0, 56(%rbp)
	.loc 1 513 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 514 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L73
	.loc 1 515 0
	movl	$1, 56(%rbp)
	.loc 1 516 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 517 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 518 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L72
.L73:
	.loc 1 520 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L74
	.loc 1 521 0
	movl	$1, 56(%rbp)
	.loc 1 522 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 523 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
	.loc 1 524 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L72
.L74:
	.loc 1 526 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L75
	.loc 1 527 0
	movl	$1, 56(%rbp)
	.loc 1 528 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 529 0
	cmpl	$1, 32(%rbp)
	jne	.L76
.LBB11:
	.loc 1 531 0
	movl	$0, 32(%rbp)
	.loc 1 532 0
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
	.loc 1 533 0
	movq	80(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 534 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
.LBE11:
	jmp	.L72
.L76:
	.loc 1 537 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L72
.L75:
	.loc 1 539 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L78
	.loc 1 540 0
	movl	$1, 56(%rbp)
	.loc 1 541 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 542 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 543 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 544 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 545 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 546 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 547 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L72
.L78:
	.loc 1 550 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L72
	.loc 1 550 0 is_stmt 0 discriminator 2
	cmpl	$0, 56(%rbp)
	jne	.L72
	.loc 1 551 0 is_stmt 1
	leaq	.LC112(%rip), %rcx
	call	puts
	.loc 1 552 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC113(%rip), %rcx
	call	printf
	.loc 1 553 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 554 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L72:
.LBE10:
	.loc 1 559 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC114(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L79
	.loc 1 560 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 561 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 562 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 563 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 564 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L79:
	.loc 1 567 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isNumberType
	cmpl	$1, %eax
	jne	.L80
.LBB12:
	.loc 1 568 0
	movl	$0, 60(%rbp)
	.loc 1 569 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 571 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 572 0
	cmpl	$-1, 36(%rbp)
	je	.L81
	.loc 1 573 0
	movl	36(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC115(%rip), %rcx
	call	printf
.L81:
	.loc 1 576 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L82
	.loc 1 577 0
	movl	$1, 60(%rbp)
	.loc 1 578 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 579 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L80
.L82:
	.loc 1 581 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L83
	.loc 1 582 0
	movl	$1, 60(%rbp)
	.loc 1 583 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 584 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L80
.L83:
	.loc 1 586 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L84
	.loc 1 587 0
	movl	$1, 60(%rbp)
	.loc 1 588 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 589 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 590 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 591 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 592 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 593 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 594 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L80
.L84:
	.loc 1 596 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L85
	.loc 1 597 0
	movl	$1, 60(%rbp)
	.loc 1 598 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 599 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 600 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 601 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 602 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 603 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 604 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L80
.L85:
	.loc 1 606 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L86
.LBB13:
	.loc 1 607 0
	movl	$1, 60(%rbp)
	.loc 1 608 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 609 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 610 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	.loc 1 611 0
	movl	72(%rbp), %edx
	leaq	20512(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC116(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 612 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 613 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 614 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 615 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 616 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 617 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 618 0
	movq	0(%rbp), %rcx
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE13:
	jmp	.L80
.L86:
	.loc 1 620 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L87
.LBB14:
	.loc 1 621 0
	movl	$1, 60(%rbp)
	.loc 1 622 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 623 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 624 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	.loc 1 625 0
	movl	68(%rbp), %edx
	leaq	20512(%rbp), %rax
	movl	%edx, %r8d
	leaq	.LC116(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	.loc 1 626 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 627 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 628 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 629 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 630 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 631 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 632 0
	movq	0(%rbp), %rcx
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildDeclarationStatement
.LBE14:
	jmp	.L80
.L87:
	.loc 1 634 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC90(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L88
.LBB15:
	.loc 1 635 0
	movl	$1, 60(%rbp)
	.loc 1 636 0
	movl	$0, 64(%rbp)
	.loc 1 637 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 638 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 639 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 640 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 641 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 642 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 643 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 644 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 645 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 646 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 647 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC117(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L89
	.loc 1 649 0
	leaq	.LC118(%rip), %rcx
	call	puts
	.loc 1 650 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 651 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckArrayType
	movl	%eax, 64(%rbp)
	.loc 1 652 0
	movl	64(%rbp), %r9d
	leaq	20624(%rbp), %r8
	movq	0(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, %rcx
	call	BuildDeclarationExprStatement
	.loc 1 653 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	jmp	.L80
.L89:
	.loc 1 654 0
	leaq	.LC119(%rip), %rcx
	call	puts
	jmp	.L80
.L88:
.LBE15:
	.loc 1 656 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC71(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L91
	.loc 1 657 0
	movl	$1, 60(%rbp)
	.loc 1 658 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 659 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 660 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 661 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 662 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 663 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 664 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 665 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L91:
	.loc 1 667 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC73(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L92
	.loc 1 668 0
	movl	$1, 60(%rbp)
	.loc 1 669 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 670 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 671 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 672 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 673 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 674 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 675 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 676 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L92:
	.loc 1 678 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L93
	.loc 1 679 0
	movl	$1, 60(%rbp)
	.loc 1 680 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 681 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 682 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 683 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 684 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 685 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 686 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 687 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L93:
	.loc 1 689 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L94
	.loc 1 690 0
	movl	$1, 60(%rbp)
	.loc 1 691 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 692 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 693 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 694 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 695 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 696 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 697 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 698 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L94:
	.loc 1 700 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L95
	.loc 1 702 0
	movl	$1, 60(%rbp)
	.loc 1 703 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 704 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 705 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 706 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 707 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 708 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 709 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 710 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L95:
	.loc 1 712 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC83(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L96
	.loc 1 714 0
	movl	$1, 60(%rbp)
	.loc 1 715 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 716 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 717 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 718 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 719 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 720 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 721 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 722 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L96:
	.loc 1 724 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L97
	.loc 1 726 0
	movl	$1, 60(%rbp)
	.loc 1 727 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 728 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 729 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 730 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 731 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 732 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 733 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 734 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L97:
	.loc 1 736 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC85(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L98
	.loc 1 738 0
	movl	$1, 60(%rbp)
	.loc 1 739 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 740 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 741 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 742 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 743 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 744 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 745 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 746 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L98:
	.loc 1 748 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L99
	.loc 1 750 0
	movl	$1, 60(%rbp)
	.loc 1 751 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 752 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 753 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 754 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 755 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 756 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 757 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 758 0
	movl	$0, 28(%rbp)
	jmp	.L80
.L99:
	.loc 1 761 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L100
	.loc 1 761 0 is_stmt 0 discriminator 2
	cmpl	$0, 60(%rbp)
	jne	.L100
	.loc 1 762 0 is_stmt 1
	leaq	.LC120(%rip), %rcx
	call	puts
	.loc 1 763 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 764 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 765 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L80
.L100:
	.loc 1 768 0
	movl	460(%rbp), %eax
	cmpl	$1, %eax
	jne	.L80
	.loc 1 769 0
	leaq	.LC122(%rip), %rcx
	call	puts
	.loc 1 770 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 771 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 772 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L80:
.LBE12:
	.loc 1 779 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	isIdentifierType
	cmpl	$1, %eax
	jne	.L101
.LBB16:
	.loc 1 780 0
	movl	$0, 44(%rbp)
	.loc 1 782 0
	cmpl	$1, 24(%rbp)
	jne	.L102
	.loc 1 783 0
	leaq	.LC123(%rip), %rcx
	call	puts
	.loc 1 784 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 785 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 786 0
	movl	$0, 24(%rbp)
	.loc 1 787 0
	jmp	.L4
.L102:
	.loc 1 791 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L103
	.loc 1 792 0
	leaq	.LC124(%rip), %rcx
	call	puts
	.loc 1 793 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 794 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 795 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	.loc 1 796 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 797 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 798 0
	jmp	.L4
.L103:
	.loc 1 801 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 803 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L104
	.loc 1 804 0
	movl	$1, 44(%rbp)
	.loc 1 805 0
	leaq	.LC124(%rip), %rcx
	call	puts
	.loc 1 806 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 807 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 808 0
	cmpl	$-1, 36(%rbp)
	je	.L105
.LBB17:
	.loc 1 810 0
	leaq	20480(%rbp), %rax
	movl	$20, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 811 0
	movl	36(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC115(%rip), %rcx
	call	printf
	.loc 1 812 0
	cmpl	$1, 36(%rbp)
	jne	.L106
	.loc 1 812 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1970435187, (%rax)
	movw	$29795, 4(%rax)
	movb	$0, 6(%rax)
	jmp	.L107
.L106:
	.loc 1 813 0 is_stmt 1
	cmpl	$2, 36(%rbp)
	jne	.L108
	.loc 1 813 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1869180533, (%rax)
	movw	$110, 4(%rax)
	jmp	.L107
.L108:
	.loc 1 814 0 is_stmt 1
	cmpl	$3, 36(%rbp)
	jne	.L109
	.loc 1 814 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1836412517, (%rax)
	movb	$0, 4(%rax)
	jmp	.L107
.L109:
	.loc 1 815 0 is_stmt 1
	cmpl	$4, 36(%rbp)
	jne	.L110
	.loc 1 815 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1702064993, (%rax)
	movw	$29810, 4(%rax)
	movb	$0, 6(%rax)
	jmp	.L107
.L110:
	.loc 1 816 0 is_stmt 1
	cmpl	$5, 36(%rbp)
	jne	.L107
	.loc 1 816 0 is_stmt 0 discriminator 1
	leaq	20480(%rbp), %rax
	movl	$1852399981, (%rax)
	movb	$0, 4(%rax)
.L107:
	.loc 1 818 0 is_stmt 1
	movq	-8(%rbp), %rcx
	leaq	20480(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsertSymbolTable
.LBE17:
	jmp	.L111
.L105:
	.loc 1 821 0
	movq	-8(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC125(%rip), %rdx
	movq	%rax, %rcx
	call	InsertSymbolTable
.L111:
	.loc 1 823 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 824 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L101
.L104:
	.loc 1 826 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L112
	.loc 1 827 0
	movl	$1, 44(%rbp)
	.loc 1 828 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 829 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L101
.L112:
	.loc 1 831 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L113
	.loc 1 832 0
	movl	$1, 44(%rbp)
	.loc 1 833 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 834 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L101
.L113:
	.loc 1 836 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L114
	.loc 1 837 0
	movl	$1, 44(%rbp)
	.loc 1 838 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 839 0
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L101
.L114:
	.loc 1 841 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L115
	.loc 1 842 0
	movl	$1, 44(%rbp)
	.loc 1 843 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 844 0
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movl	$2, %r8d
	movq	%rax, %rcx
	call	BuildDoubleExprStatement
	jmp	.L101
.L115:
	.loc 1 846 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L116
	.loc 1 847 0
	movl	$1, 44(%rbp)
	.loc 1 848 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 849 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	jmp	.L101
.L116:
	.loc 1 851 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L117
	.loc 1 852 0
	movl	$1, 44(%rbp)
	.loc 1 853 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC126(%rip), %rcx
	call	printf
	.loc 1 854 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 855 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 856 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 857 0
	jmp	.L4
.L117:
	.loc 1 860 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L118
.LBB18:
	.loc 1 861 0
	movl	$1, 44(%rbp)
	.loc 1 862 0
	movl	$0, 48(%rbp)
	.loc 1 863 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 864 0
	movl	20(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC127(%rip), %rcx
	call	printf
	.loc 1 865 0
	movl	20(%rbp), %eax
	cmpl	$2, %eax
	jne	.L119
	.loc 1 866 0
	movl	$1, 48(%rbp)
	.loc 1 867 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 868 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r10
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	0(%rbp), %rdx
	movl	36(%rbp), %eax
	movl	%eax, 32(%rsp)
	movl	$1, %r9d
	movq	%rdx, %r8
	movq	%r10, %rdx
	call	BuildSimpleExpressionStatement
	.loc 1 869 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L120
.L119:
	.loc 1 872 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L120:
	.loc 1 874 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 875 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC128(%rip), %rcx
	call	printf
	.loc 1 876 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L121
	.loc 1 877 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 878 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC129(%rip), %rcx
	call	printf
	.loc 1 879 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 880 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L121:
	.loc 1 882 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L123
	.loc 1 883 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 884 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC130(%rip), %rcx
	call	printf
	.loc 1 885 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L124
	.loc 1 886 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 887 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 888 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 889 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC131(%rip), %rcx
	call	printf
	.loc 1 890 0
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 891 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L124:
	.loc 1 893 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L126
	.loc 1 894 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 895 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 896 0
	leaq	20624(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC132(%rip), %rcx
	call	printf
	.loc 1 897 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 898 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC133(%rip), %rcx
	call	printf
	.loc 1 899 0
	cmpl	$1, 48(%rbp)
	jne	.L127
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L128
.L127:
	.loc 1 900 0 is_stmt 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L128:
	.loc 1 901 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 902 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L126:
	.loc 1 905 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 906 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 907 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC134(%rip), %rcx
	call	printf
	.loc 1 908 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L129
	.loc 1 909 0
	movl	$0, 44(%rbp)
	.loc 1 910 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 911 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC48(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L130
	.loc 1 912 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 913 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC135(%rip), %rcx
	call	printf
	.loc 1 914 0
	cmpl	$1, 48(%rbp)
	jne	.L131
	.loc 1 914 0 is_stmt 0 discriminator 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L132
.L131:
	.loc 1 915 0 is_stmt 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L132:
	.loc 1 916 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 917 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L129
.L130:
	.loc 1 919 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L129
	.loc 1 920 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 921 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC136(%rip), %rcx
	call	printf
	.loc 1 922 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 923 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 924 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 925 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 926 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 927 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC137(%rip), %rcx
	call	printf
	.loc 1 928 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20736(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L129:
	.loc 1 931 0
	cmpl	$1, 44(%rbp)
	jne	.L101
	.loc 1 933 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 934 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC135(%rip), %rcx
	call	printf
	.loc 1 935 0
	cmpl	$1, 48(%rbp)
	jne	.L133
	.loc 1 935 0 is_stmt 0 discriminator 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L134
.L133:
	.loc 1 936 0 is_stmt 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L134:
	.loc 1 937 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 938 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L123:
	.loc 1 943 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L135
	.loc 1 944 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 945 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC138(%rip), %rcx
	call	printf
	.loc 1 946 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L136
	.loc 1 947 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 948 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	je	.L137
	.loc 1 948 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	je	.L137
	.loc 1 949 0 is_stmt 1
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L137:
	.loc 1 951 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 952 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC139(%rip), %rcx
	call	printf
	.loc 1 953 0
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 954 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L136:
	.loc 1 957 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 958 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 959 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 960 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC140(%rip), %rcx
	call	printf
	.loc 1 961 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 962 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L135:
	.loc 1 966 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 967 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC141(%rip), %rcx
	call	printf
	.loc 1 968 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 969 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 970 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC142(%rip), %rcx
	call	printf
	.loc 1 971 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L139
	.loc 1 972 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 973 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC143(%rip), %rcx
	call	printf
	.loc 1 974 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L140
	.loc 1 975 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 976 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC144(%rip), %rcx
	call	printf
	.loc 1 977 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 978 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L140:
	.loc 1 981 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 982 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L139:
	.loc 1 986 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 987 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 988 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 989 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC145(%rip), %rcx
	call	printf
	.loc 1 990 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L118:
.LBE18:
	.loc 1 995 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L142
.LBB19:
	.loc 1 996 0
	movl	$1, 44(%rbp)
	.loc 1 997 0
	movl	$0, 52(%rbp)
	.loc 1 998 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 999 0
	movl	20(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC127(%rip), %rcx
	call	printf
	.loc 1 1000 0
	movl	20(%rbp), %eax
	cmpl	$2, %eax
	jne	.L143
	.loc 1 1001 0
	movl	$1, 52(%rbp)
	.loc 1 1002 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1003 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r10
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	0(%rbp), %rdx
	movl	36(%rbp), %eax
	movl	%eax, 32(%rsp)
	movl	$2, %r9d
	movq	%rdx, %r8
	movq	%r10, %rdx
	call	BuildSimpleExpressionStatement
	.loc 1 1004 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L144
.L143:
	.loc 1 1007 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L144:
	.loc 1 1009 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1010 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC146(%rip), %rcx
	call	printf
	.loc 1 1011 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L145
	.loc 1 1012 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1013 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC147(%rip), %rcx
	call	printf
	.loc 1 1014 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1015 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L145:
	.loc 1 1017 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L147
	.loc 1 1018 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1019 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC148(%rip), %rcx
	call	printf
	.loc 1 1020 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L148
	.loc 1 1021 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1022 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1023 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1024 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC149(%rip), %rcx
	call	printf
	.loc 1 1025 0
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1026 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L148:
	.loc 1 1029 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1030 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1031 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1032 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC150(%rip), %rcx
	call	printf
	.loc 1 1033 0
	cmpl	$1, 52(%rbp)
	jne	.L150
	.loc 1 1033 0 is_stmt 0 discriminator 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L151
.L150:
	.loc 1 1034 0 is_stmt 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L151:
	.loc 1 1035 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1036 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20736(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L147:
	.loc 1 1039 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L152
	.loc 1 1040 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1041 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC151(%rip), %rcx
	call	printf
	.loc 1 1042 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L153
	.loc 1 1043 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1044 0
	leaq	20624(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC152(%rip), %rcx
	call	printf
	.loc 1 1045 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	je	.L154
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	je	.L154
	.loc 1 1046 0 is_stmt 1
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1047 0
	leaq	20624(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC153(%rip), %rcx
	call	printf
	.loc 1 1048 0
	movzbl	20624(%rbp), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L154
	.loc 1 1049 0
	leaq	20736(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1050 0
	leaq	20624(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC154(%rip), %rcx
	call	printf
.L154:
	.loc 1 1054 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1055 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC155(%rip), %rcx
	call	printf
	.loc 1 1056 0
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1057 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L153:
	.loc 1 1060 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1061 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1062 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1063 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC156(%rip), %rcx
	call	printf
	.loc 1 1064 0
	cmpl	$1, 52(%rbp)
	jne	.L157
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L157:
	.loc 1 1065 0 is_stmt 1
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1066 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L152:
	.loc 1 1070 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1071 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC157(%rip), %rcx
	call	printf
	.loc 1 1072 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1073 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1074 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC158(%rip), %rcx
	call	printf
	.loc 1 1075 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L158
	.loc 1 1076 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1077 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC159(%rip), %rcx
	call	printf
	.loc 1 1078 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L159
	.loc 1 1079 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1080 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC160(%rip), %rcx
	call	printf
	.loc 1 1081 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1082 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L159:
	.loc 1 1085 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	.loc 1 1086 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	jmp	.L101
.L158:
	.loc 1 1090 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L101
	.loc 1 1091 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1092 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1093 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC161(%rip), %rcx
	call	printf
	.loc 1 1094 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L101
.L142:
.LBE19:
	.loc 1 1099 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC63(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L101
	.loc 1 1103 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L101
	.loc 1 1106 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC67(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L161
.LBB20:
	.loc 1 1107 0
	movl	$1, 44(%rbp)
	.loc 1 1108 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1109 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 1109 0
	movl	36(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$8, %ecx
	call	expr_create
	movq	%rax, 96(%rbp)
	.loc 1 1110 0
	movq	96(%rbp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1111 0
	movl	$0, 28(%rbp)
.LBE20:
	jmp	.L101
.L161:
	.loc 1 1113 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC69(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L162
.LBB21:
	.loc 1 1114 0
	movl	$1, 44(%rbp)
	.loc 1 1115 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1116 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	.loc 1 1116 0
	movl	36(%rbp), %eax
	movl	%eax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$9, %ecx
	call	expr_create
	movq	%rax, 88(%rbp)
	.loc 1 1117 0
	movq	88(%rbp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1118 0
	movl	$0, 28(%rbp)
.LBE21:
	jmp	.L101
.L162:
	.loc 1 1120 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC71(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L163
	.loc 1 1121 0
	movl	$1, 44(%rbp)
	.loc 1 1122 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1123 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1124 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1125 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1126 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1127 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1128 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$1, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1129 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L163:
	.loc 1 1131 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC73(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L164
	.loc 1 1132 0
	movl	$1, 44(%rbp)
	.loc 1 1133 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1134 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1135 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1136 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1137 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1138 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1139 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$2, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1140 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L164:
	.loc 1 1142 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L165
	.loc 1 1143 0
	movl	$1, 44(%rbp)
	.loc 1 1144 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1145 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1146 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1147 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1148 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1149 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1150 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$3, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1151 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L165:
	.loc 1 1153 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L166
	.loc 1 1154 0
	movl	$1, 44(%rbp)
	.loc 1 1155 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1156 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1157 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1158 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1159 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1160 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1161 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1162 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L166:
	.loc 1 1164 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L167
	.loc 1 1166 0
	movl	$1, 44(%rbp)
	.loc 1 1167 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1168 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1169 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1170 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1171 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1172 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1173 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$5, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1174 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L167:
	.loc 1 1176 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC83(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L168
	.loc 1 1178 0
	movl	$1, 44(%rbp)
	.loc 1 1179 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1180 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1181 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1182 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1183 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1184 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1185 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1186 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L168:
	.loc 1 1188 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC81(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L169
	.loc 1 1190 0
	movl	$1, 44(%rbp)
	.loc 1 1191 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1192 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1193 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1194 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1195 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1196 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1197 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1198 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L169:
	.loc 1 1200 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC85(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L170
	.loc 1 1202 0
	movl	$1, 44(%rbp)
	.loc 1 1203 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1204 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1205 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1206 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1207 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1208 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1209 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1210 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L170:
	.loc 1 1212 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L171
	.loc 1 1214 0
	movl	$1, 44(%rbp)
	.loc 1 1215 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1216 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1217 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1218 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1219 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1220 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1221 0
	movq	0(%rbp), %r8
	leaq	20624(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rcx
	call	BuildAssignAndCompareExprStatement
	.loc 1 1222 0
	movl	$0, 28(%rbp)
	jmp	.L101
.L171:
	.loc 1 1226 0
	leaq	20624(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L172
	.loc 1 1227 0
	movl	$1, 44(%rbp)
	.loc 1 1228 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC162(%rip), %rcx
	call	printf
	.loc 1 1229 0
	leaq	20512(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC163(%rip), %rcx
	call	printf
	.loc 1 1230 0
	leaq	20736(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC164(%rip), %rcx
	call	printf
	.loc 1 1231 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 1232 0
	movzbl	20512(%rbp), %eax
	testb	%al, %al
	jne	.L173
	.loc 1 1232 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20736(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L175
.L173:
	.loc 1 1233 0 is_stmt 1
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$1, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L175
.L172:
	.loc 1 1235 0
	leaq	20624(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L176
	.loc 1 1236 0
	movl	$1, 44(%rbp)
	.loc 1 1237 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 1238 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$2, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L175
.L176:
	.loc 1 1240 0
	leaq	20624(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L177
	.loc 1 1241 0
	movl	$1, 44(%rbp)
	.loc 1 1242 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 1243 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$3, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
	jmp	.L175
.L177:
	.loc 1 1245 0
	leaq	20624(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L175
	.loc 1 1246 0
	movl	$1, 44(%rbp)
	.loc 1 1247 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 1248 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %r8
	leaq	20512(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	BuildSimpleExpressionStatement
.L175:
	.loc 1 1251 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L178
	.loc 1 1251 0 is_stmt 0 discriminator 2
	cmpl	$0, 44(%rbp)
	jne	.L178
	.loc 1 1252 0 is_stmt 1
	leaq	.LC165(%rip), %rcx
	call	puts
	.loc 1 1253 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1254 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 1255 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L101
.L178:
	.loc 1 1258 0
	leaq	.LC166(%rip), %rcx
	call	puts
	.loc 1 1259 0
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	464(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CheckIfMemberOfStatement
	movl	%eax, 36(%rbp)
	.loc 1 1260 0
	cmpl	$-1, 36(%rbp)
	je	.L179
	.loc 1 1261 0
	movl	36(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC115(%rip), %rcx
	call	printf
	.loc 1 1262 0
	cmpl	$6, 36(%rbp)
	jne	.L179
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L179:
	.loc 1 1264 0 is_stmt 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1265 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 1266 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L101:
.LBE16:
	.loc 1 1272 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC167(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L180
.LBB22:
	.loc 1 1273 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1274 0
	movl	$0, 76(%rbp)
	.loc 1 1275 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L181
	.loc 1 1276 0
	leaq	.LC124(%rip), %rcx
	call	puts
	.loc 1 1277 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1278 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 1279 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
	jmp	.L180
.L181:
	.loc 1 1281 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L182
	.loc 1 1282 0
	movl	$1, 76(%rbp)
	.loc 1 1283 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1284 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1285 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1286 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1287 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1288 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1289 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$4, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L180
.L182:
	.loc 1 1291 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	je	.L180
	.loc 1 1294 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	empty
	testl	%eax, %eax
	jne	.L180
	.loc 1 1294 0 is_stmt 0 discriminator 2
	cmpl	$0, 76(%rbp)
	jne	.L180
	.loc 1 1295 0 is_stmt 1
	leaq	.LC168(%rip), %rcx
	call	puts
	.loc 1 1296 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdx
	leaq	.LC121(%rip), %rcx
	call	printf
	.loc 1 1297 0
	movl	20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rbp)
	.loc 1 1298 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %r8
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rcx
	leaq	20(%rbp), %rax
	movq	%rax, %rdx
	call	push
.L180:
.LBE22:
	.loc 1 1305 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC169(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L183
	.loc 1 1306 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC170(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L184
.LBB23:
	.loc 1 1307 0
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
	.loc 1 1308 0
	movq	112(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1309 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1310 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1311 0
	jmp	.L4
.L184:
.LBE23:
	.loc 1 1313 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC171(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L185
.LBB24:
	.loc 1 1314 0
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
	.loc 1 1315 0
	movq	104(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	.loc 1 1316 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1317 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1318 0
	jmp	.L4
.L185:
.LBE24:
	.loc 1 1320 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC172(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L186
	.loc 1 1321 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1322 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1323 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1324 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1325 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1326 0
	leaq	20512(%rbp), %rcx
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	BuildNewStatement
	.loc 1 1327 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1328 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1329 0
	jmp	.L4
.L186:
	.loc 1 1331 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC173(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L187
	.loc 1 1332 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1333 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L188
	.loc 1 1334 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1335 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1336 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1337 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1338 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1339 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1340 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1341 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1342 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$7, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L188:
	.loc 1 1344 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L190
	.loc 1 1345 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1346 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1347 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1348 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1349 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1350 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1351 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1352 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1353 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$8, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L190:
	.loc 1 1355 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L191
	.loc 1 1356 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1357 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1358 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1359 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1360 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1361 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1362 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1363 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1364 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$9, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L191:
	.loc 1 1366 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L192
	.loc 1 1367 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1368 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1369 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1370 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1371 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1372 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1373 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1374 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1375 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$6, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L192:
	.loc 1 1377 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L193
	.loc 1 1377 0 is_stmt 0 discriminator 1
	cmpl	$1, 40(%rbp)
	jne	.L193
	.loc 1 1378 0 is_stmt 1
	movl	$0, 40(%rbp)
	.loc 1 1379 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1380 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1381 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1382 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1383 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1384 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1385 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1386 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1387 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$11, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L193:
	.loc 1 1389 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L183
	.loc 1 1389 0 is_stmt 0 discriminator 1
	cmpl	$0, 40(%rbp)
	jne	.L183
	.loc 1 1390 0 is_stmt 1
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1391 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1392 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1393 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1394 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1395 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1396 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$12, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
	jmp	.L183
.L187:
	.loc 1 1399 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC174(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L194
	.loc 1 1399 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC175(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L183
.L194:
	.loc 1 1400 0 is_stmt 1
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1401 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L183
	.loc 1 1402 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1403 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1404 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1405 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1406 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1407 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1408 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	20512(%rbp), %r8
	movq	0(%rbp), %rax
	movl	36(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	$10, %r9d
	movq	%rax, %rdx
	call	BuildDeclarationExprStatement
.L183:
	.loc 1 1416 0
	movq	8(%rbp), %rax
	addq	$4, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L195
	.loc 1 1418 0
	movl	20(%rbp), %eax
	testl	%eax, %eax
	je	.L196
	.loc 1 1420 0
	movl	468(%rbp), %eax
	cmpl	$1, %eax
	jne	.L197
	.loc 1 1421 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1422 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
.L197:
	.loc 1 1425 0
	cmpl	$1, 28(%rbp)
	jne	.L198
	.loc 1 1427 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1428 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1429 0
	jmp	.L4
.L198:
	.loc 1 1432 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1433 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L199
	.loc 1 1434 0
	leaq	.LC176(%rip), %rcx
	call	puts
	.loc 1 1435 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1436 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1437 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1439 0
	movl	$1, 24(%rbp)
	.loc 1 1440 0
	jmp	.L4
.L199:
	.loc 1 1443 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L200
	.loc 1 1444 0
	leaq	.LC177(%rip), %rcx
	call	puts
	.loc 1 1445 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1446 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1447 0
	movq	8(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	0(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdx
	call	BuildSingleExprStatement
	.loc 1 1448 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1449 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1450 0
	jmp	.L4
.L200:
	.loc 1 1453 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1454 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1455 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1456 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1458 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L201
	.loc 1 1459 0
	jmp	.L4
.L201:
	.loc 1 1462 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
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
	jne	.L202
	.loc 1 1463 0
	leaq	.LC178(%rip), %rcx
	call	puts
	.loc 1 1464 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
	.loc 1 1465 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L203
.LBB25:
	.loc 1 1466 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$3, %ecx
	call	type_create
	movq	%rax, 288(%rbp)
	.loc 1 1467 0
	movq	288(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 296(%rbp)
	.loc 1 1468 0
	movq	296(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1469 0
	movq	304(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE25:
	jmp	.L196
.L203:
	.loc 1 1471 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L205
.LBB26:
	.loc 1 1472 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$4, %ecx
	call	type_create
	movq	%rax, 264(%rbp)
	.loc 1 1473 0
	movq	264(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 272(%rbp)
	.loc 1 1474 0
	movq	272(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1475 0
	movq	280(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE26:
	jmp	.L196
.L205:
	.loc 1 1477 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L206
.LBB27:
	.loc 1 1478 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$5, %ecx
	call	type_create
	movq	%rax, 240(%rbp)
	.loc 1 1479 0
	movq	240(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 248(%rbp)
	.loc 1 1480 0
	movq	248(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1481 0
	movq	256(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE27:
	jmp	.L196
.L206:
	.loc 1 1483 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L207
.LBB28:
	.loc 1 1484 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$2, %ecx
	call	type_create
	movq	%rax, 216(%rbp)
	.loc 1 1485 0
	movq	216(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 224(%rbp)
	.loc 1 1486 0
	movq	224(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1487 0
	movq	232(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE28:
	jmp	.L196
.L207:
	.loc 1 1489 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L208
.LBB29:
	.loc 1 1490 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$1, %ecx
	call	type_create
	movq	%rax, 192(%rbp)
	.loc 1 1491 0
	movq	192(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 200(%rbp)
	.loc 1 1492 0
	movq	200(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1493 0
	movq	208(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE29:
	jmp	.L196
.L208:
	.loc 1 1495 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L209
.LBB30:
	.loc 1 1496 0
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	call	type_create
	movq	%rax, 168(%rbp)
	.loc 1 1497 0
	movq	168(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 176(%rbp)
	.loc 1 1498 0
	movq	176(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1499 0
	movq	184(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.LBE30:
	jmp	.L196
.L209:
	.loc 1 1501 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC175(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L210
	.loc 1 1501 0 is_stmt 0 discriminator 1
	movq	8(%rbp), %rax
	addq	$104, %rax
	leaq	.LC174(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L196
.L210:
.LBB31:
	.loc 1 1502 0 is_stmt 1
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1503 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1504 0
	movq	8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 144(%rbp)
	.loc 1 1505 0
	movq	144(%rbp), %rdx
	leaq	20512(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 152(%rbp)
	.loc 1 1506 0
	movq	152(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1507 0
	movq	160(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
	jmp	.L196
.L202:
.LBE31:
.LBB32:
	.loc 1 1512 0
	movl	20(%rbp), %eax
	leaq	480(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	leaq	20624(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	.loc 1 1513 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1514 0
	leaq	20(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	.loc 1 1515 0
	movl	20(%rbp), %eax
	cltq
	movb	$0, 480(%rbp,%rax)
	.loc 1 1516 0
	leaq	20512(%rbp), %rax
	movq	%rax, %rcx
	call	expr_create_string
	movq	%rax, 120(%rbp)
	.loc 1 1517 0
	movq	120(%rbp), %rdx
	leaq	20624(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	decl_create
	movq	%rax, 128(%rbp)
	.loc 1 1518 0
	movq	128(%rbp), %rax
	movl	36(%rbp), %edx
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
	.loc 1 1519 0
	movq	136(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	push_commandList
.L196:
.LBE32:
	.loc 1 1523 0
	movl	460(%rbp), %eax
	cmpl	$1, %eax
	jne	.L195
	.loc 1 1525 0
	leaq	.LC179(%rip), %rcx
	call	puts
	.loc 1 1526 0
	movl	$0, 460(%rbp)
.L195:
	.loc 1 1530 0
	leaq	.LC3(%rip), %rcx
	call	puts
	.loc 1 1531 0
	movq	8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, 8(%rbp)
.L4:
	.loc 1 37 0
	cmpq	$0, 8(%rbp)
	jne	.L211
	.loc 1 1534 0
	nop
	.loc 1 1535 0
	movq	.refptr.__stack_chk_guard(%rip), %rax
	movq	20840(%rbp), %rbx
	xorq	(%rax), %rbx
	je	.L213
	call	__stack_chk_fail
	nop
.L213:
	addq	$20984, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 21000
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
	.long	0x1ef0
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
	.long	0x1e5b
	.uleb128 0x29
	.ascii "current\0"
	.byte	0x1
	.byte	0x14
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20872
	.uleb128 0x2a
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x14
	.long	0x1e61
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20880
	.uleb128 0x2a
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x14
	.long	0x1e67
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20888
	.uleb128 0x2b
	.ascii "top\0"
	.byte	0x1
	.byte	0x15
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20860
	.uleb128 0x2b
	.ascii "partOfComment\0"
	.byte	0x1
	.byte	0x16
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20856
	.uleb128 0x2b
	.ascii "notTheEndFlag\0"
	.byte	0x1
	.byte	0x17
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20852
	.uleb128 0x2b
	.ascii "hasDefer\0"
	.byte	0x1
	.byte	0x18
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20848
	.uleb128 0x2b
	.ascii "theStack\0"
	.byte	0x1
	.byte	0x19
	.long	0x1e6d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20400
	.uleb128 0x2b
	.ascii "temp\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2b
	.ascii "temp2\0"
	.byte	0x1
	.byte	0x1a
	.long	0xc9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.ascii "temp3\0"
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
	.sleb128 -20844
	.uleb128 0x2b
	.ascii "iIsPointer\0"
	.byte	0x1
	.byte	0x1c
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20840
	.uleb128 0x2b
	.ascii "flags\0"
	.byte	0x1
	.byte	0x23
	.long	0x1597
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20432
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1706
	.uleb128 0x2b
	.ascii "main_stmt\0"
	.byte	0x1
	.byte	0x31
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20440
	.byte	0
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x172c
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x1
	.byte	0xca
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20448
	.byte	0
	.uleb128 0x2c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1752
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x1
	.byte	0xfb
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20456
	.byte	0
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x17c4
	.uleb128 0x2e
	.secrel32	.LASF6
	.byte	0x1
	.word	0x1b0
	.long	0x1e83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1b1
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20488
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1b7
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20480
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x1b8
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20472
	.uleb128 0x2f
	.ascii "struct_stmt\0"
	.byte	0x1
	.word	0x1b9
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20464
	.byte	0
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1834
	.uleb128 0x2e
	.secrel32	.LASF6
	.byte	0x1
	.word	0x1c3
	.long	0x1e83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1c4
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20520
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1ca
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20512
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x1cb
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20504
	.uleb128 0x2f
	.ascii "enum_stmt\0"
	.byte	0x1
	.word	0x1cc
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20496
	.byte	0
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x18a5
	.uleb128 0x2e
	.secrel32	.LASF6
	.byte	0x1
	.word	0x1d6
	.long	0x1e83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.secrel32	.LASF11
	.byte	0x1
	.word	0x1d7
	.long	0x1e5b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20552
	.uleb128 0x2e
	.secrel32	.LASF3
	.byte	0x1
	.word	0x1dd
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20544
	.uleb128 0x2e
	.secrel32	.LASF12
	.byte	0x1
	.word	0x1de
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20536
	.uleb128 0x2f
	.ascii "union_stmt\0"
	.byte	0x1
	.word	0x1df
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20528
	.byte	0
	.uleb128 0x2c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x18d0
	.uleb128 0x2f
	.ascii "theStmt\0"
	.byte	0x1
	.word	0x1e9
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20560
	.byte	0
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x18fb
	.uleb128 0x2f
	.ascii "theStmt\0"
	.byte	0x1
	.word	0x1f3
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20568
	.byte	0
	.uleb128 0x2c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x194c
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x200
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20824
	.uleb128 0x30
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2f
	.ascii "defer_stmt\0"
	.byte	0x1
	.word	0x214
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20800
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x19ed
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x238
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20820
	.uleb128 0x2c
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1999
	.uleb128 0x2e
	.secrel32	.LASF14
	.byte	0x1
	.word	0x262
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20808
	.byte	0
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x19c0
	.uleb128 0x2e
	.secrel32	.LASF14
	.byte	0x1
	.word	0x270
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20812
	.byte	0
	.uleb128 0x30
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2f
	.ascii "theArrayType\0"
	.byte	0x1
	.word	0x27c
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20816
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1aec
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x30c
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20836
	.uleb128 0x2c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1a39
	.uleb128 0x2e
	.secrel32	.LASF4
	.byte	0x1
	.word	0x329
	.long	0x1e83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1a63
	.uleb128 0x2f
	.ascii "myFlag\0"
	.byte	0x1
	.word	0x35e
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20832
	.byte	0
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1a8d
	.uleb128 0x2f
	.ascii "myFlag\0"
	.byte	0x1
	.word	0x3e5
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20828
	.byte	0
	.uleb128 0x2c
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1abe
	.uleb128 0x2f
	.ascii "incrementExpr\0"
	.byte	0x1
	.word	0x455
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20784
	.byte	0
	.uleb128 0x30
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2f
	.ascii "decrementExpr\0"
	.byte	0x1
	.word	0x45c
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20792
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x1b13
	.uleb128 0x2e
	.secrel32	.LASF13
	.byte	0x1
	.word	0x4fa
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20804
	.byte	0
	.uleb128 0x2c
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x1b46
	.uleb128 0x2f
	.ascii "break_decl_stmt\0"
	.byte	0x1
	.word	0x51b
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20768
	.byte	0
	.uleb128 0x2c
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1b78
	.uleb128 0x2f
	.ascii "cont_decl_stmt\0"
	.byte	0x1
	.word	0x522
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20776
	.byte	0
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1bdc
	.uleb128 0x2f
	.ascii "int_type\0"
	.byte	0x1
	.word	0x5ba
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20592
	.uleb128 0x2f
	.ascii "int_declaration\0"
	.byte	0x1
	.word	0x5bb
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20584
	.uleb128 0x2f
	.ascii "int_decl_stmt\0"
	.byte	0x1
	.word	0x5bc
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20576
	.byte	0
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1c2d
	.uleb128 0x2f
	.ascii "string_type\0"
	.byte	0x1
	.word	0x5c0
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20616
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x5c1
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20608
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x5c2
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20600
	.byte	0
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x1c97
	.uleb128 0x2f
	.ascii "float_type\0"
	.byte	0x1
	.word	0x5c6
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20640
	.uleb128 0x2f
	.ascii "float_declaration\0"
	.byte	0x1
	.word	0x5c7
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20632
	.uleb128 0x2f
	.ascii "float_decl_stmt\0"
	.byte	0x1
	.word	0x5c8
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20624
	.byte	0
	.uleb128 0x2c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x1cfe
	.uleb128 0x2f
	.ascii "char_type\0"
	.byte	0x1
	.word	0x5cc
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20664
	.uleb128 0x2f
	.ascii "char_declaration\0"
	.byte	0x1
	.word	0x5cd
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20656
	.uleb128 0x2f
	.ascii "char_decl_stmt\0"
	.byte	0x1
	.word	0x5ce
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20648
	.byte	0
	.uleb128 0x2c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1d65
	.uleb128 0x2f
	.ascii "bool_type\0"
	.byte	0x1
	.word	0x5d2
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20688
	.uleb128 0x2f
	.ascii "bool_declaration\0"
	.byte	0x1
	.word	0x5d3
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20680
	.uleb128 0x2f
	.ascii "bool_decl_stmt\0"
	.byte	0x1
	.word	0x5d4
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20672
	.byte	0
	.uleb128 0x2c
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1dcc
	.uleb128 0x2f
	.ascii "void_type\0"
	.byte	0x1
	.word	0x5d8
	.long	0xfe7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20712
	.uleb128 0x2f
	.ascii "void_declaration\0"
	.byte	0x1
	.word	0x5d9
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20704
	.uleb128 0x2f
	.ascii "void_decl_stmt\0"
	.byte	0x1
	.word	0x5da
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20696
	.byte	0
	.uleb128 0x2c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1e15
	.uleb128 0x2e
	.secrel32	.LASF17
	.byte	0x1
	.word	0x5e0
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20736
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x5e1
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20728
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x5e2
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20720
	.byte	0
	.uleb128 0x30
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2e
	.secrel32	.LASF17
	.byte	0x1
	.word	0x5ec
	.long	0x13f5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20760
	.uleb128 0x2e
	.secrel32	.LASF15
	.byte	0x1
	.word	0x5ed
	.long	0x1467
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20752
	.uleb128 0x2e
	.secrel32	.LASF16
	.byte	0x1
	.word	0x5ee
	.long	0x140d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20744
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
	.long	0x1e83
	.uleb128 0xa
	.long	0x149
	.byte	0xc7
	.uleb128 0xa
	.long	0x149
	.byte	0x63
	.byte	0
	.uleb128 0x9
	.long	0x16c
	.long	0x1e93
	.uleb128 0xa
	.long	0x149
	.byte	0x13
	.byte	0
	.uleb128 0x31
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
	.long	0x1e5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x8
	.long	0x1e61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.secrel32	.LASF9
	.byte	0x1
	.byte	0x9
	.long	0x1e67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.ascii "current\0"
	.byte	0x1
	.byte	0xa
	.long	0x1e5b
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
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
.LASF7:
	.ascii "memberFlags\0"
.LASF6:
	.ascii "scope\0"
.LASF17:
	.ascii "stringExpr\0"
.LASF8:
	.ascii "commandNode\0"
.LASF16:
	.ascii "string_decl_stmt\0"
.LASF10:
	.ascii "tempCurrent\0"
.LASF5:
	.ascii "symbolTable\0"
.LASF3:
	.ascii "theType\0"
.LASF15:
	.ascii "string_declaration\0"
.LASF4:
	.ascii "memberOf\0"
.LASF13:
	.ascii "doneFlag\0"
.LASF9:
	.ascii "symTable\0"
.LASF11:
	.ascii "tempParse\0"
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
	.def	BuildSimpleExpressionStatement;	.scl	2;	.type	32;	.endef
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
	.def	BuildNewStatement;	.scl	2;	.type	32;	.endef
	.def	expr_create_string;	.scl	2;	.type	32;	.endef
	.def	__stack_chk_fail;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.__stack_chk_guard, "dr"
	.globl	.refptr.__stack_chk_guard
	.linkonce	discard
.refptr.__stack_chk_guard:
	.quad	__stack_chk_guard
