#include "command.h"

/*
	Pushing the appropriate arguments in the list of commands
*/
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

/*
	Printing the different commands in the command list
*/
void print_commandList(command* commandNode) {
	command * current = commandNode;
	int counter = 0;
	int value;
	int temp_type;
	
	while (current != NULL) {
		++counter;

		if (current->aDecl != NULL) {

		}
		else if (current->aStmt != NULL) {
			value = (int)current->aStmt->kind;

			if (value == 0) {
				printf("STMT_DECL\n");
				printf("name: %s\n", current->aStmt->decl->name);
				if (current->aStmt->decl->theType == NULL) {
					printf("		value: %s\n", current->aStmt->decl->value->string_literal);
				}
				else {
					temp_type =  (int)current->aStmt->decl->theType->kind;

					if (temp_type == 0) {
						printf("	TYPE_VOID\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 1) {
						printf("	TYPE_BOOLEAN\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 2) {
						printf("	TYPE_CHARACTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 3) {
						printf("	TYPE_INTEGER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 4) {
						printf("	TYPE_STRING\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 5) {
						printf("	TYPE_FLOAT\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 6) {
						printf("	TYPE_FLOAT_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 7) {
						printf("	TYPE_INT_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 8) {
						printf("	TYPE_CHAR_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 9) {
						printf("	TYPE_STRING_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 10) {
						printf("	TYPE_VOID_POINTER\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 12) {
						printf("	TYPE_HEXNUM\n");
						if (current->aStmt->decl->value != NULL)
							printf("		value: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 13) {
						printf("	TYPE_STRUCT\n");
					}
					else if (temp_type == 14) {
						printf("	TYPE_ENUM\n");
					}
					else if (temp_type == 15) {
						printf("	TYPE_UNION\n");
					}
					else if (temp_type == 15) {
						printf("	TYPE_UNION\n");
					}
					else if (temp_type == 16) {
						printf("	TYPE_VOID_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 17) {
						printf("	TYPE_BOOLEAN_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 18) {
						printf("	TYPE_CHAR_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 19) {
						printf("	TYPE_INTEGER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 20) {
						printf("	TYPE_STRING_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 21) {
						printf("	TYPE_FLOAT_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 22) {
					printf("	TYPE_STRUCT_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 23) {
					printf("	TYPE_ENUM_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 24) {
					printf("	TYPE_UNION_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 25) {
						printf("	TYPE_FLOAT_POINTER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 26) {
						printf("	TYPE_INT_POINTER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 27) {
						printf("	TYPE_CHAR_POINTER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 28) {
						printf("	TYPE_STRING_POINTER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 29) {
						printf("	TYPE_VOID_POINTER_ARRAY\n");
						if (current->aStmt->decl->value != NULL)
							printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 30) {
					printf("	TYPE_STRUCT_POINTER_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 31) {
					printf("	TYPE_ENUM_POINTER_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else if (temp_type == 32) {
					printf("	TYPE_UNION_POINTER_ARRAY\n");
					if (current->aStmt->decl->value != NULL)
						printf("		size: %s\n", current->aStmt->decl->value->string_literal);
					}
					else;
				}
				if (current->aStmt->memberOf != -1) {

					if (current->aStmt->memberOf == 1) printf("		member of struct\n");
					else if (current->aStmt->memberOf == 2) printf("		member of union\n");
					else if (current->aStmt->memberOf == 3) printf("		member of enum\n");
					else if (current->aStmt->memberOf == 4) printf("		member of assert\n");
					else if (current->aStmt->memberOf == 6) printf("		member of return\n");
					else;
				}
			}
			else if (value == 2) {
				printf("STMT_IF_ELSE\n");
			}
			else if (value == 3) {
				printf("STMT_FOR\n");
			}
			else if (value == 4) {
				printf("STMT_PRINT\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 5) {
				printf("STMT_IMPORT\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 6) {
				printf("STMT_LOAD\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 7) {
				printf("STMT_DELETE\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 8) {
				printf("STMT_DEFER\n");
			}
			else if (value == 9) {
				printf("STMT_ASSERT\n");
			}
			else if (value == 10) {
				printf("STMT_RETURN\n");
			}
			else if (value == 11) {
				printf("STMT_BREAK\n");
			}
			else if (value == 12) {
				printf("STMT_CONTINUE\n");
			}
			else if (value == 14) {
				printf("STMT_NEW\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
				printf("	type: %s\n", current->aStmt->next_expr->string_literal);
			}
			else if (value == 15) {
				printf("STMT_SLEEP\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 16) {
				printf("STMT_MAIN\n");
			}
			else if (value == 17) {
				printf("STMT_SCAN\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
			}
			else if (value == 18) {
				printf("STMT_CAST\n");
				printf("	expr: %s\n", current->aStmt->theExpr->string_literal);
				printf("	type to convert to : %s\n", current->aStmt->next_expr->string_literal);
			}
			else if (value == 19) {
				printf("STMT_WHILE\n");
			}
			else if (value == 20) {
				printf("STMT_ARRAYDADD\n");
				printf("	the array : %s\n", current->aStmt->theExpr->string_literal);
				printf("	element to be added : %s\n", current->aStmt->next_expr->string_literal);
			}
			else if (value == 21) {
				printf("STMT_EACH\n");
			}
			else {

			}
		}
		else if (current->anExpr != NULL) {
			int val = (int)current->anExpr->kind;
			if (val == 0) {
				printf("EXPR_ADD\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 1) {
				printf("EXPR_SUB\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 2) {
				printf("EXPR_MUL\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 3) {
				printf("EXPR_DIV\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 4) {
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
			else if (val == 11) {
				printf("EXPR_BIGGER_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 12) {
				printf("EXPR_BIGGEROREQ_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 13) {
				printf("EXPR_SMALLER_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 14) {
				printf("EXPR_SMALLEROREQ_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else if (val == 15) {
				printf("EXPR_EQUAL_CMP\n");
				printf("	left : %s\n", current->anExpr->left->string_literal);
				printf("	right : %s\n", current->anExpr->right->string_literal);
			}
			else {

			}
			if (current->anExpr->memberOf != -1) {

				if (current->anExpr->memberOf == 1) printf("		member of struct\n");
				else if (current->anExpr->memberOf == 2) printf("		member of union\n");
				else if (current->anExpr->memberOf == 3) printf("		member of enum\n");
				else if (current->anExpr->memberOf == 4) printf("		member of assert\n");
				else if (current->anExpr->memberOf == 6) printf("		member of return\n");
				else;
			}
		}
		else {

		}
		current = current->next;
	}
}