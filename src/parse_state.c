#include "../inc/parse_state.h"

parse_state* make_parse_stateList(lexer_node* tokens) {

	parse_state* my_parse_state = malloc(sizeof(parse_state) * 200);
	int i = 0, j =0;
	for (i = 0; i < 200; ++i)
	{
		my_parse_state[i].type = malloc(sizeof(char) * 100);
		my_parse_state[i].value = malloc(sizeof(char) * 100);

		for (j = 0; j < 100; ++j)
		{
			my_parse_state[i].type[j] = '\0';
			my_parse_state[i].value[j] = '\0';
		}
	}

	

	int counter = 0;
	char *theSplit = malloc(sizeof(char) * 100);

	for (j = 0; j < 100; ++j)
	{
		my_parse_state[i].type[j] = '\0';
		my_parse_state[i].value[j] = '\0';
	}

	printf("in parse_state\n");

	lexer_node* current = tokens;

	while (current != NULL) {
		my_parse_state->pos = counter;
		printf("@my_parse_state->pos : %d\n", my_parse_state->pos);
		printf("	-- the tok to be fixed : %s\n", current->token);
		theSplit = strtok (current->token,",");
		//copying type
		if (theSplit != NULL) {
			printf("brfor strcpy\n"); 
			printf("theSplit %s\n", theSplit);
			printf("DMSMS %s\n", my_parse_state->type);
			strcpy(my_parse_state[counter].type, theSplit);
			printf("	-- my_parse_state->type : %s\n", my_parse_state->type);
		}
		theSplit = strtok (NULL,",");
		//copying value
		if (theSplit != NULL) { 
			strcpy(my_parse_state->value, theSplit);
			printf("	-- my_parse_state->value : %s\n", my_parse_state->value);
		}
		theSplit = strtok (NULL,",");
		//copying pos
		current = current->next;
		my_parse_state = my_parse_state->next;
		++counter;
	}

	return NULL;
}