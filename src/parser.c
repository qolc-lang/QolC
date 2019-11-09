#include "../inc/parserFunctions.h"

/*
	Creating the appropriate lists and nodes;then calls the parsing 
	function to manage them
*/
void parseProgram(parse_state* node) {
	command* commandNode = malloc(sizeof(command));
	symbolTable* symTable = malloc(sizeof(symbolTable));
	parse_state * current = node;
	parsing(current, commandNode, symTable);
	print_commandList(commandNode);
	/* DisplaySymbolTable(symTable); */
	return;
}

/*
	Parsing the parsable list node and manages the found commands
*/
void parsing(parse_state* current, command* commandNode, symbolTable* symTable) {
	int top;
	int partOfComment = 0;
	int notTheEndFlag = 0;
	int hasDefer = 0;
	char theStack[200][100];
	char temp[100], temp2[100], temp3[100];
	int sTypeOfMember;
	int iIsPointer = 0;
	
	init(&top);
	memset(temp, 0, sizeof(temp));
	memset(temp2, 0, sizeof(temp2));
	memset(temp3, 0, sizeof(temp2));

	memberFlags flags;

	while (current != NULL) {
		printf("Type in the loop : %s\n", current->type);

		if (strcmp(current->value, "import") == 0) {
			printf("Import statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "main") == 0) {
			printf("Main statement to be built.\n");
			stmt* main_stmt = stmt_create(STMT_MAIN, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, main_stmt, NULL); 
			flags.nIsMainMember = 1;
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "load") == 0) {
			printf("Load statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "print") == 0) {
			printf("Print statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "sleep") == 0) {
			printf("Sleep statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "delete") == 0) {
			printf("Delete statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "cast") == 0) {
			printf("Cast statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "array_add") == 0) {
			printf("Array_add statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "scan") == 0) {
			printf("Scan statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "string") == 0) {
			printf("String keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "int") == 0) {
			printf("Int keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "float") == 0) {
			printf("Float keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "char") == 0) {
			printf("Char keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "bool") == 0) {
			printf("Bool keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "void") == 0) {
			printf("Void keyword going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "@") == 0) {

			/* Checking if the @ is part of comment */
			pop(&top);
			if (strcmp(theStack[top], "/@") == 0) 
			{
				printf("Part of comment %s.\n", current->value);
				printf("**********************************************************\n");
				current = current->next;
				++top;
				continue;
			}
			printf("Operator @ going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "if") == 0) {
			printf("If statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "while") == 0) {
			printf("While statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "for") == 0) {
			printf("For statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "each") == 0) {
			printf("Each statement to be built.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "defer") == 0) {
			printf("Defer statement to be built.\n");
			hasDefer = 1;
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "+") == 0) {
			printf("Operator + going in.\n");
			parse_state* tempCurrent = current;
			tempCurrent = tempCurrent->next;
			if (strcmp(tempCurrent->type, "operator") == 0) {
				pop(&top);
				printf("Now the stack top : %s\n", theStack[top]);
				current = current->next;
				printf("The CURRENT NOW UP ADD 1 : %s\n", current->value);
				strcpy(temp, current->value);
				current = current->next;
				printf("The CURRENT NOW UP ADD 2 : %s\n", current->value);
				strcpy(temp2, current->value);
				BuildSimpleExpressionStatement(theStack[top], temp2, commandNode, 1, sTypeOfMember);
				current = current->next;
				printf("The CURRENT NOW UP ADD 3 : %s\n", current->value);
				if (strcmp(current->type, "end of command") != 0){
					strcpy(temp3, current->value);
					if (strcmp(temp, "-") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
					}
					else if (strcmp(temp, "+") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
					current = current->next;
				}
				else {
					current = current->next;
					printf("The CURRENT NOW UP ADD 4 : %s\n", current->value);
					if (strcmp(temp, "-") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
					}
					else if (strcmp(temp, "+") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
			}
			else {
				push(theStack[top], &top, current->value);
				current = current->next;
				printf("The CURRENT NOW UP ADD 5 : %s\n", current->value);
			}
			printf("**********************************************************\n");
			continue;
		}
		else if (strcmp(current->value, "-") == 0) {
			printf("Operator - going in.\n");
			parse_state* tempCurrent = current;
			tempCurrent = tempCurrent->next;
			if (strcmp(tempCurrent->type, "operator") == 0) {
				pop(&top);
				printf("Now the stack top : %s\n", theStack[top]);
				current = current->next;
				printf("The CURRENT NOW UP SUB 1 : %s\n", current->value);
				strcpy(temp, current->value);
				current = current->next;
				printf("The CURRENT NOW UP SUB 2: %s\n", current->value);
				strcpy(temp2, current->value);
				BuildSimpleExpressionStatement(theStack[top], temp2, commandNode, 2, sTypeOfMember);
				current = current->next;
				printf("The CURRENT NOW UP SUB 3 : %s\n", current->value);
				if (strcmp(current->type, "end of command") != 0){
					if (strcmp(temp, "-") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
					}
					else if (strcmp(temp, "+") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
					current = current->next;
				}
				else {
					current = current->next;
					printf("The CURRENT NOW UP SUB 4 : %s\n", current->value);
					if (strcmp(temp, "-") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
					}
					else if (strcmp(temp, "+") == 0)
					{
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
			}
			else {
				push(theStack[top], &top, current->value);
				current = current->next;
				printf("The CURRENT NOW UP SUB 5 : %s\n", current->value);
			}
			printf("**********************************************************\n");
			continue;
		}
		else if (strcmp(current->value, "*") == 0) {
			printf("Operator * going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "/") == 0) {
			printf("Operator / going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "++") == 0) {
			printf("Operator ++ going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "--") == 0) {
			printf("Operator -- going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "+=") == 0) {
			printf("Operator += going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "-=") == 0) {
			printf("Operator -= going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "*=") == 0) {
			printf("Operator *= going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "/=") == 0) {
			printf("Operator /= going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, ">") == 0) {
			printf("Operator > going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "<") == 0) {
			printf("Operator < going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, ">=") == 0) {
			printf("Operator >= going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "<=") == 0) {
			printf("Operator <= going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "@==") == 0) {
			printf("Operator @== going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "/@") == 0) {
			printf("Comment symbol going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "[") == 0) {
			printf("Array start going in.\n");
			push(theStack[top], &top, current->value);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "]") == 0) {
			printf("Array end going in.\n");
			/* Just for array type checking, set a variable at some point 
						push(theStack[top], &top, current->value);
			*/
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "^") == 0) {
			printf("Operator ^ going in.\n");
			push(theStack[top], &top, current->value);
			iIsPointer = 1;
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}
		else;

		printf("Value in the loop : %s\n", current->value);

		if (strcmp(current->value, "struct") == 0) {
			printf("Struct statement to be built.\n");
			printf("The struct variable : %s\n", temp);
			char scope[20];
			parse_state* tempParse = current;
			(flags.nIsMainMember == 1) ? strcpy(scope, "main") : strcpy(scope, "global");
			strcpy(tempParse->value, temp);
			strcpy(tempParse->type, "struct");
			InsertSymbolTable(tempParse, scope, symTable);
			flags.nIsStructMember = 1;
			type* theType = type_create(TYPE_STRUCT, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* struct_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, struct_stmt, NULL);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "enum") == 0) {
			printf("Enum statement to be built.\n");
			printf("The enum variable : %s\n", temp);
			char scope[20];
			parse_state* tempParse = current;
			(flags.nIsMainMember == 1) ? strcpy(scope, "main") : strcpy(scope, "global");
			strcpy(tempParse->value, temp);
			strcpy(tempParse->type, "enum");
			InsertSymbolTable(tempParse, scope, symTable);
			flags.nIsEnumMember = 1;
			type* theType = type_create(TYPE_ENUM, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* enum_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, enum_stmt, NULL);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "union") == 0) {
			printf("Union statement to be built/\n");
			printf("The union variable : %s\n", temp);
			char scope[20];
			parse_state* tempParse = current;
			(flags.nIsMainMember == 1) ? strcpy(scope, "main") : strcpy(scope, "global");
			strcpy(tempParse->value, temp);
			strcpy(tempParse->type, "union");
			InsertSymbolTable(tempParse, scope, symTable);
			flags.nIsUnionMember = 1;
			type* theType = type_create(TYPE_UNION, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* union_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, union_stmt, NULL);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "assert") == 0) {
			printf("Assert statement to be built.\n");
			flags.nIsAssertMember = 1;
			stmt* theStmt = stmt_create(STMT_ASSERT, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, theStmt, NULL);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "return") == 0) {
			printf("Return statement to be built.\n");
			flags.nIsReturnMember = 1;
			stmt* theStmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, theStmt, NULL);
			printf("**********************************************************\n");
			current = current->next;
			continue;
		}

		if (strcmp(current->type, "block end") == 0) {
			printf("Going to clear the flags.\n");
			ClearFlags(&flags);
		}

		if (strcmp(current->type, "string") == 0) {
			int doneFlag = 0;
			pop(&top);
			if (strcmp(theStack[top], "import") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				InsertSymbolTable(current, "import", symTable);
				BuildSingleExprStatement(current->value, commandNode, 1);
			}
			else if (strcmp(theStack[top], "load") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				InsertSymbolTable(current, "load", symTable);
				BuildSingleExprStatement(current->value, commandNode, 2);
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				if (hasDefer == 1)
				{
					hasDefer = 0;
					stmt* defer_stmt = stmt_create(STMT_DEFER, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
					push_commandList(commandNode, NULL, defer_stmt, NULL); 
					BuildSingleExprStatement(current->value, commandNode, 3);
				}
				else 
					BuildSingleExprStatement(current->value, commandNode, 3);
			}
			else if (strcmp(theStack[top], "string") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationExprStatement(current->value, commandNode, temp, 5, sTypeOfMember);
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("The stack at string type is not empty\n");
					printf("Going to push the value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}

		if (strcmp(current->type, "hexadecimal number") == 0) {
			pop(&top);
			strcpy(temp, theStack[top]);
			pop(&top);
			theStack[0][top] = '\0';
			BuildDeclarationExprStatement(current->value, commandNode, temp, 1, sTypeOfMember);
		}

		if (isNumberType(current->type) == 1) {
			int doneFlag = 0;
			pop(&top);

			sTypeOfMember = CheckIfMemberOfStatement(flags);
			if (sTypeOfMember != -1) {
				printf("It is member of : %d\n", sTypeOfMember);
			}

			if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 3);
			}
			else if (strcmp(theStack[top], "sleep") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 4);
			}
			else if (strcmp(theStack[top], "int") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationExprStatement(current->value, commandNode, temp, 2, sTypeOfMember);
			}
			else if (strcmp(theStack[top], "float") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationExprStatement(current->value, commandNode, temp, 3, sTypeOfMember);
			}
			else if (strcmp(theStack[top], "+") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				int theResult = atoi(theStack[top]) + atoi(current->value);
				sprintf(temp, "%d", theResult);
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationStatement(temp, temp2, commandNode);
			}
			else if (strcmp(theStack[top], "-") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				int theResult = atoi(theStack[top]) - atoi(current->value);
				sprintf(temp, "%d", theResult);
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationStatement(temp, temp2, commandNode);
			}
			else if (strcmp(theStack[top], "[") == 0) {
				doneFlag = 1;
				int theArrayType = 0;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				current = current->next;
				if (strcmp(current->type, "array end") == 0)
				{
					printf("Valid array.\n");
					current = current->next;
					theArrayType = CheckArrayType(current, symTable);
					BuildDeclarationExprStatement(temp, commandNode, temp2, theArrayType, sTypeOfMember);
					current = current->next;
				} else { printf("Not a valid array.\n"); }
			}
			else if (strcmp(theStack[top], "+=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 1, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "-=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 2, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "*=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 3, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "/=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 4, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], ">") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 5, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], ">=") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 6, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "<") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 7, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "<=") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 8, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "@==") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 9, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("The stack at number type is not empty.\n");
					printf("Going to insert the value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
				else {
					if (flags.nIsAssertMember == 1) {
						printf("The stack at number type is empty.\n");
						printf("Going to insert the value : %s\n", current->value);
						++top;
						push(theStack[top], &top, current->value);
					}
				}
			}
		}

		/* Check for identifier type */
		if (isIdentifierType(current->type) == 1) {
			int doneFlag = 0;

			if (partOfComment == 1) {
				printf("This is the last part of the comment\n");
				printf("**********************************************************\n");
				current = current->next;
				partOfComment = 0;
				continue;
			}

			/* check for additional @ operator which we don't want in here */
			if (strcmp(theStack[top], "@") == 0) {
				printf("Operator @ is in the stack now.\n");
				printf("Going to insert the value : %s\n", current->value);
				++top;
				push(theStack[top], &top, current->value);
				printf("**********************************************************\n");
				current = current->next;
				continue;
			}

			pop(&top);

			if (strcmp(theStack[top], "@") == 0) {
				doneFlag = 1;
				printf("Operator @ is in the stack now.\n");
				printf("Going to insert the value : %s\n", current->value);
				sTypeOfMember = CheckIfMemberOfStatement(flags);
				if (sTypeOfMember != -1) {
					char memberOf[20];
					memset(memberOf, 0, sizeof(memberOf));
					printf("It is member of : %d\n", sTypeOfMember);
					if (sTypeOfMember == 1) strcpy(memberOf, "struct");
					else if (sTypeOfMember == 2) strcpy(memberOf, "union");
					else if (sTypeOfMember == 3) strcpy(memberOf, "enum");
					else if (sTypeOfMember == 4) strcpy(memberOf, "assert");
					else if (sTypeOfMember == 5) strcpy(memberOf, "main");
					else;
					InsertSymbolTable(current, memberOf, symTable);
				}
				else {
					InsertSymbolTable(current, "global", symTable);
				}
				++top;
				push(theStack[top], &top, current->value);
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 3);
			}
			else if (strcmp(theStack[top], "scan") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 5);
			}
			else if (strcmp(theStack[top], "cast") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildDoubleExprStatement(current, commandNode, 1);
			}
			else if (strcmp(theStack[top], "array_add") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildDoubleExprStatement(current, commandNode, 2);
			}
			else if (strcmp(theStack[top], "delete") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 6);
			}
			else if (strcmp(theStack[top], "/@") == 0) {
				doneFlag = 1;
				printf("This is part of a comment %s\n", current->value);
				printf("**********************************************************\n");
				current = current->next;
				++top;
				continue;
			}
			/* ADD */
			else if (strcmp(theStack[top], "+") == 0) {
				doneFlag = 1;
				int myFlag = 0;
				sTypeOfMember = CheckIfMemberOfStatement(flags);
				printf("The top now : %d\n", top);
				if (top == 2) {
					myFlag = 1;
					pop(&top);
					BuildSimpleExpressionStatement(theStack[top], current->value, commandNode, 1, sTypeOfMember);
					strcpy(temp, current->value);
				}
				else {
					strcpy(temp, current->value);
				}
				current = current->next;
				printf("The CURRENT NOW 1 : %s\n", current->value);
				if (strcmp(current->type, "end of command") == 0) {
					current = current->next;
					printf("The CURRENT NOW 2 : %s\n", current->value);
					strcpy(temp2, current->value);
					BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
				}
				else if (strcmp(current->value, "-") == 0) {
					current = current->next;
					printf("The CURRENT NOW 3 : %s\n", current->value);
					if (strcmp(current->type, "end of command") == 0){
						pop(&top);
						strcpy(temp2, theStack[top]);
						current = current->next;
						printf("The CURRENT NOW 4 : %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, temp, commandNode, 1, sTypeOfMember);
						BuildSimpleExpressionStatement(temp, current->value, commandNode, 2, sTypeOfMember);
					}
					else if (strcmp(current->value, "-") == 0) {
						current = current->next;
						strcpy(temp2, current->value);
						printf("The CURRENT NOW 3.1 : %s\n", temp2);
						current = current->next;
						printf("The CURRENT NOW 3.2 : %s\n", current->value);
						if (myFlag == 1) BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
						else BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
						strcpy(temp3, current->value);
					}
					else {
						strcpy(temp2, current->value);
						current = current->next;
						printf("The CURRENT NOW 5.1 : %s\n", current->value);
						if (strcmp(current->value, "-") == 0) {
							doneFlag = 0;
							current = current->next;
							if (strcmp(current->type, "operator") != 0) {
								printf("The CURRENT NOW 5.5 : %s\n", current->value);
								BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
								BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
								strcpy(temp3, current->value);
							}
							else if (strcmp(current->value, "+") == 0) {
								current = current->next;
								printf("The CURRENT NOW 5.2 : %s\n", current->value);
								strcpy(temp3, current->value);
								BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
								BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
								current = current->next;
								printf("The CURRENT NOW 5.4 : %s\n", current->value);
								current = current->next;
								printf("The CURRENT NOW 5.3 : %s\n", current->value);
								BuildSimpleExpressionStatement(temp3, current->value, commandNode, 1, sTypeOfMember);
							}
						}
						if (doneFlag == 1)
						{
							current = current->next;
							printf("The CURRENT NOW 5 : %s\n", current->value);
							if (myFlag == 1) BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
							else BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
							BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
							strcpy(temp3, current->value);
						}

					}
				}
				else if (strcmp(current->value, "+") == 0) {
					current = current->next;
					printf("The CURRENT NOW 15 : %s\n", current->value);
					if (strcmp(current->type, "end of command") == 0){
						pop(&top);
						if ((strcmp(theStack[top], "-") != 0) && (strcmp(theStack[top], "+") != 0)){
							strcpy(temp2, theStack[top]);
						}
						current = current->next;
						printf("The CURRENT NOW 16 : %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, temp, commandNode, 1, sTypeOfMember);
						BuildSimpleExpressionStatement(temp, current->value, commandNode, 1, sTypeOfMember);
					}
					else {
						strcpy(temp2, current->value);
						current = current->next;
						current = current->next;
						printf("The CURRENT NOW 17 : %s\n", current->value);
						BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
				else {
					strcpy(temp2, current->value);
					printf("The CURRENT NOW 19 : %s\n", current->value);
					BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
					current = current->next;
					printf("The CURRENT NOW 6 : %s\n", current->value);
					if (strcmp(current->value, "-") == 0) {
						current = current->next;
						printf("The CURRENT NOW 20 : %s\n", current->value);
						if (strcmp(current->type, "end of command") == 0){
							current = current->next;
							printf("The CURRENT NOW 7 : %s\n", current->value);
							BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
							strcpy(temp2, current->value);
						}
						else {
							BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
							strcpy(temp2, current->value);
						}
						
					}
					else if (strcmp(current->value, "+") == 0) {
						current = current->next;
						current = current->next;
						printf("The CURRENT NOW 18 little add: %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
			}
			/* SUB */
			else if (strcmp(theStack[top], "-") == 0) {
				doneFlag = 1;
				int myFlag = 0;
				sTypeOfMember = CheckIfMemberOfStatement(flags);
				printf("The top now : %d\n", top);
				if (top == 2) {
					myFlag = 1;
					pop(&top);
					BuildSimpleExpressionStatement(theStack[top], current->value, commandNode, 2, sTypeOfMember);
					strcpy(temp, current->value);
				}
				else {
					strcpy(temp, current->value);
				}
				current = current->next;
				printf("The CURRENT NOW 1 SUB : %s\n", current->value);
				if (strcmp(current->type, "end of command") == 0) {
					current = current->next;
					printf("The CURRENT NOW 2 SUB : %s\n", current->value);
					strcpy(temp2, current->value);
					BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
				}
				else if (strcmp(current->value, "-") == 0) {
					current = current->next;
					printf("The CURRENT NOW 3 SUB: %s\n", current->value);
					if (strcmp(current->type, "end of command") == 0){
						pop(&top);
						strcpy(temp2, theStack[top]);
						current = current->next;
						printf("The CURRENT NOW 4 SUB: %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, temp, commandNode, 2, sTypeOfMember);
						BuildSimpleExpressionStatement(temp, current->value, commandNode, 2, sTypeOfMember);
					}
					else {
						strcpy(temp2, current->value);
						current = current->next;
						current = current->next;
						printf("The CURRENT NOW 5 SUB: %s\n", current->value);
						if (myFlag == 1) BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
						else BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
						strcpy(temp3, current->value);
					}
				}
				else if (strcmp(current->value, "+") == 0) {
					current = current->next;
					printf("The CURRENT NOW 15 SUB: %s\n", current->value);
					if (strcmp(current->type, "end of command") == 0){
						pop(&top);
						printf("The CURRENT TEMP2 SUB: %s\n", temp2);
						if ((strcmp(theStack[top], "-") != 0) && (strcmp(theStack[top], "+") != 0)){
							strcpy(temp2, theStack[top]);
							printf("The CURRENT TEMP2_2 SUB: %s\n", temp2);
							if (strcmp(temp2, "") == 0){
								strcpy(temp2, temp3);
								printf("The CURRENT TEMP2_3 SUB: %s\n", temp2);
							}
						}
						else {}
						current = current->next;
						printf("The CURRENT NOW 16 SUB: %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, temp, commandNode, 2, sTypeOfMember);
						BuildSimpleExpressionStatement(temp, current->value, commandNode, 1, sTypeOfMember);
					}
					else {
						strcpy(temp2, current->value);
						current = current->next;
						current = current->next;
						printf("The CURRENT NOW 17 SUB: %s\n", current->value);
						if (myFlag == 1) BuildSimpleExpressionStatement(temp, temp2, commandNode, 1, sTypeOfMember);
						BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
				else {
					strcpy(temp2, current->value);
					printf("The CURRENT NOW 19 SUB: %s\n", current->value);
					BuildSimpleExpressionStatement(temp, temp2, commandNode, 2, sTypeOfMember);
					current = current->next;
					printf("The CURRENT NOW 6 SUB: %s\n", current->value);
					if (strcmp(current->value, "-") == 0) {
						current = current->next;
						printf("The CURRENT NOW 20 SUB: %s\n", current->value);
						if (strcmp(current->type, "end of command") == 0){
							current = current->next;
							printf("The CURRENT NOW 7 SUB: %s\n", current->value);
							BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
							strcpy(temp2, current->value);
						}
						else {
							BuildSimpleExpressionStatement(temp2, current->value, commandNode, 2, sTypeOfMember);
							strcpy(temp2, current->value);
						}
						
					}
					else if (strcmp(current->value, "+") == 0) {
						current = current->next;
						current = current->next;
						printf("The CURRENT NOW 18 SUB: %s\n", current->value);
						BuildSimpleExpressionStatement(temp2, current->value, commandNode, 1, sTypeOfMember);
					}
				}
			}
			/* MUL */
			else if (strcmp(theStack[top], "*") == 0) {

			}
			/* DIV */
			else if (strcmp(theStack[top], "/") == 0) {

			}
			else if (strcmp(theStack[top], "++") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				expr* incrementExpr = expr_create(EXPR_INCREMENT, NULL, NULL, 0, '\0', current->value, sTypeOfMember);
				push_commandList(commandNode, NULL, NULL, incrementExpr);
				notTheEndFlag = 0; 
			}
			else if (strcmp(theStack[top], "--") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				expr* decrementExpr = expr_create(EXPR_DECREMENT, NULL, NULL, 0, '\0', current->value, sTypeOfMember);
				push_commandList(commandNode, NULL, NULL, decrementExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "+=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				pop(&top);
				theStack[0][top] = '\0';
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 1, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "-=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				pop(&top);
				theStack[0][top] = '\0';
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 2, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "*=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				pop(&top);
				theStack[0][top] = '\0';
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 3, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "/=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				pop(&top);
				theStack[0][top] = '\0';
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 4, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], ">") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 5, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], ">=") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 6, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "<") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 7, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "<=") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 8, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "@==") == 0)
			{
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignAndCompareExprStatement(temp, temp2, commandNode, 9, sTypeOfMember);
				notTheEndFlag = 0;
			}
			else {

				if (strcmp(temp2, "+") == 0) {
					doneFlag = 1;
					printf("The CURRENT NOW 18: %s\n", current->value);
					printf("The CURRENT NOW 18.1: %s\n", temp);
					printf("The CURRENT NOW 18.2: %s\n", temp3);
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					if (temp[0] == '\0') BuildSimpleExpressionStatement(temp3, current->value, commandNode, 1, sTypeOfMember);
					else BuildSimpleExpressionStatement(temp, current->value, commandNode, 1, sTypeOfMember);
				}
				else if (strcmp(temp2, "-") == 0) {
					doneFlag = 1;
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					BuildSimpleExpressionStatement(temp, current->value, commandNode, 2, sTypeOfMember);
				}
				else if (strcmp(temp2, "*") == 0) {
					doneFlag = 1;
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					BuildSimpleExpressionStatement(temp, current->value, commandNode, 3, sTypeOfMember);
				}
				else if (strcmp(temp2, "/") == 0) {
					doneFlag = 1;
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					BuildSimpleExpressionStatement(temp, current->value, commandNode, 4, sTypeOfMember);
				}

				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("The stack at identifier type is not empty\n");
					printf("Going to insert the value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
				else {
					printf("The stack at identifier type is empty.\n");
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					if (sTypeOfMember != -1) {
						printf("It is member of : %d\n", sTypeOfMember);
						if (sTypeOfMember == 6) strcpy(temp, current->value);
					}
					printf("Going to insert the value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);	
				}
			}
		}

		/* Check for character type */
		if (strcmp(current->type, "character") == 0) {
			pop(&top);
			int doneFlag = 0;
			if (strcmp(theStack[top], "@") == 0) {
				printf("Operator @ is in the stack now.\n");
				printf("Going to insert the value : %s\n", current->value);
				++top;
				push(theStack[top], &top, current->value);
			}
			else if (strcmp(theStack[top], "char") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildDeclarationExprStatement(current->value, commandNode, temp, 4, sTypeOfMember);
			}
			else if (strcmp(theStack[top], "print") == 0) {
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("The stack at character type is not empty.\n");
					printf("Going to insert the value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}


		/* Check for keyword type */
		if (strcmp(current->type, "keyword") == 0) {
			if (strcmp(current->value, "break") == 0) {
				stmt* break_decl_stmt = stmt_create(STMT_BREAK, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
				push_commandList(commandNode, NULL, break_decl_stmt, NULL); 
				printf("**********************************************************\n");
				current = current->next;
				continue;
			}
			else if (strcmp(current->value, "continue") == 0) {
				stmt* cont_decl_stmt = stmt_create(STMT_CONTINUE, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
				push_commandList(commandNode, NULL, cont_decl_stmt, NULL); 
				printf("**********************************************************\n");
				current = current->next;
				continue;
			}
			else if (strcmp(current->value, "new") == 0) {
				pop(&top);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				BuildNewStatement(current, commandNode, temp);
				printf("**********************************************************\n");
				current = current->next;
				continue;
			}
			if (strcmp(current->value, "null") == 0) {
				pop(&top);
				if (strcmp(theStack[top], "float") == 0) {
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 7, sTypeOfMember);
				}
				else if (strcmp(theStack[top], "int") == 0) {
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 8, sTypeOfMember);
				}
				else if (strcmp(theStack[top], "char") == 0) {
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 9, sTypeOfMember);
				}
				else if (strcmp(theStack[top], "string") == 0) {
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					pop(&top);	
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 6, sTypeOfMember);
				}
				else if ((strcmp(theStack[top], "void") == 0) && (iIsPointer == 1)) {
					iIsPointer = 0;
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 11, sTypeOfMember);
				}
				else if ((strcmp(theStack[top], "void") == 0) && (iIsPointer == 0)) {
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 12, sTypeOfMember);
				}
			}
			else if ((strcmp(current->value, "true") == 0) || (strcmp(current->value, "false") == 0)) {
				pop(&top);
				if (strcmp(theStack[top], "bool") == 0) {
					theStack[0][top] = '\0';
					pop(&top);
					strcpy(temp, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					BuildDeclarationExprStatement(current->value, commandNode, temp, 10, sTypeOfMember);
				}
				else;
			}
				
		}

		/* Check for end of command type */
		if (strcmp(current->type, "end of command") == 0) {

			if (top != 0) {

				if (flags.nIsReturnMember == 1) {
					pop(&top);
					strcpy(temp2, theStack[top]);
				}
			
				if (notTheEndFlag == 1)
				{
					printf("**********************************************************\n");
					current = current->next;
					continue;
				}

				pop(&top);
				if (strcmp(theStack[top], "/@") == 0) {
					printf("End of the comment.\n");
					theStack[0][top] = '\0';
					printf("**********************************************************\n");
					current = current->next;
					/* Next value is a part of comment so need to be flagged */
					partOfComment = 1;
					continue;
				}

				if (strcmp(theStack[top], "delete") == 0) {
					printf("Going to build delete statement.\n");
					current = current->next;
					theStack[0][top] = '\0';
					BuildSingleExprStatement(current->value, commandNode, 6);
					printf("**********************************************************\n");
					current = current->next;
					continue;
				}

				theStack[0][top] = '\0';
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);

				if (strlen(theStack[top]) == 0) {
					continue;
				}

				if (strcmp(theStack[top], "@") == 0) {
					printf("Going for just a declaration\n");
					current = current->next;
					if (strcmp(current->value, "int") == 0) {
						type* int_type = type_create(TYPE_INTEGER, NULL, NULL);
						decl* int_declaration = decl_create(temp, int_type, NULL, NULL);
						stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, int_decl_stmt, NULL);
					}
					else if (strcmp(current->value, "string") == 0) {
						type* string_type = type_create(TYPE_STRING, NULL, NULL);
						decl* string_declaration = decl_create(temp, string_type, NULL, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL);
					}
					else if (strcmp(current->value, "float") == 0) {
						type* float_type = type_create(TYPE_FLOAT, NULL, NULL);
						decl* float_declaration = decl_create(temp, float_type, NULL, NULL);
						stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, float_decl_stmt, NULL);
					}
					else if (strcmp(current->value, "char") == 0) {
						type* char_type = type_create(TYPE_CHARACTER, NULL, NULL);
						decl* char_declaration = decl_create(temp, char_type, NULL, NULL);
						stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, char_decl_stmt, NULL);
					}
					else if (strcmp(current->value, "bool") == 0) {
						type* bool_type = type_create(TYPE_BOOLEAN, NULL, NULL);
						decl* bool_declaration = decl_create(temp, bool_type, NULL, NULL);
						stmt* bool_decl_stmt = stmt_create(STMT_DECL, bool_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, bool_decl_stmt, NULL);
					}
					else if (strcmp(current->value, "void") == 0) {
						type* void_type = type_create(TYPE_VOID, NULL, NULL);
						decl* void_declaration = decl_create(temp, void_type, NULL, NULL);
						stmt* void_decl_stmt = stmt_create(STMT_DECL, void_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, void_decl_stmt, NULL);
					}
					else if ((strcmp(current->value, "false") == 0) || (strcmp(current->value, "true") == 0)) {
						pop(&top);
						theStack[0][top] = '\0';
						expr* stringExpr = expr_create_string(current->value);
						decl* string_declaration = decl_create(temp, NULL, stringExpr, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL);
					}
					else;
				}
				else {
					strcpy(temp2, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					expr* stringExpr = expr_create_string(temp);
					decl* string_declaration = decl_create(temp2, NULL, stringExpr, NULL);
					stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
					push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
				}
			}

			if (flags.nIsAssertMember == 1)
			{
				printf("Going to clear assert flags at the end of command.\n");
				flags.nIsAssertMember = 0;
			}
		}
		
		printf("**********************************************************\n");
		current = current->next;
	}

	return;
}