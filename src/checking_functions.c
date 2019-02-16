#include "../inc/headers.h"
#include "../inc/checking_functions.h"

//@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for keyword @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@
int isKeyword(char buffer[]){
	char keywords[29][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while",
							"new", "delete", "defer", "print", "break",
							"continue", "then", "import", "load", "null",
							"main", "to", "cast", "sleep", "bool",
							"else_if", "array_add", "true", "false"};
	int i, flag = 0;
	for(i = 0; i < 29; ++i){
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
int isNumber(char buffer[], int pos, int len){
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (isdigit(buffer[pos])) {
		buf[j] = buffer[pos];
		++j;
		++pos;
		++count;
		do {
			if (pos < len) {
				if (isdigit(buffer[pos]) || buffer[pos] == '.') {
					++count;
					buf[j] = buffer[pos];
					++pos;
					++j;
				}
				else if (buffer[pos] == 'x') {
					if (buf [0] == '0') {
						++count;
						buf[j] = buffer[pos];
						++pos;
						++j;
						while (isalnum(buffer[pos]))
						{
							++count;
							buf[j] = buffer[pos];
							++pos;
							++j;
						}
					}
				}
				else {

				}
			}
		}while (isdigit(buffer[pos]) || buffer[pos] == '.' || buffer[pos] == 'x');
		if (buf[1] == 'x') {
			printf("@@@@@@@@ : hexadecimal number : %s\n", buf);
		}
		else {
			printf("@@@@@@@@ : number : %s\n", buf);
		}

		return count;
	}
	return -1;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@ Check for operator @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@
int isOperator(char buffer) {
	char operators[10][3] = {"/", "%", "="};
	size_t op_pos;

	//check if it is in operators
	for (op_pos = 0; op_pos < 3; ++op_pos){
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
			else if (buffer[pos] == '/'){
				++count;
				printf("@@@@@@@@ : comment end : @/ \n");
				return count;
			}
			else if (buffer[pos] == '}'){
				++count;
				printf("@@@@@@@@ : block end : @} \n");
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
int isSpecialSymbol(char buffer[], int pos, int len, int *flag) {
	int count = 0;
	char buf[len];
	int j = 0;
	memset(buf, 0, sizeof(buf));

	if (buffer[pos] == '#') {
		printf("@@@@@@@@ : special symbol : # \n");
		return 1;
	}

	if (buffer[pos] == '[') {
		printf("@@@@@@@@ : array start : [ \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == ']') {
		printf("@@@@@@@@ : array end : ] \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == '!') {
		printf("@@@@@@@@ : special symbol : ! \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == '(') {
		printf("@@@@@@@@ : parenthesis start : ( \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == ')') {
		printf("@@@@@@@@ : parenthesis end : ) \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == '&') {
		printf("@@@@@@@@ : reference symbol : & \n");
		return 1;
	}

	if (buffer[pos] == ',') {
		printf("@@@@@@@@ : comma : , \n");
		return 1;
	}

	if (buffer[pos] == '^'){
		printf("@@@@@@@@ : pointer symbol : ^ \n");
		*flag = 2;
		return 1;
	}

	if (buffer[pos] == '/'){
		++pos;
		++count;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				printf("@@@@@@@@ : comment start : /@ \n");
				return count;
			}
		}
	}

	if (buffer[pos] == '{'){
		++pos;
		++count;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				printf("@@@@@@@@ : block start : {@ \n");
				return count;
			}
		}
	}

	if (buffer[pos] == '+'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '+'){
				++pos;
				++count;
				printf("@@@@@@@@ : operator : ++ \n");
				*flag = 1;
				return count;
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				printf("@@@@@@@@ : operator : += \n");
				*flag = 1;
				return count;
			}
			else {
				printf("@@@@@@@@ : operator : + \n");
				*flag = 1;
				return count;
			}
		}
	}

	if (buffer[pos] == '-'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '-'){
				++pos;
				++count;
				if (pos < len) {
					if (buffer[pos] == '-'){
						++pos;
						++count;
						printf("@@@@@@@@ : operator : --- \n");
						*flag = 1;
						return count;
					}
					else {
						printf("@@@@@@@@ : operator : -- \n");
						*flag = 1;
						return count;
					}
				}
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				printf("@@@@@@@@ : operator : -= \n");
				*flag = 1;
				return count;
			}
			else if (buffer[pos] == '>'){
				++pos;
				++count;
				printf("@@@@@@@@ : operator : -> \n");
				*flag = 1;
				return count;
			}
			else {
				printf("@@@@@@@@ : operator : - \n");
				*flag = 1;
				return count;
			}
		}
	}

	if (buffer[pos] == '*'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("@@@@@@@@ : operator : *= \n");
			*flag = 1;
			return count;
		}
		else {
			printf("@@@@@@@@ : operator : * \n");
			*flag = 1;
			return count;
		}
	}

	if (buffer[pos] == '<'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("@@@@@@@@ : operator : <= \n");
			*flag = 1;
			return count;
		}
		else {
			printf("@@@@@@@@ : operator : < \n");
			*flag = 1;
			return count;
		}
	}

	if (buffer[pos] == '>'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("@@@@@@@@ : operator : >= \n");
			*flag = 1;
			return count;
		}
		else {
			printf("@@@@@@@@ : operator : > \n");
			*flag = 1;
			return count;
		}
	}

	if (buffer[pos] == '.'){
		++pos;
		if (buffer[pos] == '.'){
			++pos;
			++count;
			printf("@@@@@@@@ : operator : .. \n");
			*flag = 1;
			return count;
		}
		else {
			printf("@@@@@@@@ : operator : . \n");
			*flag = 1;
			return count;
		}
	}

	return -1;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@  Check for character     @@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
int isChar(char buffer[], int pos, int len) {
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (buffer[pos] == '\'') {
		buf[j] = buffer[pos];
		++j;
		++pos;
		do {
			if (pos < len) {
				++count;
				buf[j] = buffer[pos];
				++j;
			}
			++pos;
		}while (buffer[pos] != ';');
		printf("@@@@@@@@ : character : %s\n", buf);
		++count;
		return count;
	}
	return -1;
}
