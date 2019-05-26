#include "command.h"

void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr) {
	printf("in push_commandList\n");
    command* current = commandNode;
    while (current->next != NULL) {
    	current = current->next;
    }
    current->next = malloc(sizeof(command));
    current->next->aDecl = aDecl;
    current->next->aStmt = aStmt;
    current->next->anExpr = anExpr;
    current->next->next = NULL;
    printf("ending push_commandList\n");
}

void print_commandList(command* commandNode) {
	command * current = commandNode;
	int counter = 0;
	int value;
	int temp_type;
	
	//first in the list is the head
	while (current != NULL) {
		++counter;

		if (current->aDecl != NULL) {

		}
		else if (current->aStmt != NULL) {
			value = (int)current->aStmt->kind;
			//import statement
			if (value == 0) {
				printf("STMT_DECL\n");
				printf("name: %s\n", current->aStmt->decl->name);
				if (current->aStmt->decl->type == NULL) {
					printf("		value: %s\n", current->aStmt->decl->value->string_literal);
				}
				else {
					temp_type =  (int)current->aStmt->decl->type->kind;
					//type of bool
					if (temp_type == 1) {
						printf("	TYPE_BOOLEAN\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of char
					else if (temp_type == 2) {
						printf("	TYPE_CHARACTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of int
					else if (temp_type == 3) {
						printf("	TYPE_INTEGER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of string
					else if (temp_type == 4) {
						printf("	TYPE_STRING\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of float
					else if (temp_type == 5) {
						printf("	TYPE_FLOAT\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of float pointer
					else if (temp_type == 6) {
						printf("	TYPE_FLOAT_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of int pointer
					else if (temp_type == 7) {
						printf("	TYPE_INT_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of char pointer
					else if (temp_type == 8) {
						printf("	TYPE_CHAR_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					//type of string pointer
					else if (temp_type == 9) {
						printf("	TYPE_STRING_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
				}

			}
			else if (value == 4) {
				printf("STMT_PRINT\n");
				printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else if (value == 5) {
				printf("STMT_IMPORT\n");
				printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else if (value == 6) {
				printf("STMT_LOAD\n");
				printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else if (value == 7) {
				printf("STMT_DELETE\n");
				printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else if (value == 9) {
				printf("STMT_ASSERT\n");
				int assert_val = (int)current->aStmt->expr->kind;

				if (assert_val == 13) {
					printf("	EXPR_BIGGER_CMP\n");
					printf("		left : %s\n", current->aStmt->expr->left->string_literal);
					printf("		right : %s\n", current->aStmt->expr->right->string_literal);
				}
				else if (assert_val == 14) {
					printf("	EXPR_BIGGEROREQ_CMP\n");
					printf("		left : %s\n", current->aStmt->expr->left->string_literal);
					printf("		right : %s\n", current->aStmt->expr->right->string_literal);
				}
				else if (assert_val == 15) {
					printf("	EXPR_SMALLER_CMP\n");
					printf("		left : %s\n", current->aStmt->expr->left->string_literal);
					printf("		right : %s\n", current->aStmt->expr->right->string_literal);
				}
				else if (assert_val == 16) {
					printf("	EXPR_SMALLEROREQ_CMP\n");
					printf("		left : %s\n", current->aStmt->expr->left->string_literal);
					printf("		right : %s\n", current->aStmt->expr->right->string_literal);
				}
				else if (assert_val == 17) {
					printf("	EXPR_EQUAL_CMP\n");
					printf("		left : %s\n", current->aStmt->expr->left->string_literal);
					printf("		right : %s\n", current->aStmt->expr->right->string_literal);
				}
				else {

				}
			}
			else if (value == 10) {
				printf("STMT_RETURN\n");
				if (current->aStmt->expr == NULL) {
					if (current->aStmt->expressionList == NULL) {
						current = current->next;
						continue;
					}
					else {
						//print all expressions in the list
						expr_list* currentList = current->aStmt->expressionList;

						while (currentList != NULL) {
							if (currentList->theExpr != NULL) {
								int ret_val = (int)currentList->theExpr->kind;
								if (ret_val == 0) {
									printf("	EXPR_ADD\n");
									printf("		left : %s\n", currentList->theExpr->left->string_literal);
									printf("		right : %s\n",	currentList->theExpr->right->string_literal);
								}
								else if (ret_val == 1) {
									printf("	EXPR_SUB\n");
									printf("		left : %s\n", currentList->theExpr->left->string_literal);
									printf("		right : %s\n", currentList->theExpr->right->string_literal);
								}
							}
							currentList = currentList->next;
						}
					}
				}
				else {
					int ret_val = (int)current->aStmt->expr->kind;
					if (ret_val == 0) {
						printf("	EXPR_ADD\n");
						printf("		left : %s\n", current->aStmt->expr->left->string_literal);
						printf("		right : %s\n", current->aStmt->expr->right->string_literal);
					}
					else if (ret_val == 1) {
						printf("	EXPR_SUB\n");
						printf("		left : %s\n", current->aStmt->expr->left->string_literal);
						printf("		right : %s\n", current->aStmt->expr->right->string_literal);
					}
					else if (ret_val == 2) {
						printf("	EXPR_MUL\n");
						printf("		left : %s\n", current->aStmt->expr->left->string_literal);
						printf("		right : %s\n", current->aStmt->expr->right->string_literal);
					}
					else if (ret_val == 3) {
						printf("	EXPR_DIV\n");
						printf("		left : %s\n", current->aStmt->expr->left->string_literal);
						printf("		right : %s\n", current->aStmt->expr->right->string_literal);
					}
					else {

					}
				}
			}
			else if (value == 11) {
				printf("STMT_BREAK\n");
				//printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else if (value == 12) {
				printf("STMT_CONTINUE\n");
				//printf("	expr: %s\n", current->aStmt->expr->string_literal);
			}
			else {

			}
		}
		else if (current->anExpr != NULL) {
			int val = (int)current->anExpr->kind;
			if (val == 4) {
				printf("EXPR_ADD_ASSIGNMENT\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 5) {
				printf("EXPR_SUB_ASSIGNMENT\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 6) {
				printf("EXPR_MUL_ASSIGNMENT\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 7) {
				printf("EXPR_DIV_ASSIGNMENT\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 8) {
				printf("EXPR_INCREMENT\n");
				printf("	identifier : %s\n", current->anExpr->string_literal);
			}
			else if (val == 9) {
				printf("EXPR_DECREMENT\n");
				printf("	identifier : %s\n", current->anExpr->string_literal);
			}
			else if (val == 13) {
				printf("EXPR_BIGGER_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 14) {
				printf("EXPR_BIGGEROREQ_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 15) {
				printf("EXPR_SMALLER_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 16) {
				printf("EXPR_SMALLEROREQ_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 17) {
				printf("EXPR_EQUAL_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else {

			}
		}
		else {

		}
		current = current->next;
	}
}