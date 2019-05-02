#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"
#include "../inc/command.h"

void parseProgram(parse_state* node) {
	printf("in parse program\n");
	
	command* commandNode = malloc(sizeof(command) *2);
	parse_state * current = node;
	const int SIZE = 100;
	int top;
	int atAppeared = 0;
	int parOK = 0;
	int numOfPar = 0;
	int partOfComment = 0;
	int notTheEndFlag = 0;		//flag that helps when is not really the end of command
	char theStack[200][SIZE];
	char temp[100], temp2[100];
	init(&top);
	memset(temp, 0, sizeof(temp));
	memset(temp2, 0, sizeof(temp2));

	while (current != NULL) {
		printf("counter-type: %s\n", current->type);

		//Check for import in value and push it to the stack
		if (strcmp(current->value, "import") == 0) {
			printf("import statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
			// printf("full now? : %d\n", full(&top, SIZE));
			// printf("or maybe empty? : %d\n", empty(&top));
		}
		//Check for load in value and push it to the stack
		else if (strcmp(current->value, "load") == 0) {
			printf("load statement to be built\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		//Check for print in value and push it to the stack
		else if (strcmp(current->value, "print") == 0) {
			printf("print statement to be built\n");
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
		else if (strcmp(current->value, "@") == 0) {
			printf("operator @ going in\n");
			push(theStack[top], &top, current->value);
			current = current->next;
			continue;
		}
		else if (strcmp(current->value, "assert") == 0) {
			printf("statement assert going in\n");
			push(theStack[top], &top, current->value);
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
		// else if (strcmp(current->value, "|") == 0) {
		// 	printf("parenthesis going in\n");
		// 	push(theStack[top], &top, current->value);
		// }
		else { 

		}

		printf("counter-value: %s\n", current->value);

		//Check for string type
		if (strcmp(current->type, "string") == 0) {
			int doneFlag = 0;
			//peeking the stack so decreasing value of top
			pop(&top);
			if (strcmp(theStack[top], "import") == 0) {
				doneFlag = 1;
				printf("import statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* import_stmt = stmt_create(STMT_IMPORT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, import_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "load") == 0) {
				doneFlag = 1;
				printf("load statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* load_stmt = stmt_create(STMT_LOAD, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, load_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, print_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "string") == 0) {
				doneFlag = 1;
				printf("string type is in the stack atm\n");
				type* string_type = type_create(TYPE_STRING, NULL, NULL);
				theStack[0][top] = '\0';
				pop(&top);
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				strcpy(temp, theStack[top]);
				printf("now in stack : %s\n", temp);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
				decl* string_declaration = decl_create(temp, string_type, stringExpr, NULL);
				stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					//increasing top value
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}

		//Check for number type
		if (strcmp(current->type, "number") == 0) {
			//peeking the stack so decreasing value of top
			int doneFlag = 0;
			pop(&top);
			if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* numberExpr = expr_create_string(current->value);
				stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, numberExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, print_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "int") == 0) {
				doneFlag = 1;
				printf("int type is in the stack atm\n");
				type* int_type = type_create(TYPE_INTEGER, NULL, NULL);
				theStack[0][top] = '\0';
				pop(&top);
				printf("the value to work as expr : %s\n", current->value);
				expr* intExpr = expr_create_string(current->value);
				strcpy(temp, theStack[top]);
				printf("now in stack : %s\n", temp);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
				decl* int_declaration = decl_create(temp, int_type, intExpr, NULL);
				stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, int_decl_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "float") == 0) {
				doneFlag = 1;
				printf("float type is in the stack atm\n");
				type* float_type = type_create(TYPE_FLOAT, NULL, NULL);
				theStack[0][top] = '\0';
				pop(&top);
				printf("the value to work as expr : %s\n", current->value);
				expr* floatExpr = expr_create_string(current->value);
				strcpy(temp, theStack[top]);
				printf("now in stack : %s\n", temp);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
				decl* float_declaration = decl_create(temp, float_type, floatExpr, NULL);
				stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "+") == 0) {
				doneFlag = 1;
				printf("operator + is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				int theResult = atoi(theStack[top]) + atoi(current->value);
				sprintf(temp, "%d", theResult);
				printf("@@@@ THE RESULT : %s\n", temp);
				expr* numberExpr = expr_create_string(temp);
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				strcpy(temp2, theStack[top]);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				decl* identifier_declaration = decl_create(temp2, NULL, numberExpr, NULL);
				stmt* decl_stmt = stmt_create(STMT_DECL, identifier_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, decl_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "-") == 0) {
				doneFlag = 1;
				printf("operator - is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				int theResult = atoi(theStack[top]) - atoi(current->value);
				sprintf(temp, "%d", theResult);
				printf("@@@@ THE RESULT : %s\n", temp);
				expr* numberExpr = expr_create_string(temp);
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				strcpy(temp2, theStack[top]);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				decl* identifier_declaration = decl_create(temp2, NULL, numberExpr, NULL);
				stmt* decl_stmt = stmt_create(STMT_DECL, identifier_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, decl_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "+=") == 0) {
				doneFlag = 1;
				printf("operator += is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* addAssignmentExpr = expr_create(EXPR_ADD_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, addAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "-=") == 0) {
				doneFlag = 1;
				printf("operator -= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* subAssignmentExpr = expr_create(EXPR_SUB_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, subAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "*=") == 0) {
				doneFlag = 1;
				printf("operator *= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* mulAssignmentExpr = expr_create(EXPR_MUL_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, mulAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "/=") == 0) {
				doneFlag = 1;
				printf("operator /= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* divAssignmentExpr = expr_create(EXPR_DIV_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, divAssignmentExpr);
				notTheEndFlag = 0;
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					//increasing top value
					++top;
					push(theStack[top], &top, current->value);
				}
			}

			// if ((empty(&top) == 0) && (doneFlag == 0)) {
			// 	printf("stack not empty : %d\n", top);
			// 	printf("going to insert value : %s\n", current->value);
			// 	//increasing top value
			// 	++top;
			// 	push(theStack[top], &top, current->value);
			// }

		}

		//Check for identifier type
		if (strcmp(current->type, "identifier") == 0) {

			if (partOfComment == 1) {
				printf("last part of comment\n");
				current = current->next;
				partOfComment = 0;
				continue;
			}

			//peeking the stack so decreasing value of top
			pop(&top);
			int doneFlag = 0;
			if (strcmp(theStack[top], "@") == 0) {
				doneFlag = 1;
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				//increasing top value
				++top;
				push(theStack[top], &top, current->value);
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* identifierExpr = expr_create_string(current->value);
				stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, identifierExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, print_stmt, NULL); 
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
				printf("++ is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* incrementExpr = expr_create(EXPR_INCREMENT, NULL, NULL, 0, '\0', current->value);
				push_commandList(commandNode, NULL, NULL, incrementExpr);
				notTheEndFlag = 0; 
			}
			else if (strcmp(theStack[top], "--") == 0) {
				doneFlag = 1;
				printf("-- is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* decrementExpr = expr_create(EXPR_DECREMENT, NULL, NULL, 0, '\0', current->value);
				push_commandList(commandNode, NULL, NULL, decrementExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "+=") == 0) {
				doneFlag = 1;
				printf("operator += is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* addAssignmentExpr = expr_create(EXPR_ADD_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, addAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "-=") == 0) {
				doneFlag = 1;
				printf("operator -= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* subAssignmentExpr = expr_create(EXPR_SUB_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, subAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "*=") == 0) {
				doneFlag = 1;
				printf("operator *= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* mulAssignmentExpr = expr_create(EXPR_MUL_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, mulAssignmentExpr);
				notTheEndFlag = 0;
			}
			else if (strcmp(theStack[top], "/=") == 0) {
				doneFlag = 1;
				printf("operator /= is in the stack atm\n");
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				printf("the value to work as expr : %s\n", current->value);
				strcpy(temp, current->value);
				strcpy(temp2, theStack[top]);
				expr* leftExpr = expr_create_string(temp2);
				expr* rightExpr = expr_create_string(temp);
				printf("doess hhththt\n");
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* divAssignmentExpr = expr_create(EXPR_DIV_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, divAssignmentExpr);
				notTheEndFlag = 0;
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					//increasing top value
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}


		//Check for character type
		if (strcmp(current->type, "character") == 0) {
			//peeking the stack so decreasing value of top
			pop(&top);
			int doneFlag = 0;
			if (strcmp(theStack[top], "@") == 0) {
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				//increasing top value
				++top;
				push(theStack[top], &top, current->value);
			}
			else if (strcmp(theStack[top], "char") == 0) {
				doneFlag = 1;
				printf("char type is in the stack atm\n");
				type* char_type = type_create(TYPE_CHARACTER, NULL, NULL);
				theStack[0][top] = '\0';
				pop(&top);
				printf("the value to work as expr : %s\n", current->value);
				expr* charExpr = expr_create_string(current->value);
				strcpy(temp, theStack[top]);
				printf("now in stack : %s\n", temp);
				theStack[0][top] = '\0';
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
				decl* char_declaration = decl_create(temp, char_type, charExpr, NULL);
				stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "print") == 0) {
			}
			else {
				if ((empty(&top) == 0) && (doneFlag == 0)) {
					printf("stack not empty : %d\n", top);
					printf("going to insert value : %s\n", current->value);
					//increasing top value
					++top;
					push(theStack[top], &top, current->value);
				}
			}
		}


		//Check for keyword type
		if (strcmp(current->type, "keyword") == 0) { 
			int doneFlag = 0;
			if (strcmp(current->value, "null") == 0) {
				pop(&top);
				if (strcmp(theStack[top], "float") == 0) {
					doneFlag = 1;
					printf("float (pointer) type is in the stack atm\n");
					type* floatPointer_type = type_create(TYPE_FLOAT_POINTER, NULL, NULL);
					theStack[0][top] = '\0';
					pop(&top);
					printf("now in stack should be pointer symbol : %s\n", theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					printf("the value to work as expr : %s\n", current->value);
					expr* floatExpr = expr_create_string(current->value);
					strcpy(temp, theStack[top]);
					printf("now in stack : %s\n", temp);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
					decl* float_declaration = decl_create(temp, floatPointer_type, floatExpr, NULL);
					stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
				}
			}
		}

		//Check for end of command type
		if (strcmp(current->type, "end of command") == 0) {
			if (top != 0) {
				printf("--------------------------------------------- \n");

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

				theStack[0][top] = '\0';
				//pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				pop(&top);
				printf("now in the stack : %s\n", theStack[top]);
				if (strcmp(theStack[top], "@") == 0) {
					printf("going for just a declaration\n");
					current = current->next;
					if (strcmp(current->value, "int") == 0) {
						type* int_type = type_create(TYPE_INTEGER, NULL, NULL);
						decl* int_declaration = decl_create(temp, int_type, NULL, NULL);
						stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, int_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "string") == 0) {
						type* string_type = type_create(TYPE_STRING, NULL, NULL);
						decl* string_declaration = decl_create(temp, string_type, NULL, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "float") == 0) {
						type* float_type = type_create(TYPE_FLOAT, NULL, NULL);
						decl* float_declaration = decl_create(temp, float_type, NULL, NULL);
						stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "char") == 0) {
						type* char_type = type_create(TYPE_CHARACTER, NULL, NULL);
						decl* char_declaration = decl_create(temp, char_type, NULL, NULL);
						stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
					}
					else { 
					}
				}
				else { 
					strcpy(temp2, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					expr* stringExpr = expr_create_string(temp);
					decl* string_declaration = decl_create(temp2, NULL, stringExpr, NULL);
					stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
				}
			}
		}
		
		current = current->next;
	}

	print_commandList(commandNode);

	return;
}
