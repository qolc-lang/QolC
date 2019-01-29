# The QolC Programming Language

@@ 
	The QolC programming language is being created for the purposes of a game creation environment which will 
	provide a limitless amount of choices to its users, run games faster and most importantly make debugging
	and coding fun! 
@@

# FAQ

@@
	"Are you a madman? Why all the fuss?" : 
	I just want to learn, have fun and make my life easier. Woudl be a dream if I make someone else's life easier also!
@@

## Documentation

* Sample Grammar
	
	Just some declarations and initializations
	```
	counter@ int = 0;
	name@string = "Jon";
	average@float = 0.5*(x+y);

	counter @= 0;
	name @= "Jon";
	average @= 0.5*(x+y);

	counter@int;
	name@string;
	average@float;
	```

	A simple "sum" function
	```
	sum @@ (x@float, y@float, z@float) -> float {
		return x+y+z;
	}
	```

	A struct
	```
	Vector3 @@ struct {
		x@float;
		y@float;
		z@float;
	}
	```

## Setup

## Requirements to build and run

## Warnings

* This is still in development and the language's design is quite volatile.
* Syntax is not fixed.

## Demonstrations

