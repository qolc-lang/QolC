#ifndef _SYMBOL_TABLE_
#define _SYMBOL_TABLE_

typedef struct symbolTable {
	char variableName[100];
	char variableType[100];
	char scope[100];
	int isAlreadyDeclared;
	struct symbolTable* next;
}symbolTable;

void InsertSymbolTable(parse_state* node, char* scope, symbolTable* theSymbolTable);
void DisplaySymbolTable(symbolTable* theSymbolTable);
int SearchSymbolTable(char* lab, symbolTable* theSymbolTable);


#endif