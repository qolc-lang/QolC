#include "lexer_node.h"

void print_lexerList(lexer_node* node) {
	lexer_node * current = node;
	int counter = 0;
	while (current != NULL) {
		++counter;
		printf("counter %d - %s : \n", counter, current->token);
		current = current->next;
	}
}

void push_lexerList(lexer_node* node, char token[]) {
	printf("in push list\n");

    lexer_node * current = node;
    while (current->next != NULL) {
    	//printf("in current next\n");
        current = current->next;
    }
    current->next = malloc(sizeof(lexer_node));
    strcpy(current->next->token, token);
    current->next->next = NULL;
}

int pop_lexerList() {
	printf("in pop list\n");
}