#ifndef _AST_H_
#define _AST_H_

#include "lexer_node.h"

/*
	Definition of the various types
*/
typedef enum {
	TYPE_VOID,
	TYPE_BOOLEAN,
	TYPE_CHARACTER,
	TYPE_INTEGER,
	TYPE_STRING,
	TYPE_FLOAT,
	TYPE_FLOAT_POINTER,
	TYPE_INT_POINTER,
	TYPE_CHAR_POINTER,
	TYPE_STRING_POINTER,
	TYPE_VOID_POINTER,
	TYPE_FUNCTION,
	TYPE_HEXNUM,
	TYPE_STRUCT,
	TYPE_ENUM,
	TYPE_UNION,
	TYPE_VOID_ARRAY,
	TYPE_BOOLEAN_ARRAY,
	TYPE_CHAR_ARRAY,
	TYPE_INTEGER_ARRAY,
	TYPE_STRING_ARRAY,
	TYPE_FLOAT_ARRAY,
	TYPE_STRUCT_ARRAY,
	TYPE_ENUM_ARRAY,
	TYPE_UNION_ARRAY,
	TYPE_FLOAT_POINTER_ARRAY,
	TYPE_INT_POINTER_ARRAY,
	TYPE_CHAR_POINTER_ARRAY,
	TYPE_STRING_POINTER_ARRAY,
	TYPE_VOID_POINTER_ARRAY,
	TYPE_STRUCT_POINTER_ARRAY,
	TYPE_ENUM_POINTER_ARRAY,
	TYPE_UNION_POINTER_ARRAY
} type_t;

typedef struct type {
	type_t kind;
	struct type *subtype;
	struct param_list *params;
}type;


typedef struct param_list {
	char *name;
	type *theType;
	struct param_list *next;
}param_list;


/*
	Definition of the various expressions
*/
typedef enum {
	EXPR_ADD,
	EXPR_SUB,
	EXPR_MUL,
	EXPR_DIV,
	EXPR_ADD_ASSIGNMENT,
	EXPR_SUB_ASSIGNMENT,
	EXPR_MUL_ASSIGNMENT,
	EXPR_DIV_ASSIGNMENT,
	EXPR_INCREMENT,
	EXPR_DECREMENT,
	EXPR_STRING_LITERAL,
	EXPR_BIGGER_CMP,
	EXPR_BIGGEROREQ_CMP,
	EXPR_SMALLER_CMP,
	EXPR_SMALLEROREQ_CMP,
	EXPR_EQUAL_CMP,
} expr_t;

typedef struct expr {
	expr_t kind;
	struct expr *left;
	struct expr *right;
	char *string_literal;
	char *string_id;
	int integer_value;
	char character_value;
	int memberOf;
}expr;

/*
	Definition of the various statements
*/
typedef enum {
	STMT_DECL,
	STMT_EXPR,
	STMT_IF_ELSE,
	STMT_FOR,
	STMT_PRINT,
	STMT_IMPORT,
	STMT_LOAD,
	STMT_DELETE,
	STMT_DEFER,
	STMT_ASSERT,
	STMT_RETURN,
	STMT_BREAK,
	STMT_CONTINUE,
	STMT_BLOCK,
	STMT_NEW,
	STMT_SLEEP,
	STMT_MAIN,
	STMT_SCAN,
	STMT_CAST,
	STMT_WHILE,
	STMT_ARRAYADD,
	STMT_EACH,
} stmt_t;

typedef struct stmt {
	stmt_t kind;
	struct decl *decl;
	expr *init_expr;
	expr *theExpr;
	expr *next_expr;
	struct stmt *body;
	struct stmt *else_body;
	struct stmt *next;
	int memberOf;
}stmt;

/*
	Structure for declaration statements
*/
typedef struct decl {
	char name[100];
	type* theType;
	expr* value;
	stmt* code;	
	struct decl* next;
}decl;


decl* decl_create(char *name, type *theType, expr *value, stmt *code);
stmt* stmt_create(stmt_t kind, decl *theDecl, expr *iexpr, expr* theExpr, expr *nexpr, stmt *body, stmt *ebody, stmt *next, int memberOf);
type* type_create(type_t kind, type *subtype, param_list *params);
expr* expr_create(expr_t kind, expr *left, expr *right, int integer_value, char character_value, const char * string_literal, int memberOf); 
expr* expr_create_string(char* string_literal);

#endif