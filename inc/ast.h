#ifndef _AST_H_
#define _AST_H_

#include "lexer_node.h"

typedef enum {
	TYPE_VOID,
	TYPE_BOOLEAN,
	TYPE_CHARACTER,
	TYPE_INTEGER,
	TYPE_STRING,
	TYPE_ARRAY,
	TYPE_FUNCTION
} type_t;

typedef struct type {
	type_t kind;
	struct type *subtype;
	struct param_list *params;
}type;

typedef struct param_list {
	char *name;
	type *type;
	struct param_list *next;
}param_list;

typedef enum {
	EXPR_ADD,
	EXPR_SUB,
	EXPR_MUL,
	EXPR_DIV,
	EXPR_INTEGER_LITERAL,
	EXPR_CHAR_LITERAL,
	EXPR_STRING_LITERAL,
} expr_t;

typedef struct expr {
	expr_t kind;
	struct expr *left;
	struct expr *right;
	char *string_literal;
	int integer_value;
	char character_value;
}expr;

typedef enum {
	STMT_DECL,
	STMT_EXPR,
	STMT_IF_ELSE,
	STMT_FOR,
	STMT_PRINT,
	STMT_IMPORT,
	STMT_LOAD,
	STMT_RETURN,
	STMT_BLOCK
} stmt_t;

typedef struct stmt {
	stmt_t kind;
	struct decl *decl;
	expr *init_expr;
	expr *expr;
	expr *next_expr;
	struct stmt *body;
	struct stmt *else_body;
	struct stmt *next;
}stmt;

typedef struct decl {
	char* name;
	type* type;
	expr* value;		//if declaration is an expression
	stmt* code;			//if declaration is a function
	struct decl* next;
}decl;

decl* decl_create(char *name, type *type, expr *value, stmt *code);
stmt* stmt_create(stmt_t kind, decl *decl, expr *iexpr, expr* theExpr, expr *nexpr, stmt *body, stmt *ebody, stmt *next);
expr* expr_create(expr_t kind, expr *left, expr *right, int integer_value, char character_value, const char * string_literal); 
type* type_create(type_t kind, type *subtype, param_list *params);

expr* expr_create_integer(int i);
expr* expr_create_char(char c);
expr* expr_create_string(char* string_literal);

#endif