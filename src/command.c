#include "command.h"


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