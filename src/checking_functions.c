#include "../inc/headers.h"
#include "../inc/checking_functions.h"

//@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for keyword @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@
int isKeyword(char buffer[]){
	char keywords[19][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while",
							"new", "delete", "defer", "print", "break",
							"continue", "then", "import", "load"};
	int i, flag = 0;
	for(i = 0; i < 19; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	return flag;
}

//@@@@@@@@@@@@@@@@@@@@@@
//@@ Check for number @@
//@@@@@@@@@@@@@@@@@@@@@@
int isNumber(char buffer[]){
	int i, flag = 0;
	for (i = 0; i < strlen(buffer); ++i){
		if (isdigit(buffer[i])){
			flag = 1;
			continue;
		}
		else{
			flag = 0;
			break;
		}
	}
	return flag;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for operator @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@
int isOperator(char buffer) {
	char operators[10][3] = {"+", "-", "*", "/", "%", "="};
	size_t op_pos;

	//check if it is in operators
	for (op_pos = 0; op_pos < 6; ++op_pos){
		if (buffer == *operators[op_pos]){
			printf("@@@@@@@@ : operator : %c \n", buffer);
			return 1;
		}
	}
	return 0;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@
//@ Check for @ operations @
//@@@@@@@@@@@@@@@@@@@@@@@@@@
int isAtOperator(char buffer[], int pos, int len) {
	int count = 0;
	if (buffer[pos] == '@'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '='){
				++pos;
				++count;
				if (buffer[pos] == '='){
					++count;
					printf("@@@@@@@@ : operator : @== \n");
					return count;
				}
				else{
					printf("@@@@@@@@ : operator : @= \n");
					return count;
				}
			}
			else if (buffer[pos] == '@'){
				++count;
				printf("@@@@@@@@ : operator : @@ \n");
				return count;
			}
			else if (buffer[pos] == '.'){
				++count;
				printf("@@@@@@@@ : operator : @. \n");
				return count;
			}
			else {
				printf("@@@@@@@@ : operator : @ \n");
				return count;
			}
		}
	}
	return -1;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for string literal @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
int isStringLiteral(char buffer[], int pos, int len) {
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (buffer[pos] == '"') {
		++pos;
		do {
			if (pos < len) {
				++count;
				buf[j++] = buffer[pos];
			}
			++pos;
		}while (buffer[pos] != '"');
		printf("@@@@@@@@ : string literal : \"%s\"\n", buf);
		++count;
		return count;
	}
	return -1;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for special symbol @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
int isSpecialSymbol(char buffer[], int pos, int len) {
	int count = 0;
	char buf[len];
	int j = 0;
	memset(buf, 0, sizeof(buf));

	if (buffer[pos] == '#')
		return 1;

	if (buffer[pos] == '/'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				printf("@@@@@@@@ : comment : /@ \n");
				return count;
			}
		}
	}

	return -1;
}