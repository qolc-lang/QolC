#include "../inc/headers.h"
#include "../inc/checking_functions.h"

int isKeyword(char buffer[]){
	char keywords[10][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while"};
	int i, flag = 0;
	
	for(i = 0; i < 10; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	
	return flag;
}

int isNumber(char buffer[]) {

	int i, flag = 0;
	for (i = 0; i < strlen(buffer); ++i)
	{
		//printf("i pos the digit : %c\n", buffer[i]);
		if (isdigit(buffer[i])) {
			flag = 1;
			continue;
		}
		else {
			flag = 0;
			break;
		}
	}
	return flag;
}

int isOperator(char buffer) {
	char operators[10][3] = {"+", "-", "*", "/", "%", "#", "="};
	size_t op_pos;

	//check if it is in operators
	for (op_pos = 0; op_pos < 7; ++op_pos)
	{
		//printf("op_pos : %c\n", *operators[op_pos]);
		if (buffer == *operators[op_pos]) {
			printf("@@@@@@@@ : %c is operator\n", buffer);
			return 1;
		}
	}

	return 0;
}

int isAtOperator(char buffer[], int pos, int len) {
	//check for @ operations
	int count = 0;
	if (buffer[pos] == '@') {
		++pos;
		if (pos < len) {
			if (buffer[pos] == '=') {
				++count;
				printf("@@@@@@@@ : found our operator @= \n");
				return count;
			}
			else {
				printf("@@@@@@@@ : found our operator @ \n");
				return count;
			}
		}
	}
	return -1;
}


int isStringLiteral(char buffer[], int pos, int len) {
	//check for "" string
	int count = 0;
	char buf[len];
	int j = 0;
	if (buffer[pos] == '"') {
		++pos;
		do {
			if (pos < len) {
				++count;
				buf[j++] = buffer[pos];
			}
			++pos;
		}while (buffer[pos] != '"');
		printf("@@@@@@@@ : found a string literal : %s\n", buf);
		++count;
		return count;
	}
	return -1;
}