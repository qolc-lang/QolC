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
				temp_type =  (int)current->aStmt->decl->type->kind;
				//type of string
				if (temp_type == 4) {
					printf("	TYPE_STRING\n");
					printf("		value: %s\n", current->aStmt->decl->value->string_literal);
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
			//printf("we have an expr\n");
			//printf("the expr kind : %d\n", current->anExpr->kind);
		}
		else {

		}
		current = current->next;
	}
}