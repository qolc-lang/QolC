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
		theSplit[i] = '\0';
	}

	printf("in parse_state\n");

	lexer_node* current = tokens;
	//the first is the head
	current = current->next;

	while (current != NULL) {
		printf("beforee\n");
		my_parse_state[counter].pos = counter;
		printf("www\n");
		printf("@my_parse_state->pos : %d\n", my_parse_state[counter].pos);
		printf("	-- the tok to be fixed : %s\n", current->token);
		theSplit = strtok (current->token,",");
		//copying type
		if (theSplit != NULL) {
			printf("brfor strcpy\n"); 
			printf("theSplit %s\n", theSplit);
			strcpy(my_parse_state[counter].type, theSplit);
			printf("	-- my_parse_state->type : %s\n", my_parse_state[counter].type);
		}
		theSplit = strtok (NULL,",");
		//copying value
		if (theSplit != NULL) { 
			strcpy(my_parse_state[counter].value, theSplit);
			printf("	-- my_parse_state->value : %s\n", my_parse_state[counter].value);
		}
		theSplit = strtok (NULL,",");
		printf("does this\n");
		//copying pos
		current = current->next;
		printf("does this 2 \n");
		my_parse_state = my_parse_state->next;
		printf("does this 3 \n");
		++counter;
		printf("does this 4 \n");
	}

	return NULL;
}