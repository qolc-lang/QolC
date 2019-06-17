#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"
#include "../inc/command.h"

void parseProgram(parse_state* node) {
	command* commandNode = malloc(sizeof(command) *2);
	parse_state * current = node;
	parsing(current, commandNode);
	print_commandList(commandNode);
	return;
}

void parsing(parse_state* current, command* commandNode) {
	const int SIZE = 100;
	int top;
	int atAppeared = 0;
	int parOK = 0;
	int numOfPar = 0;
	int partOfComment = 0;
	int notTheEndFlag = 0;		//flag that helps when is not really the end of command
	int hasDefer = 0;
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
		else if (strcmp(current->value, "delete") == 0) {
			printf("delete statement to be built\n");
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
		else if (strcmp(current->value, "defer") == 0) {	//not pushing to stack just setting a variable
			printf("defer statement to be built\n");
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
		else { 

		}

		printf("counter-value: %s\n", current->value);

		if (strcmp(current->type, "string") == 0) {
			int doneFlag = 0;
			pop(&top);
			if (strcmp(theStack[top], "import") == 0) {
				doneFlag = 1;
				printf("import statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* import_stmt = stmt_create(STMT_IMPORT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, import_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "load") == 0) {
				doneFlag = 1;
				printf("load statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* load_stmt = stmt_create(STMT_LOAD, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, load_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print statement is in the stack atm 1\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				if (hasDefer == 1)
				{
					printf("This statement is with defer at the front\n");
					hasDefer = 0;
					stmt* defer_stmt = stmt_create(STMT_DEFER, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, defer_stmt, NULL); 
					stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, print_stmt, NULL); 
				}
				else 
				{
					stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, print_stmt, NULL); 
				}
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
				stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
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

		if (strcmp(current->type, "number") == 0) {
			int doneFlag = 0;
			pop(&top);
			if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print statement is in the stack atm 2\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* numberExpr = expr_create_string(current->value);
				stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, numberExpr, NULL, NULL, NULL, NULL, NULL);
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
				stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
				stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
				stmt* decl_stmt = stmt_create(STMT_DECL, identifier_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
				stmt* decl_stmt = stmt_create(STMT_DECL, identifier_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
				pop(&top);
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
				pop(&top);
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
				pop(&top);
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
				pop(&top);
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* divAssignmentExpr = expr_create(EXPR_DIV_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, divAssignmentExpr);
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
		if (strcmp(current->type, "identifier") == 0) {

			if (partOfComment == 1) {
				printf("last part of comment\n");
				current = current->next;
				partOfComment = 0;
				continue;
			}

			if (strcmp(theStack[top], "@") == 0) {
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				++top;
				push(theStack[top], &top, current->value);
				current = current->next;
				continue;
			}

			pop(&top);
			int doneFlag = 0;
			if (strcmp(theStack[top], "@") == 0) {
				doneFlag = 1;
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				++top;
				push(theStack[top], &top, current->value);
			}
			else if (strcmp(theStack[top], "print") == 0) {
				doneFlag = 1;
				printf("print is in the stack atm 3\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* identifierExpr = expr_create_string(current->value);
				stmt* print_stmt = stmt_create(STMT_PRINT, NULL, NULL, identifierExpr, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, print_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "delete") == 0) {
				doneFlag = 1;
				printf("delete is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* identifierExpr = expr_create_string(current->value);
				stmt* delete_stmt = stmt_create(STMT_DELETE, NULL, NULL, identifierExpr, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, delete_stmt, NULL); 
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
				pop(&top);
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
				pop(&top);
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
				pop(&top);
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
				pop(&top);
				theStack[0][top] = '\0';
				printf("now stack must be empty with top : %s, %d\n", theStack[top], top);
				expr* divAssignmentExpr = expr_create(EXPR_DIV_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL);
				push_commandList(commandNode, NULL, NULL, divAssignmentExpr);
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
				stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
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
				stmt* break_decl_stmt = stmt_create(STMT_BREAK, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, break_decl_stmt, NULL); 
				current = current->next;
				continue;
			}
			else if (strcmp(current->value, "continue") == 0) {
				stmt* cont_decl_stmt = stmt_create(STMT_CONTINUE, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, cont_decl_stmt, NULL); 
				current = current->next;
				continue;
			}

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
					stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
				}
				else if (strcmp(theStack[top], "int") == 0) {
					doneFlag = 1;
					printf("int (pointer) type is in the stack atm\n");
					type* intPointer_type = type_create(TYPE_INT_POINTER, NULL, NULL);
					theStack[0][top] = '\0';
					pop(&top);
					printf("now in stack should be pointer symbol : %s\n", theStack[top]);
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
					decl* int_declaration = decl_create(temp, intPointer_type, intExpr, NULL);
					stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, int_decl_stmt, NULL); 
				}
				else if (strcmp(theStack[top], "char") == 0) {
					doneFlag = 1;
					printf("char (pointer) type is in the stack atm\n");
					type* charPointer_type = type_create(TYPE_CHAR_POINTER, NULL, NULL);
					theStack[0][top] = '\0';
					pop(&top);
					printf("now in stack should be pointer symbol : %s\n", theStack[top]);
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
					decl* char_declaration = decl_create(temp, charPointer_type, charExpr, NULL);
					stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
				}
				else if (strcmp(theStack[top], "string") == 0) {
					doneFlag = 1;
					printf("string (pointer) type is in the stack atm\n");
					type* stringPointer_type = type_create(TYPE_STRING_POINTER, NULL, NULL);
					theStack[0][top] = '\0';
					pop(&top);
					printf("now in stack should be pointer symbol : %s\n", theStack[top]);
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
					decl* string_declaration = decl_create(temp, stringPointer_type, stringExpr, NULL);
					stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
				}
			}
			else if ((strcmp(current->value, "true") == 0) || (strcmp(current->value, "false") == 0)) {
				pop(&top);
				if (strcmp(theStack[top], "bool") == 0) {
					doneFlag = 1;
					printf("bool type is in the stack atm\n");
					type* bool_type = type_create(TYPE_BOOLEAN, NULL, NULL);
					theStack[0][top] = '\0';
					pop(&top);
					printf("the value to work as expr : %s\n", current->value);
					expr* boolExpr = expr_create_string(current->value);
					strcpy(temp, theStack[top]);
					printf("now in stack : %s\n", temp);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					printf("now stack must be empty with top : %s, %d\n", theStack[0][top], top);
					decl* bool_declaration = decl_create(temp, bool_type, boolExpr, NULL);
					stmt* bool_decl_stmt = stmt_create(STMT_DECL, bool_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, bool_decl_stmt, NULL); 
				}
				else {
					printf("nananananannanan!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
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


				if (strcmp(theStack[top], "delete") == 0) {
					printf("GOING TO BUILT DELETE STATEMENT\n");
					current = current->next;
					theStack[0][top] = '\0';
					printf("the value to work as expr : %s\n", current->value);
					expr* identifierExpr = expr_create_string(current->value);
					stmt* delete_stmt = stmt_create(STMT_DELETE, NULL, NULL, identifierExpr, NULL, NULL, NULL, NULL, NULL);
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
				if (strcmp(theStack[top], "@") == 0) {
					printf("going for just a declaration\n");
					current = current->next;
					if (strcmp(current->value, "int") == 0) {
						type* int_type = type_create(TYPE_INTEGER, NULL, NULL);
						decl* int_declaration = decl_create(temp, int_type, NULL, NULL);
						stmt* int_decl_stmt = stmt_create(STMT_DECL, int_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, int_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "string") == 0) {
						type* string_type = type_create(TYPE_STRING, NULL, NULL);
						decl* string_declaration = decl_create(temp, string_type, NULL, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "float") == 0) {
						type* float_type = type_create(TYPE_FLOAT, NULL, NULL);
						decl* float_declaration = decl_create(temp, float_type, NULL, NULL);
						stmt* float_decl_stmt = stmt_create(STMT_DECL, float_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, float_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "char") == 0) {
						type* char_type = type_create(TYPE_CHARACTER, NULL, NULL);
						decl* char_declaration = decl_create(temp, char_type, NULL, NULL);
						stmt* char_decl_stmt = stmt_create(STMT_DECL, char_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, char_decl_stmt, NULL); 
					}
					else if (strcmp(current->value, "bool") == 0) {
						type* bool_type = type_create(TYPE_BOOLEAN, NULL, NULL);
						decl* bool_declaration = decl_create(temp, bool_type, NULL, NULL);
						stmt* bool_decl_stmt = stmt_create(STMT_DECL, bool_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, bool_decl_stmt, NULL); 
					}
					else if ((strcmp(current->value, "false") == 0) || (strcmp(current->value, "true") == 0)) {
						printf("ndhebdbebd!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
						pop(&top);
						theStack[0][top] = '\0';
						expr* stringExpr = expr_create_string(current->value);
						decl* string_declaration = decl_create(temp, NULL, stringExpr, NULL);
						stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
						push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
					}
					else { 
						printf("current->noononon %s\n", current->value);
					}
				}
				else { 
					strcpy(temp2, theStack[top]);
					theStack[0][top] = '\0';
					pop(&top);
					theStack[0][top] = '\0';
					expr* stringExpr = expr_create_string(temp);
					decl* string_declaration = decl_create(temp2, NULL, stringExpr, NULL);
					stmt* string_decl_stmt = stmt_create(STMT_DECL, string_declaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
					push_commandList(commandNode, NULL, string_decl_stmt, NULL); 
				}
			}
		}
		
		current = current->next;
	}

	return;
}


parse_state* checkTheStack(parse_state* current, char* theStackTop, int top, command* commandNode) {
	printf("the stack top %s\n", theStackTop);

	char tempStack[200][100];
	int tempTop = 0;
	int doneFlag = 0;
	char temp[100], temp2[100], tempOp[3], tempOp2[3];

	memset(temp, 0, sizeof(temp));
	memset(temp2, 0, sizeof(temp2));
	memset(tempOp, 0, sizeof(tempOp));
	memset(tempOp2, 0, sizeof(tempOp2));

	if (strcmp(theStackTop, "assert") == 0) {
		printf("going in assert loop\n");

		while (strcmp(current->type, "end of command") != 0) {
			printf("in assert loop with value : %s\n", current->value);

			//Check for number type
			if (strcmp(current->type, "number") == 0) {
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
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL);
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
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL);
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
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL);
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
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL);
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
							stmt* assert_stmt = stmt_create(STMT_ASSERT, NULL, NULL, cmp_expr, NULL, NULL, NULL, NULL, NULL);
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
		printf("going in return loop\n");

		expr_list* expressionListNode = malloc(sizeof(expr_list));
		int operatorInsideStack = 0; 
		int operatorUsed = 0;

		current = current->next;

		while (1) {
			printf("in return loop with value : %s\n", current->value);

			if ((strcmp(current->type, "end of command") != 0) && (strcmp(current->type, "operator") != 0) && (strcmp(current->type, "identifier") != 0) ) {
				return current;
			}

			if (strcmp(current->type, "end of command") == 0) {
				stmt* ret_decl_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, ret_decl_stmt, NULL); 
				return current;
			}

			if (tempTop == 0) {

				if (strcmp(current->type, "operator") == 0) {
					strcpy(tempOp, current->value);
				}
				++tempTop;
				push(tempStack[tempTop], &tempTop, current->value);
				strcpy(temp, current->value);
				current = current->next;
				continue;
			}

			if (strcmp(current->type, "operator") == 0) {

				if (operatorInsideStack == 1) {
					printf("an operator already in the stack\n");
					//going to save this operator and continue
					strcpy(tempOp2, current->value);
					current = current->next;
					continue;
				}
				else { 
					printf("not an operator in\n");
					operatorInsideStack = 1;
					++tempTop;
					push(tempStack[tempTop], &tempTop, current->value);
					strcpy(tempOp, current->value);
					current = current->next;
					continue;
				}
			}
			else if (strcmp(current->type, "identifier") == 0) {
				pop(&tempTop);
				printf("now in the stack : %s\n", tempStack[tempTop]);
				if (strcmp(tempStack[tempTop], "+") == 0) {
					//tempStack[0][tempTop] = '\0';
					printf("going for add expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in add already id: %s\n", tempStack[tempTop]);

						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, addExpr);
						printf("pushin addExpr in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again add\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again add\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter add %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
								
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
									
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "-") == 0) {
					//tempStack[0][tempTop] = '\0';
					printf("going for sub expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in sub already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, subExpr);
						printf("pushin subExpr in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again sub\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again sub\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 sub : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter sub %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
									
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 sub : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "*") == 0) {
					//tempStack[0][tempTop] = '\0';
					printf("going for mul expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in mul already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, mulExpr);
						printf("pushin mulExpr in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 mul : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again mul\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again mul\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 mul : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter mul %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
									
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 mul : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "/") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for div expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in div already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, divExpr);
						printf("pushin divExpr in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 div : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again div\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again div\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 div : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter div %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "<") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for smaller_cmp expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in smaller_cmp already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, smallerExpr);
						printf("pushin smaller_cmp in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 smaller_cmp : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again smaller_cmp\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else if (strcmp(tempOp, "<") == 0) {
								printf("going to add, smaller_cmp expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again smaller_cmp\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 smaller_cmp : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter smaller_cmp %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "<=") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for EXPR_SMALLEROREQ_CMP expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in EXPR_SMALLEROREQ_CMP already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, smallerExpr);
						printf("pushin EXPR_SMALLEROREQ_CMP in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 EXPR_SMALLEROREQ_CMP : %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again EXPR_SMALLEROREQ_CMP\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else if (strcmp(tempOp, "<") == 0) {
								printf("going to add, smaller_cmp expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, "<=") == 0) {
								printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again EXPR_SMALLEROREQ_CMP\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 EXPR_SMALLEROREQ_CMP : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter EXPR_SMALLEROREQ_CMP %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<=") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<=") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<=") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], ">") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for EXPR_BIGGER_CMP expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in EXPR_BIGGER_CMP already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, biggerExpr);
						printf("pushin EXPR_BIGGER_CMP in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 EXPR_BIGGER_CMP: %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again EXPR_BIGGER_CMP\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else if (strcmp(tempOp, "<") == 0) {
								printf("going to add, smaller_cmp expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, "<=") == 0) {
								printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, ">") == 0) {
								printf("going to add, EXPR_BIGGER_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, biggerExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again EXPR_BIGGER_CMP\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 EXPR_BIGGER_CMP : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter EXPR_BIGGER_CMP %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<=") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], ">") == 0) {
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used biggerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, biggerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<=") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used biggerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, biggerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<=") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, biggerExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], ">=") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for EXPR_BIGGEROREQ_CMP expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in EXPR_BIGGEROREQ_CMP already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, biggerExpr);
						printf("pushin EXPR_BIGGEROREQ_CMP in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 EXPR_BIGGEROREQ_CMP: %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again EXPR_BIGGEROREQ_CMP\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else if (strcmp(tempOp, "<") == 0) {
								printf("going to add, smaller_cmp expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, "<=") == 0) {
								printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, ">") == 0) {
								printf("going to add, EXPR_BIGGER_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, biggerExpr);
							}
							else if (strcmp(tempOp, ">=") == 0) {
								printf("going to add, EXPR_BIGGEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, biggerExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again EXPR_BIGGEROREQ_CMP\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 EXPR_BIGGEROREQ_CMP : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter EXPR_BIGGEROREQ_CMP %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<=") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], ">") == 0) {
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used biggerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, biggerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], ">=") == 0) {
								expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used EXPR_BIGGEROREQ_CMP\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, biggerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<=") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used biggerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, biggerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, ">=") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used EXPR_BIGGEROREQ_CMP\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, biggerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<=") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, biggerExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], ">=") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, biggerExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
				else if (strcmp(tempStack[tempTop], "@==") == 0) {
					tempStack[0][tempTop] = '\0';
					printf("going for EXPR_EQUAL_CMP expression\n");

					//in case there is a space between operators and identifiers
					if (tempTop > 1) {
						printf("already an identifier in stack \n");
						pop(&tempTop);
						pop(&tempTop);
						printf("now in the stack in EXPR_EQUAL_CMP already id: %s\n", tempStack[tempTop]);
						expr* leftExpr = expr_create_string(tempStack[tempTop]);
						expr* rightExpr = expr_create_string(current->value);
						expr* equalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
						push_expressionList(expressionListNode, equalExpr);
						printf("pushin EXPR_EQUAL_CMP in expressionListNode!!!!!!!!!!!\n");
						operatorInsideStack = 0;

						//pushin to stack the previous id
						++tempTop;
						push(tempStack[tempTop], &tempTop, current->value);
						strcpy(temp, current->value);

						current = current->next;
						if (current == NULL) {
							printf("current is NULL\n");
							stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
							push_commandList(commandNode, NULL, ret_stmt, NULL);
							return current;
						}
						else {
							if ((tempOp2 != NULL) && (tempOp2[0] != '\0')) {
								printf("additional saved operator : %s\n", tempOp2);
								++tempTop;
								push(tempStack[tempTop], &tempTop, tempOp2);
								continue;
							}
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(temp, current->value);
							printf("current NOT NULL\n");
							current = current->next;
							continue;
						}
					}
					strcpy(temp, current->value);
					current = current->next;
					printf("now the current 1 EXPR_EQUAL_CMP: %s\n", current->value);
					while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
						if (strcmp(current->type, "operator") == 0) {
							printf("operator again EXPR_EQUAL_CMP\n");
							tempStack[0][tempTop] = '\0';
							pop(&tempTop);
							++tempTop;
							push(tempStack[tempTop], &tempTop, current->value);
							strcpy(tempOp2, current->value);
							if (operatorUsed == 1) {
								strcpy(tempOp, current->value);
							}
							current = current->next;
							printf("now the current 1.2 : %s\n", current->value);
							printf("now the temp : %s\n", temp);
							printf("now the tempOp : %s\n", tempOp);

							if (strcmp(tempOp, "+") == 0) {
								printf("going to add, add expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, addExpr);
							}
							else if (strcmp(tempOp, "-") == 0) {
								printf("going to add, sub expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, subExpr);
							}
							else if (strcmp(tempOp, "*") == 0) {
								printf("going to add, mul expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, mulExpr);
							}
							else if (strcmp(tempOp, "/") == 0) {
								printf("going to add, div expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, divExpr);
							}
							else if (strcmp(tempOp, "<") == 0) {
								printf("going to add, smaller_cmp expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, "<=") == 0) {
								printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, smallerExpr);
							}
							else if (strcmp(tempOp, ">") == 0) {
								printf("going to add, EXPR_BIGGER_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, biggerExpr);
							}
							else if (strcmp(tempOp, ">=") == 0) {
								printf("going to add, EXPR_BIGGEROREQ_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, biggerExpr);
							}
							else if (strcmp(tempOp, "@==") == 0) {
								printf("going to add, EXPR_EQUAL_CMP expression to the list\n");
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								expr* equalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								push_expressionList(expressionListNode, equalExpr);
							}
							else {

							}
							strcpy(temp, current->value);
							strcpy(tempOp, tempOp2);
							current = current->next;

							if (current == NULL) {
								printf("current is NULL operator again EXPR_EQUAL_CMP\n");
								stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
								push_commandList(commandNode, NULL, ret_stmt, NULL);
								return current;
							}

							printf("now the current 1.3 EXPR_EQUAL_CMP : %s\n", current->value);
							continue;
						}
						else if (strcmp(current->type, "identifier") == 0) {
							printf("second parameter EXPR_EQUAL_CMP %s\n", current->value);
							printf("the temp : %s\n", temp);
							printf("now in the stack : %s\n", tempStack[tempTop]);
							printf("operator : %s\n", tempOp2);

							expr* leftExpr = expr_create_string(temp);
							expr* rightExpr = expr_create_string(current->value);

							if (strcmp(tempStack[tempTop], "+") == 0) {
								expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used add\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, addExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "-") == 0) {
								expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used sub\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, subExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "*") == 0) {
								expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used mul\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, mulExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "/") == 0) {
								expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used div\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, divExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "<=") == 0) {
								expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used smallerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, smallerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], ">") == 0) {
								expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used biggerExpr\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, biggerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], ">=") == 0) {
								expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used EXPR_BIGGEROREQ_CMP\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, biggerExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else if (strcmp(tempStack[tempTop], "@==") == 0) {
								expr* equalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
								operatorUsed = 1;
								printf("the operator used EXPR_EQUAL_CMP\n");
								//copying right id expr to become new left id expr
								strcpy(temp, current->value);
								push_expressionList(expressionListNode, equalExpr);
								current = current->next;
								if (current == NULL) {
									printf("current is NULL\n");
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
									return current;
								}
							}
							else {
								if (strcmp(tempOp2, "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used add\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, addExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used sub\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, subExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used mul\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, mulExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used div\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, divExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "<=") == 0) {
									expr* smallerExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used smallerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, smallerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used biggerExpr\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, biggerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, ">=") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used EXPR_BIGGEROREQ_CMP\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, biggerExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else if (strcmp(tempOp2, "@==") == 0) {
									expr* equalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									operatorUsed = 1;
									printf("the operator used EXPR_EQUAL_CMP\n");
									//copying right id expr to become new left id expr
									strcpy(temp, current->value);
									push_expressionList(expressionListNode, equalExpr);
									current = current->next;
									if (current == NULL) {
										printf("current is NULL\n");
										stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
										push_commandList(commandNode, NULL, ret_stmt, NULL);
										return current;
									}
								}
								else {

								}
							}
						}
					}
					if (strcmp(current->type, "end of command") == 0) {
						current = current->next;
						if (current != NULL) {
							printf("now the current 3 div : %s\n", current->value);
							if (strcmp(current->type, "identifier") == 0) {
								printf("second parameter after eoc %s\n", current->value);
								expr* leftExpr = expr_create_string(temp);
								expr* rightExpr = expr_create_string(current->value);
								
								pop(&tempTop);
								printf("now in the stack : %s\n", tempStack[tempTop]);

								if (strcmp(tempStack[tempTop], "+") == 0) {
									expr* addExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, addExpr, NULL, NULL, NULL, NULL, NULL);
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "-") == 0) {
									expr* subExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, subExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "*") == 0) {
									expr* mulExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, mulExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "/") == 0) {
									expr* divExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, divExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "<=") == 0) {
									expr* smalelrExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, smalelrExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], ">") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, biggerExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], ">=") == 0) {
									expr* biggerExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, biggerExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else if (strcmp(tempStack[tempTop], "@==") == 0) {
									expr* equalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
									push_expressionList(expressionListNode, equalExpr);
									stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
									//add to expression list
									push_commandList(commandNode, NULL, ret_stmt, NULL);
								}
								else {

								}
							}
						}
					}
				}
			}

			current = current->next;

			if (strcmp(current->type, "end of command") == 0){
				current = current->next; 
				if (current != NULL) {
					printf("in return eoc loop with value : %s\n", current->value);	
				}

				printf("going for eoc break --- in return stmt\n");
				break;
			}

			if (current == NULL) {
				printf("going for null break --- in return stmt\n");
				break;
			}
		}
	}

	printf("don't forget to return the current pointer\n");

	return current;

}
