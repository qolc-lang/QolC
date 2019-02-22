#include "../inc/lexer_node.h"
#include "../inc/checking_functions.h"

int main(int argc, char const *argv[])
{
	lexer_node * myNode = malloc(sizeof(lexer_node));
	print_lexerList();

	char fileName[50];
	memset(fileName, 0, sizeof(fileName));
	strcpy(fileName, "input/input_program.txt");

	lex(fileName);

	return 0;
}