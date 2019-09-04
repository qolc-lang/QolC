# The QolC Programming Language

@@ 
	The QolC programming language
@@ 

## Documentation

* Syntax
	
	Just some declarations and initializations
	
	```cpp
	x@int
	myInt@int|0|
	counter@0
	
	y@string
	myString@string|"Vasileios"|
	myString@"Hello World!"

	z@float
	myFloat@float|0.5 * |0.2 + z + w||	
	gpa@|grade * credits|/credits
	```
	
	A function : 
	
	```cpp
	sum |x1@float, x2@float| \ float 
	|@
		return x1+x2
	@|
	```

	A simple struct : 
	
	```cpp
	myStruct struct 
	|@
		a@int|4|
		b@string|"Yo!"|
		c@anotherStruct^
	@|
	```
	
	Pointers : 
	
	```cpp
	theStruct@myStruct^|null| 
	```
	
	```cpp
	doggos struct 
	|@ 
		dog1@doggos^!|null|
		doggy@doggos^!|---|
	@|
	```

## Setup

## Requirements to build and run

## Warnings

* This is still in development and the language's design is quite volatile.
* Syntax is not fixed.

## Demonstrations

