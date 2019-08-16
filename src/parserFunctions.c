#include "../inc/parserFunctions.h"


parse_state* checkForReturnOperator(parse_state* current, char* tempStack, int tempTop, command* commandNode, tempVariables* tempNode)
{
	int operatorInsideStack = 0; 
	int operatorUsed = 0;
	expr_list* expressionListNode = malloc(sizeof(expr_list));
	parse_state* checkCurrent;

	//check for the operator
	printf("in checkForReturnOperator\n");

	//in case there is a space between operators and identifiers
	if (tempTop > 1) {
		printf("already an identifier in stack \n");
		//might not need these pops
		pop(&tempTop);
		pop(&tempTop);
		printf("the first expr : %s\n", tempNode->value);
		printf("now in the stack already id: %s\n", tempStack);
		printf("current->value: %s\n", current->value);

		expr* leftExpr = expr_create_string(tempNode->value);
		expr* rightExpr = expr_create_string(current->value);
		expr* theExpr;
		if (strcmp(tempStack, "+") == 0) {
			printf("is add\n");
			theExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "-") == 0) {
			printf("is sub\n");
			theExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "*") == 0) {
			printf("is mul\n");
			theExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "/") == 0) {
			printf("is div\n");
			theExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "<") == 0) {
			printf("is smaller\n");
			theExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "<=") == 0) {
			printf("is smallerOrEq\n");
			theExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, ">") == 0) {
			printf("is bigger\n");
			theExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, ">=") == 0) {
			printf("is biggerOrEq\n");
			theExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else if (strcmp(tempStack, "@==") == 0) {
			printf("is equal\n");
			theExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
		}
		else;
		push_expressionList(expressionListNode, theExpr);
		printf("pushin theExpr in expressionListNode!!!!!!!!!!!\n");
		operatorInsideStack = 0;

		//pushin to stack the previous id
		++tempTop;
		push(tempStack, &tempTop, current->value);
		printf("going to copy the value : %s\n", current->value);
		strcpy(tempNode->value, current->value);

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
				push(tempStack, &tempTop, tempNode->tempOp2);
				// return NULL;	//just simply return
			}
			else {
				++tempTop;
				push(tempStack, &tempTop, current->value);
				strcpy(tempNode->temp, current->value);
				printf("current NOT NULL\n");
				current = current->next;
				// return NULL;		//just simply return
			}

		}
	}
	// printf("going to copy the value : %s\n", current->value);
	// strcpy(tempNode->temp, current->value);
	current = current->next;
	printf("now the current 1 : %s\n", current->value);
	while ((strcmp(current->type, "operator") == 0) || (strcmp(current->type, "identifier") == 0) || (strcmp(current->type, "number") == 0)) {
		if (strcmp(current->type, "operator") == 0) {
			printf("operator again in while\n");
			tempStack[tempTop] = '\0';
			pop(&tempTop);
			++tempTop;
			push(tempStack, &tempTop, current->value);
			strcpy(tempNode->tempOp2, current->value);
			if (operatorUsed == 1) {
				strcpy(tempNode->tempOp, current->value);
			}
			current = current->next;
			printf("now the current 1.2 : %s\n", current->value);

			if (strcmp(current->type, "end of command") != 0)
			{
				printf("now the value : %s\n", tempNode->value);
				printf("now the tempNode->tempOp : %s\n", tempNode->tempOp);

				expr* leftExpr = expr_create_string(tempNode->value);
				expr* rightExpr = expr_create_string(current->value);
				expr* theExprIn;

				if (strcmp(tempNode->tempOp, "+") == 0) {
					printf("going to add, add expression to the list\n");
					theExprIn = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "-") == 0) {
					printf("going to add, sub expression to the list\n");
					theExprIn = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "*") == 0) {
					printf("going to add, mul expression to the list\n");
					theExprIn = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "/") == 0) {
					printf("going to add, div expression to the list\n");
					theExprIn = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "<") == 0) {
					printf("going to add, EXPR_SMALLER_CMP expression to the list\n");
					theExprIn = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "<=") == 0) {
					printf("going to add, EXPR_SMALLEROREQ_CMP expression to the list\n");
					theExprIn = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, ">") == 0) {
					printf("going to add, EXPR_BIGGER_CMP expression to the list\n");
					theExprIn = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, ">=") == 0) {
					printf("going to add, EXPR_BIGGEROREQ_CMP expression to the list\n");
					theExprIn = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp, "@==") == 0) {
					printf("going to add, EXPR_EQUAL_CMP expression to the list\n");
					theExprIn = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else; 

				push_expressionList(expressionListNode, theExprIn);

				printf("going to copy the value : %s\n", current->value);
				strcpy(tempNode->value, current->value);
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

		}
		else if (strcmp(current->type, "identifier") == 0) {
			printf("second parameter %s\n", current->value);
			printf("the tempNode->value : %s\n", tempNode->value);
			printf("now in the stack : %s\n", tempStack);
			printf("operator : %s\n", tempNode->tempOp2);

			expr* leftExpr = expr_create_string(tempNode->value);
			expr* rightExpr = expr_create_string(current->value);
			expr* theExprSecond;

			if (strcmp(tempStack, "+") == 0) {
				printf("the operator used add\n");
				theExprSecond = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
			}
			else if (strcmp(tempStack, "-") == 0) {
				theExprSecond = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used sub\n");
			}
			else if (strcmp(tempStack, "*") == 0) {
				theExprSecond = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used mul\n");
			}
			else if (strcmp(tempStack, "/") == 0) {
				theExprSecond = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used div\n");
			}
			else if (strcmp(tempStack, "<") == 0) {
				theExprSecond = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used smallerExpr\n");
			}
			else if (strcmp(tempStack, "<=") == 0) {
				theExprSecond = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used smallerExpr\n");
			}
			else if (strcmp(tempStack, ">") == 0) {
				theExprSecond = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used biggerExpr\n");
			}
			else if (strcmp(tempStack, ">=") == 0) {
				theExprSecond = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used EXPR_BIGGEROREQ_CMP\n");
			}
			else if (strcmp(tempStack, "@==") == 0) {
				theExprSecond = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				printf("the operator used EXPR_EQUAL_CMP\n");
			}
			else {
				if (strcmp(tempNode->tempOp2, "+") == 0) {
					printf("the operator used add 2\n");
					theExprSecond = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempNode->tempOp2, "-") == 0) {
					theExprSecond = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used sub 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "*") == 0) {
					theExprSecond = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used mul 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "/") == 0) {
					theExprSecond = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used div 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "<") == 0) {
					theExprSecond = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used smallerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "<=") == 0) {
					theExprSecond = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used smallerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, ">") == 0) {
					theExprSecond = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used biggerExpr 2\n");
				}
				else if (strcmp(tempNode->tempOp2, ">=") == 0) {
					theExprSecond = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used EXPR_BIGGEROREQ_CMP 2\n");
				}
				else if (strcmp(tempNode->tempOp2, "@==") == 0) {
					theExprSecond = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
					printf("the operator used EXPR_EQUAL_CMP 2\n");
				}
				else {
					printf("Invalid operator, for return expression. Needs checking\n");
					stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
					push_commandList(commandNode, NULL, ret_stmt, NULL);
					return current;
				}
			}

			operatorUsed = 1;
			//copying right id expr to become new left id expr
			strcpy(tempNode->value, current->value);
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
		checkCurrent = current;
		if (current != NULL) {
			printf("now the current 3 : %s\n", current->value);
			if (strcmp(current->type, "identifier") == 0) {
				printf("second parameter after eoc %s\n", current->value);
				printf("now in the tempNode->value : %s\n", tempNode->value);
				expr* leftExpr = expr_create_string(tempNode->value);
				expr* rightExpr = expr_create_string(current->value);
				expr* finalExpr;
				
				printf("the tempTop : %d\n", tempTop);
				if (tempTop > 1)
					pop(&tempTop);
				printf("now in the stack : %s\n", tempStack);

				if (strcmp(tempStack, "+") == 0) {
					printf("going for add in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_ADD, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "-") == 0) {
					printf("going for sub in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_SUB, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "*") == 0) {
					printf("going for mul in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_MUL, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "/") == 0) {
					printf("going for div in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_DIV, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "<") == 0) {
					printf("going for EXPR_SMALLER_CMP in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "<=") == 0) {
					printf("going for EXPR_SMALLEROREQ_CMP in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, ">") == 0) {
					printf("going for EXPR_BIGGER_CMP in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, ">=") == 0) {
					printf("going for EXPR_BIGGEROREQ_CMP in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else if (strcmp(tempStack, "@==") == 0) {
					printf("going for EXPR_EQUAL_CMP in the end - finalExpr\n");
					finalExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL);
				}
				else {

				}

				push_expressionList(expressionListNode, finalExpr);
				stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
				push_commandList(commandNode, NULL, ret_stmt, NULL);
			}
		}
	}

	printf("before hereeee checkForReturnOperator\n");

	if (current == NULL) {
		printf("going for null break 1 checkForReturnOperator --- in return stmt\n");
		return NULL;
	}

	if (strcmp(current->type, "end of command") == 0){
		current = current->next; 
		if (current != NULL) {
			printf("in return eoc loop with value : %s\n", current->value);	
		}

		printf("going for eoc break --- in return stmt\n");
	}
	else {
		printf("the current now in else : %s\n", current->value);
		if (!strcmp(checkCurrent->value, current->value) == 0) {
			stmt* ret_stmt = stmt_create(STMT_RETURN, NULL, NULL, NULL, NULL, NULL, NULL, expressionListNode, NULL);
			push_commandList(commandNode, NULL, ret_stmt, NULL);
			return current;
		}
	}

	current = current->next;
	if (current == NULL) {
		printf("going for null break 2 checkForReturnOperator --- in return stmt\n");
		return NULL;
	}

	if (strcmp(current->type, "end of command") == 0){
		current = current->next; 
		if (current != NULL) {
			printf("in return eoc loop with value : %s\n", current->value);	
			return current;
		}

		printf("going for eoc break --- in return stmt\n");
		return NULL;
	}

	return current;
}

//Check for identifier type
int isIdentifierType(char* currentType) {
	if (strcmp(currentType, "identifier") == 0) return 1; return 0;
}

//Check for number type
int isNumberType(char* currentType) {
	if (strcmp(currentType, "number") == 0) return 1; return 0;
}

//Build import statement
void BuildImportStatement(char* currentValue, command* commandNode) {
	printf("Going to build import statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_IMPORT, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build load statement
void BuildLoadStatement(char* currentValue, command* commandNode) {
	printf("Going to build load statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_LOAD, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build print statement
void BuildPrintStatement(char* currentValue, command* commandNode) {
	printf("Going to build print statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_PRINT, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build sleep statement
void BuildSleepStatement(char* currentValue, command* commandNode) {
	printf("Going to build sleep statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_SLEEP, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build scan statement
void BuildScanStatement(char* currentValue, command* commandNode) {
	printf("Going to build scan statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_SCAN, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build delete statement
void BuildDeleteStatement(char* currentValue, command* commandNode) {
	printf("Going to build delete statement with string : %s\n", currentValue);
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt = stmt_create(STMT_DELETE, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build cast statement
void BuildCastStatement(parse_state * current, command* commandNode) {
	printf("Going to build cast statement with string : %s\n", current->value);

	char temp[100], temp2[100];

	strcpy(temp, current->value);
	current = current->next;
	if (strcmp(current->type, "parenthesis") == 0) {
		current = current->next;
		strcpy(temp2, current->value);
	}
	expr* identifierExpr = expr_create_string(temp);
	expr* typeExpr = expr_create_string(temp2);
	stmt* theStmt = stmt_create(STMT_CAST, NULL, NULL, identifierExpr, typeExpr, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build array_add statement
void BuildArrayAddStatement(parse_state * current, command* commandNode) {
	printf("Going to build array_add statement with string : %s\n", current->value);

	char temp[100], temp2[100];

	strcpy(temp, current->value);
	current = current->next;
	if (strcmp(current->type, "parenthesis") == 0) {
		current = current->next;
		strcpy(temp2, current->value);
	}
	expr* identifierExpr = expr_create_string(temp);
	expr* typeExpr = expr_create_string(temp2);
	stmt* theStmt = stmt_create(STMT_ARRAYADD, NULL, NULL, identifierExpr, typeExpr, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build new statement
void BuildNewStatement(parse_state * current, command* commandNode, char* temp) {
	printf("Going to build statement new \n");
	current = current->next;
	current = current->next;
	expr* expr1 = expr_create_string(temp);
	expr* expr2 = expr_create_string(current->value);
	stmt* theStmt = stmt_create(STMT_NEW, NULL, NULL, expr1, expr2, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build hexadecimal number
void BuildHexNumDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build hexadecimal number declaration statement\n");
	type* theType = type_create(TYPE_HEXNUM, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build int 
void BuildIntDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build int declaration statement\n");
	type* theType = type_create(TYPE_INTEGER, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build float 
void BuildFloatDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build float declaration statement\n");
	type* theType = type_create(TYPE_FLOAT, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build char 
void BuildCharDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build character declaration statement\n");
	type* theType = type_create(TYPE_CHARACTER, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build string 
void BuildStringDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build string declaration statement\n");
	type* theType = type_create(TYPE_STRING, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build string pointer 
void BuildStringPointerDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build string pointer declaration statement\n");
	type* theType = type_create(TYPE_STRING_POINTER, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build float pointer 
void BuildFloatPointerDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build float pointer declaration statement\n");
	type* theType = type_create(TYPE_FLOAT_POINTER, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

//Build bool pointer 
void BuildBoolDeclaration(char* currentValue, command* commandNode, char* temp) {
	printf("Going to build bool declaration statement\n");
	type* theType = type_create(TYPE_BOOLEAN, NULL, NULL);
	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}