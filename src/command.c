#include "command.h"


void push_commandList(command* commandNode, decl* aDecl, stmt* aStmt, expr* anExpr) {
    command* current = commandNode;
    while (current->next != NULL) {
    	current = current->next;
    }
    current->next = malloc(sizeof(command));
    // strcpy(current->next->type, type);
    // strcpy(current->next->value, value);
    // current->next->next = NULL;
}