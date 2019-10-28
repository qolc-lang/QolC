#include "../inc/parserFunctions.h"



/*
	Check for identifier type
*/
int isIdentifierType(char* currentType) {
	if (strcmp(currentType, "identifier") == 0) return 1; return 0;
}

/*
	Check for number type
*/
int isNumberType(char* currentType) {
	if (strcmp(currentType, "number") == 0) return 1; return 0;
}

/*
	Build single expression statement
*/
void BuildSingleExprStatement(char* currentValue, command* commandNode, int statement) {
	expr* theExpr = expr_create_string(currentValue);
	stmt* theStmt;

	switch (statement) {
		case 1 :
			printf("Going to build import statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_IMPORT, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		case 2 :
			printf("Going to build load statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_LOAD, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		case 3 :
			printf("Going to build print statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_PRINT, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		case 4 :
			printf("Going to build sleep statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_SLEEP, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		case 5 :
			printf("Going to build scan statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_SCAN, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		case 6 :
			printf("Going to build delete statement with string : %s\n", currentValue);
			theStmt = stmt_create(STMT_DELETE, NULL, NULL, theExpr, NULL, NULL, NULL, NULL, -1);
			break;
		default : 
			break; 
	}
	push_commandList(commandNode, NULL, theStmt, NULL); 
}


void BuildDoubleExprStatement(parse_state* current, command* commandNode, int statement) {
	char temp[100], temp2[100];
	stmt* theStmt;

	strcpy(temp, current->value);
	current = current->next;
	if (strcmp(current->type, "parenthesis") == 0) {
		current = current->next;
		strcpy(temp2, current->value);
	}
	expr* identifierExpr = expr_create_string(temp);
	expr* typeExpr = expr_create_string(temp2);

	switch (statement) {
		case 1 :
			printf("Going to build cast statement with string : %s\n", current->value);
			theStmt = stmt_create(STMT_CAST, NULL, NULL, identifierExpr, typeExpr, NULL, NULL, NULL, -1);
			break;
		case 2 :
			printf("Going to build array_add statement with string : %s\n", current->value);
			theStmt = stmt_create(STMT_ARRAYADD, NULL, NULL, identifierExpr, typeExpr, NULL, NULL, NULL, -1);
			break;
		default : 
			break; 
	}
	push_commandList(commandNode, NULL, theStmt, NULL); 
}


void BuildDeclarationExprStatement(char* currentValue, command* commandNode, char* temp, int switchType, int typeOfMember) {

	type* theType;

	switch (switchType) {
		case 1 :
			printf("Going to build hexadecimal number declaration statement.\n");
			theType = type_create(TYPE_HEXNUM, NULL, NULL);
			break;
		case 2 :
			printf("Going to build int declaration statement.\n");
			theType = type_create(TYPE_INTEGER, NULL, NULL);
			break;
		case 3 :
			printf("Going to build float declaration statement.\n");
			theType = type_create(TYPE_FLOAT, NULL, NULL);
			break;
		case 4 :
			printf("Going to build character declaration statement.\n");
			theType = type_create(TYPE_CHARACTER, NULL, NULL);
			break;
		case 5 :
			printf("Going to build string declaration statement.\n");
			theType = type_create(TYPE_STRING, NULL, NULL);
			break;
		case 6 :
			printf("Going to build string pointer declaration statement.\n");
			theType = type_create(TYPE_STRING_POINTER, NULL, NULL);
			break;
		case 7 :
			printf("Going to build float pointer declaration statement.\n");
			theType = type_create(TYPE_FLOAT_POINTER, NULL, NULL);
			break;
		case 8 :
			printf("Going to build int pointer declaration statement.\n");
			theType = type_create(TYPE_INT_POINTER, NULL, NULL);
			break;
		case 9 :
			printf("Going to build char pointer declaration statement.\n");
			theType = type_create(TYPE_CHAR_POINTER, NULL, NULL);
			break;
		case 10 :
			printf("Going to build bool declaration statement.\n");
			theType = type_create(TYPE_BOOLEAN, NULL, NULL);
			break;
		case 11:
			printf("Going to build void declaration statement.\n");
			theType = type_create(TYPE_VOID_POINTER, NULL, NULL);
			break;
		case 12:
			printf("Going to build void declaration statement.\n");
			theType = type_create(TYPE_VOID, NULL, NULL);
			break;
		case 13:
			printf("Going to build int array declaration statement.\n");
			theType = type_create(TYPE_INTEGER_ARRAY, NULL, NULL);
			break;
		case 14:
			printf("Going to build string array declaration statement.\n");
			theType = type_create(TYPE_STRING_ARRAY, NULL, NULL);
			break;
		case 15:
			printf("Going to build float array declaration statement.\n");
			theType = type_create(TYPE_FLOAT_ARRAY, NULL, NULL);
			break;
		case 16:
			printf("Going to build void array declaration statement.\n");
			theType = type_create(TYPE_VOID_ARRAY, NULL, NULL);
			break;
		case 17:
			printf("Going to build boolean array declaration statement.\n");
			theType = type_create(TYPE_BOOLEAN_ARRAY, NULL, NULL);
			break;
		case 18:
			printf("Going to build char array declaration statement.\n");
			theType = type_create(TYPE_CHAR_ARRAY, NULL, NULL);
			break;
		case 19:
			printf("Going to build int pointer array declaration statement.\n");
			theType = type_create(TYPE_INT_POINTER_ARRAY, NULL, NULL);
			break;
		case 20:
			printf("Going to build string pointer array declaration statement.\n");
			theType = type_create(TYPE_STRING_POINTER_ARRAY, NULL, NULL);
			break;
		case 21:
			printf("Going to build float pointer array declaration statement.\n");
			theType = type_create(TYPE_FLOAT_POINTER_ARRAY, NULL, NULL);
			break;
		case 22:
			printf("Going to build void pointer array declaration statement.\n");
			theType = type_create(TYPE_VOID_POINTER_ARRAY, NULL, NULL);
			break;
		case 23:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_CHAR_POINTER_ARRAY, NULL, NULL);
			break;
		case 24:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_STRUCT_ARRAY, NULL, NULL);
			break;
		case 25:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_STRUCT_POINTER_ARRAY, NULL, NULL);
			break;
		case 26:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_UNION_ARRAY, NULL, NULL);
			break;
		case 27:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_UNION_POINTER_ARRAY, NULL, NULL);
			break;
		case 28:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_ENUM_ARRAY, NULL, NULL);
			break;
		case 29:
			printf("Going to build char pointer array declaration statement.\n");
			theType = type_create(TYPE_ENUM_POINTER_ARRAY, NULL, NULL);
			break;
		default : 
			break; 
	}

	expr* theExpr = expr_create_string(currentValue);
	decl* theDeclaration = decl_create(temp, theType, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, typeOfMember);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}


