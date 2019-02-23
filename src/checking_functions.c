#include "../inc/lexer_node.h"
#include "../inc/checking_functions.h"

//Check for keyword 
int isKeyword(char buffer[]){
	char keywords[28][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while",
							"new", "delete", "defer", "print", "break",
							"continue", "then", "import", "load", "null",
							"main", "to", "cast", "sleep", "bool",
							"array_add", "true", "false"};
	int i, flag = 0;
	for(i = 0; i < 28; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	return flag;
}

//Check for number
int isNumber(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer){
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
			}
		}while (isdigit(buffer[pos]) || buffer[pos] == '.' || buffer[pos] == 'x');
		if (buf[1] == 'x') {
			//printf("?hexadecimal number, %s?\n", buf);
			strcpy(temp_buffer, "?hexadecimal number, ");
			strcat(temp_buffer, buf);
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
		}
		else {
			//printf("?number, %s?\n", buf);
			strcpy(temp_buffer, "?hexadecimal number, ");
			strcat(temp_buffer, buf);
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
		}
		return count;
	}
	return -1;
}

//Check for operator
int isOperator(char buffer) {
	char operators[10][3] = {"/", "%", "="};
	size_t op_pos;

	for (op_pos = 0; op_pos < 3; ++op_pos){
		if (buffer == *operators[op_pos]){
			printf("?operator, %c?\n", buffer);
			return 1;
		}
	}
	return 0;
}

//Check for @ operations
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
					printf("?operator, @==?\n");
					return count;
				}
				else{
					printf("?operator, @=?\n");
					return count;
				}
			}
			else if (buffer[pos] == '@'){
				++count;
				printf("?operator, @@?\n");
				return count;
			}
			else if (buffer[pos] == '.'){
				++count;
				printf("?operator, @.?\n");
				return count;
			}
			else if (buffer[pos] == '/'){
				++count;
				printf("?comment end, @/?\n");
				return count;
			}
			else if (buffer[pos] == '}'){
				++count;
				printf("?block end, @}?\n");
				return count;
			}
			else {
				printf("?operator, @?\n");
				return count;
			}
		}
	}
	return -1;
}

//Check for string literal
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
		printf("?string literal, \"%s\"?\n", buf);
		++count;
		return count;
	}
	return -1;
}

//Check for special symbol
int isSpecialSymbol(char buffer[], int pos, int len, int *flag) {
	int count = 0;
	char buf[len];
	int j = 0;
	int temp1 = 1;
	int temp2 = 2;
	int temp10 = 10;
	memset(buf, 0, sizeof(buf));

	if (buffer[pos] == '#') {
		printf("?special symbol, #?\n");
		*flag = temp10;
		return 1;
	}

	if (buffer[pos] == '[') {
		printf("?array start, [?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == ']') {
		printf("?array end, ]?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '!') {
		printf("?special symbol, !?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '(') {
		printf("?parenthesis start, (?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == ')') {
		printf("?parenthesis end, )?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '&') {
		printf("?reference symbol, &?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == ',') {
		printf("?comma, ,?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '^'){
		printf("?pointer symbol, ^?\n");
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '/'){
		++pos;
		++count;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				printf("?comment start, /@?\n");
				*flag = temp2;
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
				printf("?block start, {@?\n");
				*flag = temp10;
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
				printf("?operator, ++?\n");
				*flag = temp1;
				return count;
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				printf("?operator, +=?\n");
				*flag = temp1;
				return count;
			}
			else {
				printf("?operator, +?\n");
				*flag = temp1;
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
						printf("?operator, ---?\n");
						*flag = temp1;
						return count;
					}
					else {
						printf("?operator, --?\n");
						*flag = temp1;
						return count;
					}
				}
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				printf("?operator, -=?\n");
				*flag = temp1;
				return count;
			}
			else if (buffer[pos] == '>'){
				++pos;
				++count;
				printf("?operator, ->?\n");
				*flag = temp1;
				return count;
			}
			else {
				printf("?operator, -?\n");
				*flag = temp1;
				return count;
			}
		}
	}

	if (buffer[pos] == '*'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("?operator, *=?\n");
			*flag = temp1;
			return count;
		}
		else {
			printf("?operator, *?\n");
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '<'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("?operator, <=?\n");
			*flag = temp1;
			return count;
		}
		else {
			printf("?operator, <?\n");
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '>'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			printf("?operator, >=?\n");
			*flag = temp1;
			return count;
		}
		else {
			printf("?operator, >?\n");
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '.'){
		++pos;
		if (buffer[pos] == '.'){
			++pos;
			++count;
			printf("?operator, ..?\n");
			*flag = temp1;;
			return count;
		}
		else {
			printf("?operator, .?\n");
			*flag = temp1;
			return count;
		}
	}

	return -1;
}

//Check for character
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
		printf("?character, %s?\n", buf);
		++count;
		return count;
	}
	return -1;
}
