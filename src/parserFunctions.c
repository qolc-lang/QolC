#include "../inc/parserFunctions.h"


void checkForReturnOperator(parse_state* current, char* theStackTop, int top, command* commandNode)
{
	//check for the operator
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
					
					printf("the tempTop : %d\n", tempTop);
					if (tempTop > 1)
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
}