void BuildAssignAndCompareExprStatement(char* temp, char* temp2, command* commandNode, int operation, int typeOfMember) {
	
	expr* leftExpr = expr_create_string(temp2);
	expr* rightExpr = expr_create_string(temp);
	expr* theExpr;

	switch (operation) {
		case 1 :
			printf("Going to build add assignment expression statement.\n");
			theExpr = expr_create(EXPR_ADD_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 2 :
			printf("Going to build sub assignment expression statement.\n");
			theExpr = expr_create(EXPR_SUB_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 3 :
			printf("Going to build mul assignment expression statement.\n");
			theExpr = expr_create(EXPR_MUL_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 4 :
			printf("Going to build div assignment expression statement.\n");
			theExpr = expr_create(EXPR_DIV_ASSIGNMENT, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 5:
			printf("Going to build bigger expression statement.\n");
			theExpr = expr_create(EXPR_BIGGER_CMP, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 6:
			printf("Going to build bigger or equal expression statement.\n");
			theExpr = expr_create(EXPR_BIGGEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 7:
			printf("Going to build smaller expression statement.\n");
			theExpr = expr_create(EXPR_SMALLER_CMP, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 8:
			printf("Going to build smaller or equal expression statement.\n");
			theExpr = expr_create(EXPR_SMALLEROREQ_CMP, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		case 9:
			printf("Going to build equal expression statement.\n");
			theExpr = expr_create(EXPR_EQUAL_CMP, leftExpr, rightExpr, 0, '\0', NULL, typeOfMember);
			break;
		default : 
			break; 
	}

	push_commandList(commandNode, NULL, NULL, theExpr);
}


void BuildDeclarationStatement(char* temp, char* temp2, command* commandNode) {
	printf("Going to build add declaration statement.\n");
	expr* theExpr = expr_create_string(temp);
	decl* theDeclaration = decl_create(temp2, NULL, theExpr, NULL);
	stmt* theStmt = stmt_create(STMT_DECL, theDeclaration, NULL, NULL, NULL, NULL, NULL, NULL, -1);
	push_commandList(commandNode, NULL, theStmt, NULL);
}


void BuildNewStatement(parse_state * current, command* commandNode, char* temp) {
	printf("Going to build statement new.\n");
	current = current->next;
	current = current->next;
	expr* expr1 = expr_create_string(temp);
	expr* expr2 = expr_create_string(current->value);
	stmt* theStmt = stmt_create(STMT_NEW, NULL, NULL, expr1, expr2, NULL, NULL, NULL, -1);
	push_commandList(commandNode, NULL, theStmt, NULL); 
}

int CheckIfMemberOfStatement(memberFlags mFlags) {

	if (mFlags.nIsStructMember == 1) return 1;
	else if (mFlags.nIsUnionMember == 1) return 2;
	else if (mFlags.nIsEnumMember == 1) return 3;
	else if (mFlags.nIsAssertMember == 1) return 4;
	else if (mFlags.nIsMainMember == 1) return 5;

	return -1;
}

void ClearFlags(memberFlags* mFlags) {

	if (mFlags->nIsStructMember == 1) mFlags->nIsStructMember = 0;
	if (mFlags->nIsUnionMember == 1) mFlags->nIsUnionMember = 0;
	if (mFlags->nIsEnumMember == 1) mFlags->nIsEnumMember = 0;
	if (mFlags->nIsAssertMember == 1) mFlags->nIsAssertMember = 0;
}

int CheckArrayType(parse_state* current, symbolTable* symTable)
{
	int isPointer = 0;
	int arrayType = 0;
	char trueArrayType[40];

	if (strcmp(current->type, "pointer symbol") == 0)
	{
		printf("Pointer type array.\n");
		isPointer = 1;
	}
	current = current->next;
	printf("The array type : %s\n", current->value);

	if (strcmp(current->type, "end of command") == 0) {
		current = current->next;
		if (SearchSymbolTable_TYPE(current->value, symTable) != NULL)
		{
			strcpy(trueArrayType, SearchSymbolTable_TYPE(current->value, symTable));

			if ((strcmp(trueArrayType, "struct") == 0) && (isPointer != 1)) arrayType = 24;
			else if ((strcmp(trueArrayType, "struct") == 0) && (isPointer == 1)) arrayType = 25;
			else if ((strcmp(trueArrayType, "union") == 0) && (isPointer != 1)) arrayType = 26;
			else if ((strcmp(trueArrayType, "union") == 0) && (isPointer == 1)) arrayType = 27;
			else if ((strcmp(trueArrayType, "enum") == 0) && (isPointer != 1)) arrayType = 28;
			else if ((strcmp(trueArrayType, "enum") == 0) && (isPointer == 1)) arrayType = 29;

			printf("The true array type : %d : %s\n", arrayType, trueArrayType);

			return arrayType;
		}
	}
	else if (strcmp(current->type, "identifier") == 0) {
		if (SearchSymbolTable_TYPE(current->value, symTable) != NULL)
		{
			strcpy(trueArrayType, SearchSymbolTable_TYPE(current->value, symTable));

			if ((strcmp(trueArrayType, "struct") == 0) && (isPointer != 1)) arrayType = 24;
			else if ((strcmp(trueArrayType, "struct") == 0) && (isPointer == 1)) arrayType = 25;
			else if ((strcmp(trueArrayType, "union") == 0) && (isPointer != 1)) arrayType = 26;
			else if ((strcmp(trueArrayType, "union") == 0) && (isPointer == 1)) arrayType = 27;
			else if ((strcmp(trueArrayType, "enum") == 0) && (isPointer != 1)) arrayType = 28;
			else if ((strcmp(trueArrayType, "enum") == 0) && (isPointer == 1)) arrayType = 29;

			printf("The true array type : %d : %s\n", arrayType, trueArrayType);

			return arrayType;
		}
	}
	else if (strcmp(current->type, "pointer symbol") == 0) {
		current = current->next;
		isPointer = 1;
		if (SearchSymbolTable_TYPE(current->value, symTable) != NULL)
		{
			strcpy(trueArrayType, SearchSymbolTable_TYPE(current->value, symTable));
			if ((strcmp(trueArrayType, "struct") == 0) && (isPointer == 1)) arrayType = 25;
			else if ((strcmp(trueArrayType, "union") == 0) && (isPointer == 1)) arrayType = 27;
			else if ((strcmp(trueArrayType, "enum") == 0) && (isPointer == 1)) arrayType = 29;
			printf("The true array type : %d : %s\n", arrayType, trueArrayType);
			return arrayType;
		}
	}

	if ((strcmp(current->value, "int") == 0) && (isPointer != 1)) arrayType = 13;
	else if ((strcmp(current->value, "int") == 0) && (isPointer == 1)) arrayType = 19;
	else if ((strcmp(current->value, "string") == 0) && (isPointer != 1)) arrayType = 14;
	else if ((strcmp(current->value, "string") == 0) && (isPointer == 1)) arrayType = 20;
	else if ((strcmp(current->value, "float") == 0) && (isPointer != 1)) arrayType = 15;
	else if ((strcmp(current->value, "float") == 0) && (isPointer == 1)) arrayType = 21;
	else if ((strcmp(current->value, "void") == 0) && (isPointer != 1)) arrayType = 16;
	else if ((strcmp(current->value, "void") == 0) && (isPointer == 1)) arrayType = 22;
	if (strcmp(current->value, "bool") == 0) arrayType = 17;
	else if ((strcmp(current->value, "char") == 0) && (isPointer != 1)) arrayType = 18;
	else if ((strcmp(current->value, "char") == 0) && (isPointer == 1)) arrayType = 23;

	return arrayType;
}