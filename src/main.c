#include "../inc/checking_functions.h"
#include "../inc/parser.h"

/*
	Creating a lexer and a parse node and then passing the appropriate output 
	in parseProgram function to be parsed
*/
int main(int argc, char const *argv[])
{
	lexer_node * myNode = malloc(sizeof(lexer_node));
	parse_state* myState = malloc(sizeof(parse_state));

	char fileName[50];
	char outputFile[50];
	memset(fileName, 0, sizeof(fileName));
	memset(outputFile, 0, sizeof(outputFile));

	strcpy(fileName, "input/input_program.txt");
	strcpy(outputFile, "out/output_program.txt");

	*myNode = lex(fileName);
	print_lexerList(myNode, outputFile);

	myState = make_parse_stateList(myNode);
	parseProgram(myState);
	
	printf("Exiting program\n");
	return 0;
}