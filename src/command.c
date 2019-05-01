#include "command.h"

void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr) {
    command* current = commandNode;
    while (current->next != NULL) {
    	current = current->next;
    }
    current->next = malloc(sizeof(command));
    current->next->aDecl = aDecl;
    current->next->aStmt = aStmt;
    current->next->anExpr = anExpr;
    current->next->next = NULL;
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
					//type of int
					if (temp_type == 2) {
						printf("	TYPE_CHARACTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
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
			else {

			}
		}
		else {

		}
		current = current->next;
	}
}