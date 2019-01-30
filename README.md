# The QolC Programming Language

@@ \
	The QolC programming language is being developed for the purposes of a game creation environment which will\
	provide a limitless amount of choices to its users, run games faster and most importantly make coding\
	and debugging fun! 
@@ \

# FAQ

@@ \
	1."Are you a madman? Why all the fuss?" :
		I just want to learn, have fun and make my life easier. Woudl be a dream if I make someone else's life easier also! \
	2."Do you just copy-paste Jai?" : 
		Truth is that Jonathan Blow is one of my favourite creators out there, and his dedication really inspires me. But 
		I definitely don't copy his own work, more like collecting data and adding my own taste. 
	3."Why not wait for Jai to come out?" : \
		@Answer 1, Sentence 1.
@@ \

## Documentation

* Sample Grammar
	
	Just some declarations and initializations
	```
	x@int;
	myInt@ int = 0;
	counter @= 0;

	y@string;
	myString@string = "Vasileios";
	hello_world @= "Hello World!";

	z@float;
	myFloat@float = 0.5 * (0.2 + z + w);	
	gpa @= (grade * credits)/credits;
	```

	A simple "sum" function
	```
	sum @@ (x1@float, x2@float) -> float {
		return x1+x2;
	}
	```

	A struct
	```
	myStruct @@ struct {
		a@int;
		b@string;
		c@anotherStruct;
	}
	```

## Setup

## Requirements to build and run

## Warnings

* This is still in development and the language's design is quite volatile.
* Syntax is not fixed.

## Demonstrations

