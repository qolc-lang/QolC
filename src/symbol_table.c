#include "../inc/parserFunctions.h"

void InsertSymbolTable(parse_state* node, char* scope, symbolTable* theSymbolTable) {
	int labelFound = 0;
	parse_state* current = node;

	labelFound = SearchSymbolTable(current->value, theSymbolTable);
	if (labelFound == 1)
		printf("The label exists already in the symbol table.\nDuplicate can�t be inserted.\n");
	else
	{
		while (theSymbolTable->next != NULL) {
			theSymbolTable = theSymbolTable->next;
		}
		theSymbolTable->next = malloc(sizeof(symbolTable));
		strcpy(theSymbolTable->next->variableName, current->value);
		strcpy(theSymbolTable->next->variableType, current->type);
		strcpy(theSymbolTable->next->scope, scope);
		theSymbolTable->next->isAlreadyDeclared = 1;
		theSymbolTable->next->next = NULL;
		printf("Label inserted in symbol table : %s\n", theSymbolTable->next->variableName);
	}
}

void DisplaySymbolTable(symbolTable* theSymbolTable) {
	while (theSymbolTable != NULL) {
		printf("----------------------------------------------------------\n");
		printf("Symbol's name : %s\n", theSymbolTable->variableName);
		printf("Symbol's type : %s\n", theSymbolTable->variableType);
		printf("Symbol's scope : %s\n", theSymbolTable->scope);
		theSymbolTable = theSymbolTable->next;
	}
}

int SearchSymbolTable(char* lab, symbolTable* theSymbolTable) {
	int flag = 0;
	while (theSymbolTable != NULL) {
		if (strcmp(theSymbolTable->variableName, lab) == 0)
			flag = 1;
		theSymbolTable = theSymbolTable->next;
	}
	return flag;
}

char* SearchSymbolTable_TYPE(char* lab, symbolTable* theSymbolTable) {
	while (theSymbolTable != NULL) {
		if (strcmp(theSymbolTable->variableName, lab) == 0)
			return theSymbolTable->variableType;
		theSymbolTable = theSymbolTable->next;
	}
	return NULL;
}