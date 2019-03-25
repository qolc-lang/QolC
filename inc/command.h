#ifndef _COMMAND_H_
#define _COMMAND_H_

#include "ast.h"

typedef struct command
{
	decl* aDecl;
	stmt* aStmt;
	expr* anExpr;
	struct command* next;
}command;

void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr);

#endif