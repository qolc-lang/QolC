#include "../inc/parserFunctions.h"

/*
	Creating the appropriate lists and nodes;then calls the parsing 
	function to manage them
*/
void parseProgram(parse_state* node) {
	command* commandNode = malloc(sizeof(command) *2);
	expr_list* expressionListNode = malloc(sizeof(expr_list));
	parse_state * current = node;
	parsing(current, commandNode);
	print_commandList(commandNode);
	return;
}

/*
	Parsing the parsable list node and manages the found commands
*/
void parsing(parse_state* current, command* commandNode) {
	int top;
	int partOfComment = 0;
	int notTheEndFlag = 0;		//flag that helps when is not really the end of command
	int hasDefer = 0;
	char theStack[200][100];
	char temp[100], temp2[100];
	int sTypeOfMember;
	
	init(&top);
	memset(temp, 0, sizeof(temp));
	memset(temp2, 0, sizeof(temp2));

	memberFlags flags;

	while (current != NULL) {
		printf("counter-type: %s\n", current->type);

		//Check for import in value and push it to the stack
		if (strcmp(current->value, "import") == 0) {
			printf("import statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "main") == 0) {
			printf("main statement to be built\n");
			stmt* main_stmt = stmt_create(STMT_MAIN, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, main_stmt, NULL); 
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "load") == 0) {
			printf("load statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "print") == 0) {
			printf("print statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "sleep") == 0) {
			printf("sleep statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "delete") == 0) {
			printf("delete statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "cast") == 0) {
			printf("cast statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "array_add") == 0) {
			printf("cast statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "scan") == 0) {
			printf("scan statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "string") == 0) {
			printf("string keyword going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "int") == 0) {
			printf("int keyword going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "float") == 0) {
			printf("float keyword going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "char") == 0) {
			printf("char keyword going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "bool") == 0) {
			printf("bool keyword going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "@") == 0) {

			//checking if the @ is part of comment
			pop(&top);
			if (strcmp(theStack[top], "/@") == 0) 
			{
				printf("part of comment %s\n", current->value);
				current = current->next;
				++top;
				continue;
			}
			printf("operator @ going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "assert") == 0) {
			printf("statement assert going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "return") == 0) {
			printf("statement return going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "if") == 0) {
			printf("statement if going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "while") == 0) {
			printf("statement if going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "for") == 0) {
			printf("statement for going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "each") == 0) {
			printf("statement each going in\n");
			push(theStack[top], &top, current->value);
			current = checkTheStack(current, theStack[0], top, commandNode);
			pop(&top);
			theStack[0][top] = '\0';
			continue;
		}
		else if (strcmp(current->value, "defer") == 0) {	//not pushing to stack just setting a variable
			printf("The next command is a deferred one.\n");
			hasDefer = 1;
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "+") == 0) {
			printf("operator + going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "-") == 0) {
			printf("operator - going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "++") == 0) {
			printf("operator ++ going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "--") == 0) {
			printf("operator -- going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "+=") == 0) {
			printf("operator += going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "-=") == 0) {
			printf("operator -= going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "*=") == 0) {
			printf("operator *= going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, "/=") == 0) {
			printf("operator /= going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			notTheEndFlag = 1;
			continue;
		}
		else if (strcmp(current->value, ">") == 0) {
			printf("operator > going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "<") == 0) {
			printf("operator < going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, ">=") == 0) {
			printf("operator >= going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "<=") == 0) {
			printf("operator <= going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "/@") == 0) {
			printf("comment going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "^") == 0) {
			printf("operator ^ going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else;

		printf("counter-value: %s\n", current->value);

		if (strcmp(current->value, "struct") == 0) {
			printf("struct statement to be built\n");
			printf("the temp now :  %s\n", temp);
			flags.nIsStructMember = 1;
			type* theType = type_create(TYPE_STRUCT, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* struct_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, struct_stmt, NULL);
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "enum") == 0) {
			printf("enum statement to be built\n");
			printf("the temp now :  %s\n", temp);
			flags.nIsEnumMember = 1;
			type* theType = type_create(TYPE_ENUM, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* enum_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, enum_stmt, NULL);
			current = current->next;
			continue;
		}

		if (strcmp(current->value, "union") == 0) {
			printf("union statement to be built\n");
			printf("the temp now :  %s\n", temp);
			flags.nIsUnionMember = 1;
			type* theType = type_create(TYPE_UNION, NULL, NULL);
			decl* theDeclaration = decl_create(temp, theType, NULL, NULL);
			stmt* union_stmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
			push_commandList(commandNode, NULL, union_stmt, NULL);
			current = current->next;
			continue;
		}

		if (strcmp(current->type, "block end") == 0) {
			ClearFlags(&flags);
		}

		if (strcmp(current->type, "string") == 0) {
			int doneFlag = 0;
			pop(&top);
			if (strcmp(theStack[top], "import") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 1);
			}
			else if (strcmp(theStack[top], "load") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				BuildSingleExprStatement(current->value, commandNode, 2);
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				if (hasDefer == 1)
				{
					hasDefer = 0;
					stmt* defer_stmt = stmt_create(STMT_DEFER, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
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
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
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
			else if (strcmp(theStack[top], "+=") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				pop(&top);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				BuildAssignmentExprStatement(temp, temp2, commandNode, 1);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 2);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 3);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 4);
				notTheEndFlag = 0;
			}
			else {
				printf("the top : %d\n", top);
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}

		//Check for identifier type
		if (isIdentifierType(current->type) == 1) {
			int doneFlag = 0;

			if (partOfComment == 1) {
				printf("last part of comment\n");
				current = current->next;
				partOfComment = 0;
				continue;
			}

			//check for additional @ operator which we don't want in here
			if (strcmp(theStack[top], "@") == 0) {
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				++top;
				push(theStack[top], &top, current->value);
				current = current->next;
				continue;
			}

			pop(&top);

			if (strcmp(theStack[top], "@") == 0) {
				doneFlag = 1;
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				printf("the struct member : %d\n", flags.nIsStructMember);
				sTypeOfMember = CheckIfMemberOfStatement(flags);
				if (sTypeOfMember != -1) {
					printf("the !!!!!!!!! member : %d\n", sTypeOfMember);
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
				printf("part of comment %s\n", current->value);
				current = current->next;
				++top;
				continue;
			}
			else if (strcmp(theStack[top], "++") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				expr* incrementExpr = expr_create(EXPR_INCREMENT, NULL, NULL, 0, '\0', current->value);
				push_commandList(commandNode, NULL, NULL, incrementExpr);
				notTheEndFlag = 0; 
			}
			else if (strcmp(theStack[top], "--") == 0) {
				doneFlag = 1;
				theStack[0][top] = '\0';
				expr* decrementExpr = expr_create(EXPR_DECREMENT, NULL, NULL, 0, '\0', current->value);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 1);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 2);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 3);
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
				BuildAssignmentExprStatement(temp, temp2, commandNode, 4);
				notTheEndFlag = 0;
			}
			else {
				printf("the top %d\n", top);
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
				else {
					printf("stack empty : %d\n", top);
					printf("NOW MY MARIESSSSSSs \n");
					sTypeOfMember = CheckIfMemberOfStatement(flags);
					if (sTypeOfMember != -1) {
						printf("the ID!!! member : %d\n", sTypeOfMember);
					}
					printf("going to insert value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);	
				}
			}
		}


		//Check for character type
		if (strcmp(current->type, "character") == 0) {
			pop(&top);
			int doneFlag = 0;
			if (strcmp(theStack[top], "@") == 0) {
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
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
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}


		//Check for keyword type
		if (strcmp(current->type, "keyword") == 0) {
			if (strcmp(current->value, "break") == 0) {
				stmt* break_decl_stmt = stmt_create(STMT_BREAK, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
				push_commandList(commandNode, NULL, break_decl_stmt, NULL); 
				current = current->next;
				continue;
			}
			else if (strcmp(current->value, "continue") == 0) {
				stmt* cont_decl_stmt = stmt_create(STMT_CONTINUE, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
				push_commandList(commandNode, NULL, cont_decl_stmt, NULL); 
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
				current = current->next;
				continue;
			}

			int doneFlag = 0;
			if (strcmp(current->value, "null") == 0) {
				pop(&top);
				if (strcmp(theStack[top], "float") == 0) {
					doneFlag = 1;
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
					doneFlag = 1;
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
					doneFlag = 1;
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
					doneFlag = 1;
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
			}
			else if ((strcmp(current->value, "true") == 0) || (strcmp(current->value, "false") == 0)) {
				pop(&top);
				if (strcmp(theStack[top], "bool") == 0) {
					doneFlag = 1;
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

		//Check for end of command type
		if (strcmp(current->type, "end of command") == 0) {
			if (top != 0) {
				printf("--------------------------------------------- \n");

				printf("tHE STRUCTs member 3 : %d\n", flags.nIsStructMember);
				printf("tHE UNIONSS member 3 : %d\n", flags.nIsStructMember);

				if (notTheEndFlag == 1)
				{
					current = current->next;
					continue;
				}

				pop(&top);
				if (strcmp(theStack[top], "/@") == 0) {
					printf("end of comment\n");
					theStack[0][top] = '\0';
					printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
					current = current->next;
					//next value is a part of comment so need to be flagged
					partOfComment = 1;
					continue;
				}


				if (strcmp(theStack[top], "delete") == 0) {
					printf("GOING TO BUILT DELETE STATEMENT\n");
					current = current->next;
					theStack[0][top] = '\0';
					printf("the value to work as expr : %s\n", current->value);
					expr* identifierExpr = expr_create_string(current->value);
					stmt* delete_stmt = stmt_create(STMT_DELETE, NULL, NULL, identifierExpr, NULL, NULL, NULL, NULL, NULL, -1);
					push_commandList(commandNode, NULL, delete_stmt, NULL);
					current = current->next;
					continue;
				}

				theStack[0][top] = '\0';
				printf("now in the stack : %s\n", theStack[top]);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("tHE STRUCTs member 1 : %d\n", flags.nIsStructMember);

				if (strlen(theStack[top]) == 0) {
					continue;
				}

				if (strcmp(theStack[top], "@") == 0) {
					printf("going for just a declaration\n");
					current = current->next;
					if (strcmp(current->value, "int") == 0) {
						type* int_type = type_create(TYPE_INTEGER, NULL, NULL);
						decl* int_declaration = decl_create(temp, int_type, NULL, NULL);
						stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, int_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "string") == 0) {
						type* string_type = type_create(TYPE_STRING, NULL, NULL);
						decl* string_declaration = decl_create(temp, string_type, NULL, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "float") == 0) {
						type* float_type = type_create(TYPE_FLOAT, NULL, NULL);
						decl* float_declaration = decl_create(temp, float_type, NULL, NULL);
						stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "char") == 0) {
						type* char_type = type_create(TYPE_CHARACTER, NULL, NULL);
						decl* char_declaration = decl_create(temp, char_type, NULL, NULL);
						stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "bool") == 0) {
						type* bool_type = type_create(TYPE_BOOLEAN, NULL, NULL);
						decl* bool_declaration = decl_create(temp, bool_type, NULL, NULL);
						stmt* bool_decl_stmt = stmt_create(STMT_DECL, bool_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, bool_decl_stmt, NULL); 
					}
					else if ((strcmp(current->value, "false") == 0) || (strcmp(current->value, "true") == 0)) {
						pop(&top);
						theStack[0][top] = '\0';
						expr* stringExpr = expr_create_string(current->value);
						decl* string_declaration = decl_create(temp, NULL, stringExpr, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
					}
					else { 
						printf("current->noononon %s\n", current->value);
					}
				}
				else { 
					printf("tHE STRUCTs member 2 : %d\n", flags.nIsStructMember);
					printf("the struct member : %d\n", flags.nIsStructMember);
					if (sTypeOfMember != -1) {
						printf("the !!!!!!!!! member : %d\n", sTypeOfMember);
					}
					else {
						printf("type of member is null\n");
					}
					strcpy(temp2, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					expr* stringExpr = expr_create_string(temp);
					decl* string_declaration = decl_create(temp2, NULL, stringExpr, NULL);
					stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sTypeOfMember);
					push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
				}
			}
		}
		
		current = current->next;
	}

	return;
}

/*
	Checking the stack top for complex commands
*/
parse_state* checkTheStack(parse_state* current, char* theStackTop, int top, command* commandNode) {
	printf("the stack top %s\n", theStackTop);

	char tempStack[200][100];
	int tempTop = 0;
	int doneFlag = 0;
	parse_state* tempCurrent;
	
	//Struct that holds any necessary temp variables
	tempVariables* tempVariablesNode = malloc(sizeof(tempVariables));
	
	/*
		Checking for assert statement
	*/
	if (strcmp(theStackTop, "assert") == 0) {
		printf("going in assert loop\n");

		while (strcmp(current->type, "end of command") != 0) {
			printf("in assert loop with value : %s\n", current->value);

			if (isNumberType(current->type) == 1) {
				if (tempTop == 0) {
					printf("going to insert value : %s\n", current->value);
					++tempTop;
					push(tempStack[tempTop], &tempTop, current->value);
					current = current->next;
					continue;
				}

				pop(&tempTop);
				if (strcmp(tempStack[tempTop], "int") == 0) {
				}
				else {
					printf("the top : %d\n", tempTop);
					if ((empty(&tempTop) == 0) && (doneFlag == 0)) {
						printf("stack not empty : %d\n", tempTop);

						if (strcmp(tempStack[tempTop], ">") == 0) 
						{ 
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							pop(&tempTop);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("going to build comparing expression\n");
							printf("the value to work as expr : %s\n", current->value);
							expr* leftExpr = expr_create_string(tempStack[tempTop]);
							expr* rightExpr = expr_create_string(current->value);
							expr* cmp_expr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							printf("now stack must be empty with top : %s, %d\n", tempStack[0][tempTop], tempTop);
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL, -1);
							push_commandList(commandNode, NULL, assert_stmt, NULL);
						}
						else if (strcmp(tempStack[tempTop], ">=") == 0) 
						{ 
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							pop(&tempTop);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("going to build comparing expression\n");
							printf("the value to work as expr : %s\n", current->value);
							expr* leftExpr = expr_create_string(tempStack[tempTop]);
							expr* rightExpr = expr_create_string(current->value);
							expr* cmp_expr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							printf("now stack must be empty with top : %s, %d\n", tempStack[0][tempTop], tempTop);
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL, -1);
							push_commandList(commandNode, NULL, assert_stmt, NULL);
						}
						else if (strcmp(tempStack[tempTop], "<") == 0) 
						{ 
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							pop(&tempTop);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("going to build comparing expression\n");
							printf("the value to work as expr : %s\n", current->value);
							expr* leftExpr = expr_create_string(tempStack[tempTop]);
							expr* rightExpr = expr_create_string(current->value);
							expr* cmp_expr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							printf("now stack must be empty with top : %s, %d\n", tempStack[0][tempTop], tempTop);
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL, -1);
							push_commandList(commandNode, NULL, assert_stmt, NULL);
						}
						else if (strcmp(tempStack[tempTop], "<=") == 0) 
						{ 
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							pop(&tempTop);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("going to build comparing expression\n");
							printf("the value to work as expr : %s\n", current->value);
							expr* leftExpr = expr_create_string(tempStack[tempTop]);
							expr* rightExpr = expr_create_string(current->value);
							expr* cmp_expr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							printf("now stack must be empty with top : %s, %d\n", tempStack[0][tempTop], tempTop);
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL, -1);
							push_commandList(commandNode, NULL, assert_stmt, NULL);
						}
						else if (strcmp(tempStack[tempTop], "@==") == 0) 
						{ 
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							pop(&tempTop);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("going to build comparing expression\n");
							printf("the value to work as expr : %s\n", current->value);
							expr* leftExpr = expr_create_string(tempStack[tempTop]);
							expr* rightExpr = expr_create_string(current->value);
							expr* cmp_expr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							printf("now stack must be empty with top : %s, %d\n", tempStack[0][tempTop], tempTop);
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL, -1);
							push_commandList(commandNode, NULL, assert_stmt, NULL);
						}

						printf("going to insert value : %s\n", current->value);
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
					}
				}

			}
			else if (strcmp(current->type, "operator") == 0) {
				printf("operator %s going in\n", current->value);
				++tempTop;
				push(tempStack[tempTop], &tempTop, current->value);
			} 


			current = current->next;

			if (current == NULL)
				break;
		}
	}
	else if (strcmp(theStackTop, "return") == 0) {
		printf("Going in return loop\n");
		int operatorInsideStack = 0; 
		int operatorUsed = 0;
		int identifierCopiedInTemp = 0;

		current = current->next;

		while (1) {

			if ((strcmp(current->type, "end of command") != 0) && (strcmp(current->type, "operator") != 0) && (isIdentifierType(current->type) != 1) && (isNumberType(current->type) != 1) && (strcmp(current->type, "string") != 0) && (strcmp(current->type, "character") != 0) ) {
				printf("Not the type we need : %s\n", current->type);
				return current;
			}

			if (strcmp(current->type, "end of command") == 0) {
				parse_state* new_current;
				new_current = current;
				current = current->next;
				if ((strcmp(current->type, "end of command") != 0) && (strcmp(current->type, "operator") != 0) && (isIdentifierType(current->type) != 1) && (isNumberType(current->type) != 1) && (strcmp(current->type, "string") != 0) && (strcmp(current->type, "character") != 0) ) {
					stmt* ret_decl_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1);
					push_commandList(commandNode, NULL, ret_decl_stmt, NULL); 
					return current;
				}
				else {
					printf("now the starting eoc current : %s\n", current->value);
					expr* stringExpr = expr_create_string(current->value);
					stmt* ret_decl_stmt = stmt_create(STMT_RETURN, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL, -1);
					push_commandList(commandNode, NULL, ret_decl_stmt, NULL); 
					return current;
				}

			}

			if (tempTop == 0) {

				if (strcmp(current->type, "operator") == 0) {
					strcpy(tempVariablesNode->tempOp, current->value);
				}
				else {
					strcpy(tempVariablesNode->value, current->value);
					identifierCopiedInTemp = 1;
				}
				++tempTop;
				push(tempStack[tempTop], &tempTop, current->value);
				strcpy(tempVariablesNode->temp, current->value);
				current = current->next;
				if ((current == NULL) || (strcmp(current->type, "end of command") == 0))
				{
					expr* stringExpr = expr_create_string(tempVariablesNode->temp);
					stmt* ret_decl_stmt = stmt_create(STMT_RETURN, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL, -1);
					push_commandList(commandNode, NULL, ret_decl_stmt, NULL); 
					return current;
				}
				else {
					printf("now the current in tempTop 0 : %s\n", current->value);
				}
				continue;
			}

			if (strcmp(current->type, "operator") == 0) {

				if (operatorInsideStack == 1) {
					printf("an operator already in the stack\n");
					//Going to save this operator and continue
					strcpy(tempVariablesNode->tempOp2, current->value);
					current = current->next;
					continue;
				}
				else { 
					printf("not an operator in\n");
					operatorInsideStack = 1;
					++tempTop;
					push(tempStack[tempTop], &tempTop, current->value);
					strcpy(tempVariablesNode->tempOp, current->value);
					current = current->next;
					continue;
				}
			}
			else if ((isIdentifierType(current->type) == 1) || (isNumberType(current->type) == 1)) {
				printf("before going in with value : %s\n", current->value);
				if (identifierCopiedInTemp == 0)
					strcpy(tempVariablesNode->value, current->value);
				pop(&tempTop);
				printf("now in the stack : %s\n", tempStack[tempTop]);

				tempCurrent = current;
				tempCurrent = checkForReturnOperator(current, tempStack[tempTop], tempTop, commandNode, tempVariablesNode);
			}

			printf("before hereeee\n");

			if (tempCurrent == NULL) {
				printf("going for null break 1 --- in return stmt\n");
				break;
			}

			printf("the tempCurrent now : %s\n", tempCurrent->value);

			if (tempCurrent == NULL) {
				printf("going for null break 2 --- in return stmt\n");
				break;
			}

			if (strcmp(tempCurrent->type, "end of command") == 0){
				tempCurrent = tempCurrent->next; 
				if (tempCurrent != NULL) {
					printf("in return eoc loop with value : %s\n", tempCurrent->value);	
				}

				printf("going for eoc break --- in return stmt\n");
				break;
			}
			else {
				return tempCurrent;
			}

			tempCurrent = tempCurrent->next;

			printf("the tempCurrent now 2 : %s\n", tempCurrent->value);

			if (tempCurrent == NULL) {
				printf("going for null break 2 --- in return stmt\n");
				break;
			}

			if (strcmp(tempCurrent->type, "end of command") == 0){
				tempCurrent = tempCurrent->next; 
				if (tempCurrent != NULL) {
					printf("in return eoc loop with value : %s\n", tempCurrent->value);	
				}

				printf("going for eoc break --- in return stmt\n");
				break;
			}
			else {
				return tempCurrent;
			}
		}
	}
	else if (strcmp(theStackTop, "if") == 0) {
		printf("going in if loop\n");

		current = current->next;

		while (1) {
			printf("in if loop with value : %s\n", current->value);
			
			current = current->next;

			if (current == NULL) {
				printf("going for null break 2 --- in if stmt\n");
				break;
			}

			if (strcmp(current->type, "end of command") == 0){
				current = current->next; 
				if (current != NULL) {
					printf("in if eoc loop with value : %s\n", current->value);	
				}

				printf("going for eoc break --- in if stmt\n");
				break;
			}
		}
	}
	else if (strcmp(theStackTop, "while") == 0) {
		printf("going in while loop\n");

		current = current->next;

		while (1) {
			printf("in while loop with value : %s\n", current->value);
			
			current = current->next;

			if (current == NULL) {
				printf("going for null break 2 --- in while stmt\n");
				break;
			}

			if (strcmp(current->type, "end of command") == 0){
				current = current->next; 
				if (current != NULL) {
					printf("in while eoc loop with value : %s\n", current->value);	
				}

				printf("going for eoc break --- in while stmt\n");
				break;
			}
		}
	}
	else if (strcmp(theStackTop, "for") == 0) {
		printf("going in for loop\n");

		current = current->next;

		while (1) {
			printf("in for loop with value : %s\n", current->value);
			
			current = current->next;

			if (current == NULL) {
				printf("going for null break 2 --- in for stmt\n");
				break;
			}

			if (strcmp(current->type, "end of command") == 0){
				current = current->next; 
				if (current != NULL) {
					printf("in for eoc loop with value : %s\n", current->value);	
				}

				printf("going for eoc break --- in for stmt\n");
				break;
			}
		}
	}
	else if (strcmp(theStackTop, "each") == 0) {
		printf("going in each loop\n");

		current = current->next;

		while (1) {
			printf("in each loop with value : %s\n", current->value);
			
			current = current->next;

			if (current == NULL) {
				printf("going each null break 2 --- in each stmt\n");
				break;
			}

			if (strcmp(current->type, "end of command") == 0){
				current = current->next; 
				if (current != NULL) {
					printf("in each eoc loop with value : %s\n", current->value);	
				}

				printf("going each eoc break --- in each stmt\n");
				break;
			}
		}
	}

	printf("don't forget to return the current pointer\n");

	return current;

}
