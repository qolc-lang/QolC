# The QolC Programming Language

@@ \
	The QolC programming language is being developed for the purposes of a game creation environment which will\
	provide a limitless amount of choices to its users, run games faster and most importantly make coding\
	and debugging fun! \
@@ 

# FAQ

@@ \
	1."Are you a madman? Why all the fuss?" :
		I just want to learn, have fun and make my life easier. Woudl be a dream if I make someone else's life easier also! \
	2."Do you just copy-paste Jai?" : 
		Truth is that Jonathan Blow is one of my favourite creators out there, and his dedication really inspires me. But 
		I definitely don't copy his own work, more like collecting data and adding my own taste. \
	3."Why not wait for Jai to come out?" : 
		@Answer 1, Sentence 1. \
@@

## Documentation

* Sample Grammar
	
	Just some declarations and initializations
	```
	x@int;
	myInt@ int = 0;
	counter @= 0;

	y@string;
	myString@string = "Vasileios";
	myString @= "Hello World!";

	z@float;
	myFloat@float = 0.5 * (0.2 + z + w);	
	gpa @= (grade * credits)/credits;
	```

	As you can notice in QolC, we have strong and dynamic data types. So we can declare\
	something like "counter" that has no type. But, giving it a specific value will determine <br >
	its type dynamically. 

	Next, we can define a function : 
	```
	sum @@ (x1@float, x2@float) -> float {@
		return x1+x2;
	@}
	```

	A simple struct : 
	```
	myStruct @@ struct {@
		a@int = 4;
		b@string = "Yo!";
		c@anotherStruct ^;
	@};
	```

	Also, pointers : 

	```

	theStruct@myStruct^ = null;
	```

	QolC also supports memory ownership which we can be declared 
	using the symbol '!'. 

	```
	
	doggos @@ struct {@ 
		dog1@doggos ^! = null;
		doggy@doggos ^! = ---;
	@}	
	```

	

## Setup

## Requirements to build and run

## Warnings

* This is still in development and the language's design is quite volatile.
* Syntax is not fixed.

## Demonstrations

