#include "ast.h"

struct decl* decl_create(char *name, struct type *type, struct expr *value, struct stmt *code) {
	struct decl* d = malloc(sizeof(*d));
	d->name = name;
	d->type = type;
	d->value = value;
	d->code = code;	
	d->next = NULL;
	return d;
}