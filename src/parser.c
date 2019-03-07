#include "../inc/parser.h"

void parse(lexer_node* node) {
	printf("in parser\n");
	lexer_node * current = node;
	int counter = 0;

	while (current != NULL) 
	{
		++counter;
		printf("counter-%d : %s\n", counter, current->token);
		current = current->next;
	}
}