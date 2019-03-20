#ifndef _AST_H_
#define _AST_H_

#include "lexer_node.h"

// typedef struct Exp {
//   enum { int_exp, string_exp, var_exp,
//          binary_exp, unary_exp, call_exp } tag;
//   union { int                                      intExp;
//           string                                   stringExp;
//           string                                   varExp;
//           struct { string           operator;
//                    struct Exp*      left;
//                    struct Exp*      right; }       binaryExp;
//           struct { string           operator;
//                    struct Exp*      operand; }     unaryExp;
//           struct { string           name;
//                    struct Exp_list* arguments; }   callExp;
//       } op;
// } ast;


// typedef struct Exp_list { 
//   ast*             elem;
//   struct Exp_list* next;
// } ast_list;
typedef enum {
	TYPE_VOID,
	TYPE_BOOLEAN,
	TYPE_CHARACTER,
	TYPE_INTEGER,
	TYPE_STRING,
	TYPE_ARRAY,
	TYPE_FUNCTION
} type_t;

struct type {
	type_t kind;
	struct type *subtype;
	struct param_list *params;
};

struct param_list {
	char *name;
	struct type *type;
	struct param_list *next;
};

typedef enum {
	EXPR_ADD,
	EXPR_SUB,
	EXPR_MUL,
	EXPR_DIV,
	EXPR_NAME,
	EXPR_INTEGER_LITERAL,
	EXPR_CHAR_LITERAL,
	EXPR_STRING_LITERAL,
} expr_t;

struct expr {
	expr_t kind;
	struct expr *left;
	struct expr *right;
	const char *name;
	int integer_value;
	char character_value;
	const char * string_literal;
};

typedef enum {
	STMT_DECL,
	STMT_EXPR,
	STMT_IF_ELSE,
	STMT_FOR,
	STMT_PRINT,
	STMT_RETURN,
	STMT_BLOCK
} stmt_t;

struct stmt {
	stmt_t kind;
	struct decl *decl;
	struct expr *init_expr;
	struct expr *expr;
	struct expr *next_expr;
	struct stmt *body;
	struct stmt *else_body;
	struct stmt *next;
};

struct decl {
	char* name;
	struct type* type;
	struct expr* value;	//if declaration is an expression
	struct stmt* code;	//if declaration is a function
	struct decl* next;
};

struct decl* decl_create(char *name, struct type *type, struct expr *value, struct stmt *code);
struct stmt* stmt_create(stmt_t kind, struct decl *decl, struct expr *iexpr, struct expr *expr, struct expr *nexpr, struct stmt *body, struct stmt *ebody, struct stmt *next);
struct expr* expr_create(expr_t kind, struct expr *left, struct expr *right, const char *name, int integer_value, const char * string_literal); 
struct type* type_create(type_t kind, struct type *subtype, struct param_list *params);


struct expr* expr_create_integer(int i);
struct expr* expr_create_char(char c);

#endif