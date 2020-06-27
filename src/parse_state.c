#include "../inc/parse_state.h"

/*
	Creating a parsable list from the lexer tokens
*/
parse_state* make_parse_stateList(lexer_node* tokens) {
	parse_state* my_parse_state = malloc(sizeof(parse_state));
	int counter = 0;
	int flagTwice = 0;
	char *theSplit;
	int thePos;
	char theType[100];
	char theValue[100];

	memset(theType, 0, sizeof(theType));
	memset(theValue, 0, sizeof(theValue));

	lexer_node* current = tokens;
	
	/* The first is the head */
	current = current->next;

	while (current != NULL)  {
		thePos = counter;
		printf("The current in statelist : %s \n", current->token);
		theSplit = strtok (current->token,",");
		strcpy(theType, theSplit);

		if (strcmp(theType, "comma") == 0) {
			strcpy(theValue, "','");
			printf("The value in statelist : %s \n", current->token);
			theSplit = strtok (NULL,",");
			theSplit = strtok (NULL,",");
			current = current->next;
			push_parseList(my_parse_state, thePos, theType, theValue);
			memset(theType, 0, sizeof(theType));
			memset(theValue, 0, sizeof(theValue));
			++counter;
			continue;
		}

		theSplit = strtok (NULL,",");

		if (theSplit != NULL) {
			strcpy(theValue, theSplit);
		}
		else {
			if (strcmp(theType, "end of command") == 0) {
				strcpy(theValue, "'\\n'");
			}
			else {
				flagTwice = 1;
			}
		}

		if (flagTwice) {
			break;
		}

		theSplit = strtok (NULL,",");
		
		current = current->next;
		push_parseList(my_parse_state, thePos, theType, theValue);
		memset(theType, 0, sizeof(theType));
		memset(theValue, 0, sizeof(theValue));
		++counter;
	}

	return my_parse_state;
}

/*
	Removing the last element of the parsable list
*/
int removeLast(parse_state * head) {
    int retval = 0;

    if (head->next == NULL) {
        retval = head->pos;
        free(head);
        return retval;
    }

    parse_state * current = head;
    while (current->next->next != NULL) {
        current = current->next;
    }

    retval = current->next->pos;
    free(current->next);
    current->next = NULL;
    return retval;
}

/*
	Printing the elements of the parsable list
*/
void print_parseStateList(parse_state* node) {
	parse_state * current = node;
	int counter = 0;
	
	/* First in the list is the head */
	while (current != NULL) {
		++counter;
		printf("Counter-Position %d : %d\n", counter, current->pos);
		printf("Counter-Type %d : %s\n", counter, current->type);
		printf("Counter-Value %d : %s\n", counter, current->value);
		current = current->next;
	}
}

/*
	Pushing a value in the parsable list
*/
void push_parseList(parse_state* node, int pos, char type[], char value[]) {
    parse_state * current = node;
    while (current->next != NULL) {
        current = current->next;
    }
    current->next = malloc(sizeof(parse_state));
    current->next->pos = pos;
    strcpy(current->next->type, type);
    strcpy(current->next->value, value);
    current->next->next = NULL;
}