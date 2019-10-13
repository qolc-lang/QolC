#include "../inc/parserFunctions.h"
#include "../inc/symbol_table.h"

void Insert(parse_state* node, symbolTable* theSymbolTable) {
	int labelFound = 0;
	parse_state* current = node;

	labelFound = Search(current->value, theSymbolTable);
	if (labelFound == 1)
		printf("The label exists already in the symbol table.\nDuplicate can’t be inserted.\n");
	else
	{
		while (theSymbolTable->next != NULL) {
			theSymbolTable = theSymbolTable->next;
		}
		theSymbolTable->next = malloc(sizeof(symbolTable));
		strcpy(theSymbolTable->next->variableName, current->value);
		strcpy(theSymbolTable->next->variableType, current->type);
		theSymbolTable->next->isAlreadyDeclared = 1;
		theSymbolTable->next->next = NULL;
		printf("Label inserted in symbol table : %s\n", theSymbolTable->next->variableName);
	}
}

void Display() {

}

void Delete() {

}

int Search(char lab[], symbolTable* theSymbolTable) {

	int flag = 0;
	while (theSymbolTable != NULL) {
		if (strcmp(theSymbolTable->variableName, lab) == 0)
			flag = 1;
		theSymbolTable = theSymbolTable->next;
	}
	return flag;
}

void Modify() {

}