#include "../inc/parse_state.h"

parse_state* make_parse_stateList(lexer_node* tokens) {

	parse_state* my_parse_state = malloc(sizeof(parse_state));

	printf("in parse_state\n");

	lexer_node* current = tokens;
	while (current != NULL) {
		printf("the tok to be fixed : %s\n", current->token);
		current = current->next;
	}

	return NULL;
}