#include "../inc/parse_state.h"

parse_state* make_parse_stateList(lexer_node* tokens) {
	parse_state* my_parse_state = malloc(sizeof(parse_state) * 200);
	my_parse_state->next = malloc(sizeof(parse_state));
	int counter = 0;
	char *theSplit;
	lexer_node* current = tokens;
	
	//the first is the head
	current = current->next;

	while (current != NULL)  {

		printf("@@ the token : %s\n", current->token);
		
		while (my_parse_state->next != NULL) {
			my_parse_state = my_parse_state->next;
		}
		my_parse_state->next = malloc(sizeof(parse_state));
		my_parse_state->next->pos = counter;
		printf("	---my_parse_state->next->pos : %d\n", my_parse_state->next->pos);

		theSplit = strtok (current->token,",");
		strcpy(my_parse_state->next->type, theSplit);
		printf("	---my_parse_state->next->type %s\n", my_parse_state->next->type);

		if (strcmp(my_parse_state->next->type, "comma") == 0) {
			strcpy(my_parse_state->next->value, "','");
			printf("	---my_parse_state->next->value %s\n", my_parse_state->next->value);
			theSplit = strtok (NULL,",");
			theSplit = strtok (NULL,",");
			current = current->next;
			my_parse_state->next->next = NULL;
			++counter;
			continue;
		}

		theSplit = strtok (NULL,",");

		if (theSplit != NULL) {
			strcpy(my_parse_state->next->value, theSplit);
			printf("	---my_parse_state->next->value %s\n", my_parse_state->next->value);
		}
		else {
			strcpy(my_parse_state->next->value, "'\\n'");
			printf("	---my_parse_state->next->value %s\n", my_parse_state->next->value);
		}
		theSplit = strtok (NULL,",");
		
		current = current->next;
		my_parse_state->next->next = NULL;
		++counter;
	}

	return my_parse_state;
}