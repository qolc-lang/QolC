#include "../inc/checking_functions.h"

int main(int argc, char const *argv[])
{
	lexer_node * myNode = malloc(sizeof(lexer_node) * 200);

	char fileName[50];
	char outputFile[50];
	memset(fileName, 0, sizeof(fileName));
	memset(outputFile, 0, sizeof(outputFile));

	strcpy(fileName, "input/input_program.txt");
	strcpy(outputFile, "out/output_program.txt");

	*myNode = lex(fileName);
	print_lexerList(myNode, outputFile);

	printf("Exiting program\n");
	return 0;
}