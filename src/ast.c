#include "../inc/ast.h"

/*
	Creating and returning a declaration
*/
decl* decl_create(char *name, type *type, expr *value, stmt *code) {
	decl* d = malloc(sizeof(*d));
	memset(d->name, 0, sizeof(d->name));
	strcpy(d->name, name);
	d->theType = type;
	d->value = value;
	d->code = code;	
	d->next = NULL;
	return d;
}

/*
	Creating and returning a statement
*/
stmt* stmt_create(stmt_t kind, decl *decl, expr *iexpr, expr *theExpr, expr *nexpr, stmt *body, stmt *ebody, stmt *next, int memberOf) {
	stmt* s = malloc(sizeof(*s));
	s->kind = kind;
	s->decl = decl;
	s->init_expr = iexpr;
	s->theExpr = theExpr;
	s->next_expr = nexpr;
	s->body = body;
	s->else_body = ebody;
	s->next = NULL;
	s->memberOf = memberOf;
	return s;
}

/*
	Creating and returning an expression
*/
expr* expr_create(expr_t kind, expr *left, expr *right, int integer_value, char character_value, const char * string_literal, int memberOf) {
	expr* e = malloc(sizeof(*e));
	e->kind = kind;
	e->left = left;
	e->right = right;
	e->integer_value = integer_value;
	e->character_value = character_value;
	e->string_literal = malloc(sizeof(char) * 100);
	if (string_literal != NULL)
		strcpy(e->string_literal, string_literal);
	e->memberOf = memberOf;
	return e;
}

/*
	Creating and returning a type
*/
type* type_create(type_t kind, type *subtype, param_list *params) {
	type* t = malloc(sizeof(*t));
	t->kind = kind;
	t->subtype = subtype;
	t->params = params;
	return t;
}

/*
	Creating and returning a string expression
*/
expr* expr_create_string(char* string_literal) {
	expr* e = malloc(sizeof(expr));
	e->kind = EXPR_STRING_LITERAL;
	e->string_literal = malloc(sizeof(char) * 100);
	strcpy(e->string_literal, string_literal);
	return e;
}