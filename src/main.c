#include "../inc/headers.h"
#include "../inc/checking_functions.h"

int main(int argc, char const *argv[])
{
	char fileName[50];
	memset(fileName, 0, sizeof(fileName));
	strcpy(fileName, "input/input_program.txt");

	lex(fileName);

	return 0;
}