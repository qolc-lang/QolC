#include "../inc/parserFunctions.h"


void checkForReturnOperator(parse_state* current, char* tempStack, int tempTop, command* commandNode, tempVariables* tempNode)
{
	int whatOperator = 0; 
	int operatorInsideStack = 0; 
	int operatorUsed = 0;
	expr_list* expressionListNode = malloc(sizeof(expr_list));

	//check for the operator
	printf("in checkForReturnOperator\n");

	//in case there is a space between operators and identifiers
	if (tempTop > 1) {
		printf("already an identifier in stack \n");
		pop(&tempTop);
		pop(&tempTop);
		printf("now in the stack already id: %s\n", tempStack[tempTop]);

		expr* leftExpr = expr_create_string(tempStack[tempTop]);
		expr* rightExpr = expr_create_string(current->value);
		if (strcmp(tempStack[tempTop], "+") == 0) {
			printf("is add\n");
			whatOperator = 1; 
			expr* theExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "-") == 0) {
			printf("is sub\n");
			whatOperator = 2; 
			expr* theExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "*") == 0) {
			printf("is mul\n");
			whatOperator = 3; 
			expr* theExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "/") == 0) {
			printf("is div\n");
			whatOperator = 4; 
			expr* theExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "<") == 0) {
			printf("is smaller\n");
			whatOperator = 5; 
			expr* theExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "<=") == 0) {
			printf("is smallerOrEq\n");
			whatOperator = 6; 
			expr* theExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], ">") == 0) {
			printf("is bigger\n");
			whatOperator = 7; 
			expr* theExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], ">=") == 0) {
			printf("is biggerOrEq\n");
			whatOperator = 8; 
			expr* theExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack[tempTop], "@==") == 0) {
			printf("is equal\n");
			whatOperator = 9; 
			expr* theExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else;
		push_expressionList(expressionListNode, theExpr);
		printf("pushin theExpr in expressionListNode!!!!!!!!!!!\n");
		operatorInsideStack = 0;

		//pushin to stack the previous id
		++tempTop;
		push(tempStack[tempTop], &tempTop, current->value);
		strcpy(tempNode->temp, current->value);

		current = current->next;
		if (current == NULL) {
			printf("current is NULL\n");
			stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
			push_commandList(commandNode, NULL, ret_stmt, NULL);
			return current;
		}
		else {
			if ((tempNode->tempOp2 != NULL) && (tempNode->tempOp2[0] != '\0')) {
				printf("additional saved operator : %s\n", tempNode->tempOp2);
				++tempTop;
				push(tempStack[tempTop], &tempTop, tempNode->tempOp2);
				continue;
			}
			++tempTop;
			push(tempStack[tempTop], &tempTop, current->value);
			strcpy(tempNode->temp, current->value);
			printf("current NOT NULL\n");
			current = current->next;
			continue;
		}
	}
	strcpy(tempNode->temp, current->value);
	current = current->next;
	printf("now the current 1 : %s\n", current->value);
	while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0)) {
		if (strcmp(current->type, "operator") == 0) {
			printf("operator again add\n");
			tempStack[0][tempTop] = '\0';
			pop(&tempTop);
			++tempTop;
			push(tempStack[tempTop], &tempTop, current->value);
			strcpy(tempNode->tempOp2, current->value);
			if (operatorUsed == 1) {
				strcpy(tempNode->tempOp, current->value);
			}
			current = current->next;
			printf("now the current 1.2 : %s\n", current->value);
			printf("now the tempNode->tempOp : %s\n", tempNode->tempOp);

			expr* leftExpr = expr_create_string(tempNode->temp);
			expr* rightExpr = expr_create_string(current->value);

			if (whatOperator == 1) {
				printf("going to add, add expression to the list\n");
				expr* theExprIn = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 2) {
				printf("going to add, sub expression to the list\n");
				expr* theExprIn = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 3) {
				printf("going to add, mul expression to the list\n");
				expr* theExprIn = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 4) {
				printf("going to add, div expression to the list\n");
				expr* theExprIn = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 5) {
				printf("going to add, smaller_cmp expression to the list\n");
				expr* theExprIn = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 6) {
				printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
				expr* theExprIn = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 7) {
				printf("going to add, EXPR_BIGGER_CMP expression to the list\n");
				expr* theExprIn = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 8) {
				printf("going to add, EXPR_BIGGEROREQ_CMP expression to the list\n");
				expr* theExprIn = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (whatOperator == 9) {
				printf("going to add, EXPR_EQUAL_CMP expression to the list\n");
				expr* theExprIn = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else {

			}
			push_expressionList(expressionListNode, theExprIn);

			strcpy(tempNode->temp, current->value);
			strcpy(tempNode->tempOp, tempNode->tempOp2);
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
			printf("second parameter %s\n", current->value);
			printf("the tempNode->temp : %s\n", tempNode->temp);
			printf("now in the stack : %s\n", tempStack[tempTop]);
			printf("operator : %s\n", tempNode->tempOp2);

			expr* leftExpr = expr_create_string(tempNode->temp);
			expr* rightExpr = expr_create_string(current->value);

			if (strcmp(tempStack[tempTop], "+") == 0) {
				printf("the operator used add\n");
				expr* theExprSecond = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (strcmp(tempStack[tempTop], "-") == 0) {
				expr* theExprSecond = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used sub\n");
			}
			else if (strcmp(tempStack[tempTop], "*") == 0) {
				expr* theExprSecond = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used mul\n");
			}
			else if (strcmp(tempStack[tempTop], "/") == 0) {
				expr* theExprSecond = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used div\n");
			}
			else if (strcmp(tempStack[tempTop], "<") == 0) {
				expr* theExprSecond = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used smallerExpr\n");
			}
			else if (strcmp(tempStack[tempTop], "<=") == 0) {
				expr* theExprSecond = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used smallerExpr\n");
			}
			else if (strcmp(tempStack[tempTop], ">") == 0) {
				expr* theExprSecond = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used biggerExpr\n");
			}
			else if (strcmp(tempStack[tempTop], ">=") == 0) {
				expr* theExprSecond = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used EXPR_BIGGEROREQ_CMP\n");
			}
			else if (strcmp(tempStack[tempTop], "@==") == 0) {
				expr* theExprSecond = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used EXPR_EQUAL_CMP\n");
			}
			else {
				if (strcmp(tempNode->tempOp2, "+") == 0) {
					printf("the operator used add 2\n");
					expr* theExprSecond = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp2, "-") == 0) {
					expr* theExprSecond = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used sub 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "*") == 0) {
					expr* theExprSecond = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used mul 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "/") == 0) {
					expr* theExprSecond = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used div 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "<") == 0) {
					expr* theExprSecond = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used smallerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "<=") == 0) {
					expr* theExprSecond = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used smallerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, ">") == 0) {
					expr* theExprSecond = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used biggerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, ">=") == 0) {
					expr* theExprSecond = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used EXPR_BIGGEROREQ_CMP 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "@==") == 0) {
					expr* theExprSecond = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used EXPR_EQUAL_CMP 2\n");
				}
				else {
					printf("Invalid operator, for return expression. Needs checking\n");
				}
			}

			operatorUsed = 1;
			//copying right id expr to become new left id expr
			strcpy(tempNode->temp, current->value);
			push_expressionList(expressionListNode, theExprSecond);
			current = current->next;
			if (current == NULL) {
				printf("current is NULL\n");
				stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
				push_commandList(commandNode, NULL, ret_stmt, NULL);
				return current;
			}
		}
	}
	if (strcmp(current->type, "end of command") == 0) {
		current = current->next;
		if (current != NULL) {
			printf("now the current 3 : %s\n", current->value);
			if (strcmp(current->type, "identifier") == 0) {
				printf("second parameter after eoc %s\n", current->value);
				expr* leftExpr = expr_create_string(tempNode->temp);
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

	printf("exiting checkForReturnOperator\n");
}