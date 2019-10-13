#ifndef _SYMBOL_TABLE_
#define _SYMBOL_TABLE_

typedef struct symbolTable {
	char variableName[100];
	char variableType[100];
	int isAlreadyDeclared;
	struct symbolTable* next;
}symbolTable;

void Insert(parse_state* node, symbolTable* theSymbolTable);
void Display();
void Delete();
int Search(char lab[], symbolTable* theSymbolTable);
void Modify();


#endif