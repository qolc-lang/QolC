#include "../inc/ast.h"

decl* decl_create(char *name, type *type, expr *value, stmt *code) {
	decl* d = malloc(sizeof(*d));
	d->name = name;
	d->type = type;
	d->value = value;
	d->code = code;	
	d->next = NULL;
	return d;
}

stmt* stmt_create(stmt_t kind, decl *decl, expr *iexpr, expr *theExpr, expr *nexpr, stmt *body, stmt *ebody, stmt *next) {
	printf("inside stmt_create\n");
	stmt* s = malloc(sizeof(*s));
	s->kind = kind;
	s->decl = decl;
	s->init_expr = iexpr;
	s->expr = theExpr;
	s->next_expr = nexpr;
	s->body = body;
	s->else_body = ebody;
	s->next = NULL;
	printf("exiting stmt_create\n");
	return s;
}

expr* expr_create(expr_t kind, expr *left, expr *right, const char *name, int integer_value, const char * string_literal) {
	expr* e = malloc(sizeof(*e));
	e->kind = kind;
	e->left = left;
	e->right = right;
	e->name = name;
	e->integer_value = integer_value;
	e->string_literal = string_literal;
	return e;
}

type* type_create(type_t kind, type *subtype, param_list *params) {
	type* t = malloc(sizeof(*t));
	t->kind = kind;
	t->subtype = subtype;
	t->params = params;
	return t;
}

expr* expr_create_integer(int i) {
	expr* e = malloc(sizeof(*e));
	e->kind = EXPR_INTEGER_LITERAL;
	e->integer_value = i;
	return e;
}

expr* expr_create_char(char c) {
	expr* e = malloc(sizeof(*e));
	e->kind = EXPR_CHAR_LITERAL;
	e->character_value = c;
	return e;
}