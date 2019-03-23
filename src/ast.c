#include "../inc/ast.h"

struct decl* decl_create(char *name, struct type *type, struct expr *value, struct stmt *code) {
	struct decl* d = malloc(sizeof(*d));
	d->name = name;
	d->type = type;
	d->value = value;
	d->code = code;	
	d->next = NULL;
	return d;
}

struct stmt* stmt_create(stmt_t kind, struct decl *decl, struct expr *iexpr, struct expr *expr, struct expr *nexpr, struct stmt *body, struct stmt *ebody, struct stmt *next) {
	printf("inside stmt_create\n");
	struct stmt* s = malloc(sizeof(*s));
	s->kind = kind;
	s->decl = decl;
	s->init_expr = iexpr;
	s->expr = expr;
	s->next_expr = nexpr;
	s->body = body;
	s->else_body = ebody;
	s->next = NULL;
	printf("exiting stmt_create\n");
	return s;
}

struct expr* expr_create(expr_t kind, struct expr *left, struct expr *right, const char *name, int integer_value, const char * string_literal) {
	struct expr* e = malloc(sizeof(*e));
	e->kind = kind;
	e->left = left;
	e->right = right;
	e->name = name;
	e->integer_value = integer_value;
	e->string_literal = string_literal;
	return e;
}

struct type* type_create(type_t kind, struct type *subtype, struct param_list *params) {
	struct type* t = malloc(sizeof(*t));
	t->kind = kind;
	t->subtype = subtype;
	t->params = params;
	return t;
}

struct expr* expr_create_integer(int i) {
	struct expr* e = malloc(sizeof(*e));
	e->kind = EXPR_INTEGER_LITERAL;
	e->integer_value = i;
	return e;
}

struct expr* expr_create_char(char c) {
	struct expr* e = malloc(sizeof(*e));
	e->kind = EXPR_CHAR_LITERAL;
	e->character_value = c;
	return e;
}