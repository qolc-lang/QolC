#include "../inc/ast.h"

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

stmt* stmt_create(stmt_t kind, decl *decl, expr *iexpr, expr *theExpr, expr *nexpr, stmt *body, stmt *ebody, expr_list* expressionList, stmt *next) {
	stmt* s = malloc(sizeof(*s));
	s->kind = kind;
	s->decl = decl;
	s->init_expr = iexpr;
	s->theExpr = theExpr;
	s->next_expr = nexpr;
	s->body = body;
	s->else_body = ebody;
	s->expressionList = expressionList;
	s->next = NULL;
	return s;
}

expr* expr_create(expr_t kind, expr *left, expr *right, int integer_value, char character_value, const char * string_literal) {
	expr* e = malloc(sizeof(*e));
	e->kind = kind;
	e->left = left;
	e->right = right;
	e->integer_value = integer_value;
	e->character_value = character_value;
	e->string_literal = malloc(sizeof(char) * 100);
	if (string_literal != NULL)
		strcpy(e->string_literal, string_literal);
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

expr* expr_create_string(char* string_literal) {
	expr* e = malloc(sizeof(expr));
	e->kind = EXPR_STRING_LITERAL;
	e->string_literal = malloc(sizeof(char) * 100);
	strcpy(e->string_literal, string_literal);
	return e;
}

expr* expr_create_string_id(char* string_id) {
	expr* e = malloc(sizeof(expr));
	e->kind = EXPR_STRING_ID;
	e->string_id = malloc(sizeof(char) * 100);
	strcpy(e->string_id, string_id);
	return e;
}

void push_expressionList(expr_list* node, expr* theExpr) {
    expr_list* current = node;
    while (current->next != NULL) {
        current = current->next;
    }
    current->next = malloc(sizeof(expr_list));
    current->next->theExpr = theExpr;
    current->next->next = NULL;
}