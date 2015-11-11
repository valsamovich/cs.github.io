# Java

**Java** is Object-Oriented, Platform independent, Simple, Secure, Architectural-Neutral, Portable, Robust, Multi-threaded, Interpreted, High Performance, Distributed, Dynamic, etc.

Dependencies: JSON, TestNg, JUnit, Selenium WebDriver, Hamcrest, EasyMock, Apache HttpClient.

## Context

- Syntax
- Program
- Identifiers
- Modifiers

Syntax

**Object** - Objects have states or **fields** and behaviors or **methods**. Example: A dog has states-color, name, breed as well as behaviors -wagging, barking, eating. An object is an instance of a class.

**Class** - A class can be defined as a template/ blue print that describe the behaviors/states that object of its type support.

**Methods** - A method is basically a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.

**Instant Variables** - Each object has its unique set of instant variables. An object's state is created by the values assigned to these instant variables.

**Package** - Package is a namespace that organizes a set of related classes and interfaces. Placing your code into packages makes large software projects easier to manage. The Java platform provides an enormous class library (a set of packages) suitable for use in your own applications. This library is known as the "Application Programming Interface", or "API" for short. Java Platform API Specification - http://docs.oracle.com/javase/8/docs/api/index.html

Note: To verify the Java version on machine: **java -version**

## Program

Simple code that would print the words `Hello World`:

	public class MyJavaProgram{
	
		/* 
		 * This is a java program.  
		 * This will print 'Hello World' as the output
		 */
		
		public static void main(String []args){
			// prints Hello World
			System.out.println("Hello World"); 
		}
	}

- **Case Sensitivity** - Java is case sensitive which means identifier Hello and hello would have different meaning in Java.
- **Class Names** - For all class names the first letter should be in Upper Case. If several words are used to form a name of the class each inner words first letter should be in Upper Case. Example: `class MyJavaClass`
- **Method Names** - All method names should start with a Lower Case letter. If several words are used to form the name of the method, then each inner word's first letter should be in Upper Case. Example `public void myMethodName()` or `main`
- **Program File Name** - Name of the program file should exactly match the class name. Example: Assume `'MyFirstJavaProgram'` is the class name. Then the file should be saved as `'MyFirstJavaProgram.java'`
- `public static void main(String args[])` - java program processing starts from the `main()` method which is a mandatory part of every java program.

## Identifiers

All Java components require names. Names used for classes, variables and methods are called identifiers.
- All identifiers should begin with a letter `A` to `Z` or `a` to `z`, currency character `$` or an underscore `_`.
- After the first character identifiers can have any combination of characters.
- A key word cannot be used as an identifier.
- Most importantly identifiers are case sensitive.
- Examples of legal identifiers:age, `$salary, value, __1_value`
- Examples of illegal identifiers : `123abc, -salary`

## Modifiers

Like other languages, it is possible to modify classes, methods, etc., by using modifiers. There are two categories of modifiers.

Access Modifiers: `default, public , protected, private`

Modifier      |	Class 	  | Package   | Subclass  | Project   
--------------|-----------|-----------|-----------|------------
public	      | Y     	  | Y	      | Y         | Y
protected     |	Y     	  | Y	      | Y         | N
default       |	Y     	  | Y	      | N         | N
private	      |	N     	  | N	      | N         | N

Non-access Modifiers: `final, abstract, strictfp`

Variables
---------

The Java programming language use both **"fields"** and **"variables"** as part of its terminology. 

**Local variables ** Similar to how an object stores its state in fields, a method will often store its temporary state in local variables. The syntax for declaring a local variable is similar to declaring a field. Local variables are only visible to the methods in which they are declared; they are not accessible from the rest of the class.
	
	// var declaration
	int count = 0;

**Class variables (static Variables)** A class variable is any field declared with the static modifier; this tells the compiler that there is exactly one copy of this variable in existence, regardless of how many times the class has been instantiated. Additionally, the keyword final could be added to indicate that the value will never change.
	
	// var declaration
	static int value = value++;

**Instance variables (non-static fields)** Objects store their individual states in "non-static fields", that is, fields declared without the static keyword. Non-static fields are also known as **instance variables** because their values are unique to each instance of a class (to each object, in other words).

	// var declaration
	int value = 10;

**Parameters** Parameters are always classified as "variables" not "fields". This applies to other parameter-accepting constructs as well (such as constructors and exception handlers).

	// args variable is the parameter to main method
	public static void main(String[] args) {} 

Data Types
----------

**Primitive Data Types** - The eight primitive data types are: **byte, short, int, long, float, double, boolean, and char**. The Java programming language is statically-typed, which means that all variables must first be declared before they can be used. 
	
	// var declaration
	int gear = 1;

Data Type | Default Value | Bit                            | Min and Max Value              
----------|---------------|--------------------------------|-----------------------------------------------------
byte	  | 0    	  | 8-bit                          | -128 and -127 (inclusive)
short     | 0    	  | 16-bit                         | -32,768 and 32,767 (inclusive)
int       | 0             | 32-bit                         | -2(in 31st) and 2(in 31st)-1
long      | 0L            | 64-bit                         | -2(in 63rd) and 2(in 63rd)-1
float     | 0.0f          | 32-bit IEEE 754 floating point | specified in the Floating-Point types
double    | 0.0d          | 64-bit IEEE 754 floating point | specified in the Floating-Point types
char      | '\u0000'      | 16-bit Unicode character       | '\u0000' (or 0) and '\uffff'  (or 65,535 inclusive)
String    | null          |                                |
boolean   | false         | 1-bit and "size" isn't defined | true and false
Object    | null          |                                |

**Reference Data Types** - Reference variables are created using defined constructors of the classes. They are used to access objects. These variables are declared to be of a specific type that cannot be changed. For example, Employee, Puppy etc.
- Class objects, and various type of array variables come under reference data type.
- Default value of any reference variable is null.
- A reference variable can be used to refer to any object of the declared type or any compatible type.
- Example : `Animal animal = new Animal("giraffe");`

Literals
--------

A **Literal** is a source code representation of a fixed value. They are represented directly in the code without any computation. Literals can be assigned to any primitive type variable. For example:

	byte a = 68;
	char a = 'A';

String literals in Java are specified like they are in most other languages by enclosing a sequence of characters between a pair of double quotes. Examples of string literals are:

	"Hello World"
	"two\nlines"
	"\"This is in quotes\""

Java language supports few special escape sequences for String and char literals as well. They are:

Notation | Character represented
---------|------------------------
\n	 | Newline (0x0a)
\r	 | Carriage return (0x0d)
\f	 | Formfeed (0x0c)
\b	 | Backspace (0x08)
\s	 | Space (0x20)
\t	 | tab
\"	 | Double quote
\'	 | Single quote
\\	 | backslash
\ddd	 | Octal character (ddd)
\uxxxx	 | Hexadecimal UNICODE character (xxxx)

Arrays
------

An **Array** is a container object that holds a fixed number of values of a single type. The length of an array is established when the array is created. After creation, its length is fixed. 
	
	class ArrayDemo {
		publis stativ void main (String[] args) {
			// declares an array og integers
			int[] anArray;
			
			// allocate memory for 3 integers
			anArray = new int[3];
			
			// initialize first element
			anArray[0] = 10;
			// intialize second element
			anArray[1] = 20;
			// and so forth
			andArray[2] = 30;
		}
	}

Copying **Arrays**

	// system class has an arraycopy() method
	// can use to efficiently copy data from one array into another
	public static void arraycopy(Object src, int srcPos, Object dest, int destPos, int length)

Enums
-----

**Enums** restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums. With the use of enums it is possible to reduce the number of bugs in your code. For example if we consider an application for a fresh juice shop it would be possible to restrict the glass size to small, medium and Large. This would make sure that it would not allow anyone to order any size other than the small, medium or large.

	class FreshJuice{
	
   		enum FreshJuiceSize{ SMALL, MEDIUM, LARGE }
   		FreshJuiceSize size;
	}

	public class FreshJuiceTest{

		public static void main(String args[]){
			FreshJuice juice = new FreshJuice();
			juice.size = FreshJuice. FreshJuiceSize.MEDIUM ;
			System.out.println("Size :" + juice.size);
		}
	}

**Note:** enums can be declared as their own or inside a class. Methods, variables, constructors can be defined inside enums as well.

Keywords
--------

Java	 | language 	| reserved	| keywords	
---------|--------------|---------------|-------------
abstract | assert	| boolean 	|break
byte	 | case		| catch		| char
class	 | const	| continue	| default
do	 | double	| else		| enum
extends	 | final	| finally	| float
for	 | goto		| if		| implements
import	 | instanceof	| int		| interface
long	 | native	| new		| package
private	 | protected	| public	| return
short	 | static	| strictfp	| super
switch	 | synchronized | this		| throw
throws	 | transient	| try		| void
volatile | while	|		|

Comments
--------

Java language supports three kinds of **comments**:

`/* text */` The compiler ignores everything from `/* to */`.

`/** documentation */` This indicates a documentation comment (doc comment, for short). The compiler ignores this kind of comment, just like it ignores comments that use `/* and */`. The JDK javadoc tool uses doc comments when preparing automatically generated documentation. For more information on javadoc, see the Java tool documentation.

`// text` The compiler ignores everything from `//` to the end of the line.


Operators
---------

**Operators** are special symbols that perform operations on one, two, or three operands, and then return a result.

Operators by Presedence	| Precedence	   
------------------------|----------------------------------------
postfix	                | expr++ expr--   	  
unary                   | ++expr --expr +expr -expr ~ !    	  
multiplicative          | * / %
additive                | 0L
shift			| << >> >>>
relational		| < > <= >= instanceof
equality		| == !=
bitwise AND		| &
bitwise exclusive OR	| ^
bitwise inclusive OR	| |
logical AND		| &&
logical OR		| ||
ternary			| ? :
assignment		| = += -= *= /= %= &= ^= |= <<= >>= >>>=

**The Assignment Operators**

Operator | Description	   
---------|------------------------------------------------
      =  | Assignment operator (value, object references)

**The Arithmetic Operators**

Operator | Description	   
---------|--------------------------------------------------------
      +  | Additive operator (also used for String concatenation)
      -  | Subtraction operator
      *  | Multiplication operator
      /  | Division operator
      %  | Remainder operator
  
**The Unary Operators**

Operator | Description	   
---------|-------------------------------------------------------------------------------------------
      +  | Unary plus operator; indicates positive value (numbers are positive without this, however)
      -  | Unary minus operator; negates an expression
     ++  | Increment operator; increments a value by 1
     --  | Decrement operator; decrements a value by 1
      !  | Logical complement operator; inverts the value of a boolean
      
**The Equality and Relational Operators**

Operator | Description	   
---------|--------------------------
==       | Equal to
!=       | Not equal to
 >       | Greater than
>=       | Greater than or equal to
<        | Less than
<=       | Less than or equal to

**The Conditional Operators** (perform operation on two boolean expressions)

Operator      | Description	   
--------------|------------------------------------------------------------------------------------
&&            | Conditional-AND
&#124; &#124; | Conditional-OR
?:            | Ternary operator (shorthand if-then-else) result = someCondition ? value1 : value2
instanceof    | Type comparison operator
      
**Bitwise and Bit Shift Operators**

Operator | Description	   
-------- |------------------------------------------------------------------
~        | Unary bitwise complement
<<       | Signed left shift
>>       | Signed right shift
>>>      | Unsigned right shift
&        | Bitwise AND - performs a bitwise AND oeration 
^        | Bitwise exclusive  OR - perform a bitwise exclusive OR operation
&#124;   | Bitwise inclusive  OR - perform a bitwise inclusive OR operation

Expressions, Statements, and Blocks
-----------------------------------

An **expresions** is a construct made up of variables, operators, and method invocations, which are constructed according to the syntax of the language, that evaluates to a single value.

	// arithmetic expression
	int result = 1 + 2; 

A **statement** is a forms a complete unit of execution. The following types of expressions can be made into a statement by terminating the expression with a semicolon (;).

	// object creation statement
	Object myObject = new Object();

A **block** is a group of zero or more statements between balanced braces and can be used anywhere a single statement is allowed. 

	// if block
	if(condition) {...}

Control Flow Statements
-----------------------

The statements inside your source files are generally executed from top to bottom, in the order that they appear. **Control flow statements**, however, break up the flow of execution by employing decision making, looping, and branching, enabling your program to conditionally execute particular blocks of code.

**The if-then Statement** An if statement can be followed by an optional else statement, which executes when the Boolean expression is false.

	// if-else statement
	if (condition) {
		// statement(s)
	}

**The if-then-else Statement** An if statement can be followed by an optional else if...else statement, which is very usefull to test various conditions using single if...else if statement.
	
	// if-then-else statement
	if (condition) {
		// statement(s)
	} else {
		// statement(s)
	}

**Nested if-else Statement** It is always legal to nest if-else statements. When using if, else if, else statements there are few points to keep in mind: An if can have zero or one else's and it must come after any else if's.An if can have zero to many else if's and they must come before the else. Once an else if succeeds, none of he remaining else if's or else's will be tested.

	if(Boolean_expression 1){
		// executes when the Boolean expression 1 is true
		if(Boolean_expression 2){
			// executes when the Boolean expression 2 is true
		}
	}

**The switch Statement** A switch statement allows a variable to be tested for equality against a list of values. Each value is called a case, and the variable being switched on is checked for each case.
	
	// switch statement
	switch (value) {
            	case 1:  // statement(s)
			break;
            	case 2:  // statement(s)
                     	break;
            	// ...and so on
            	default: // optional statement
        }

**The while Statement** A while loop is a control structure that allows you to repeat a task a certain number of times.

	// while statement
	while (condition) {
		// statement(s)
	}

**The do-while Statement** A do...while loop is similar to a while loop, except that a do...while loop is guaranteed to execute at least one time.

	// do-while statement
	do{
		// statement(s)
	} while (expression);
	
**The for Statement** A for loop is a repetition control structure that allows you to efficiently write a loop that needs to execute a specific number of times. A for loop is useful when you know how many times a task is to be repeated.

	// for loop (infinite loop)
	for (initialization; termination; increment) {
		// statement(s)
	}

Keywords
--------

**Break** The `break` keyword is used to stop the entire loop. The break keyword must be used inside any loop or a switch statement. The break keyword will stop the execution of the innermost loop and start executing the next line of code after the block.
	// stop the loop or switch statement
	break;

**Continue** The `continue` keyword can be used in any of the loop control structures. It causes the loop to immediately jump to the next iteration of the loop. In a for loop, the continue keyword causes flow of control to immediately jump to the update statement. In a while loop or do/while loop, flow of control immediately jumps to the Boolean expression.
	
	// The syntax of a continue is a single statement inside any loop
	continue;

Methods
-------

**Method** is a collection of statments that are grouped together to perform an operation.
	
	public static int functionName(int a, int b) {
		// statement(s)
 	}
 	
 	// structure of th method
	modifier returnValueType methodName(list of parameters) {
		// method body;
	}

**Modifiers** The modifier, which is optional, tells the compiler how to call the method. This defines the access type of the method.

**Return Type** A method may return a value. The returnValueType is the data type of the value the method returns. Some methods perform the desired operations without returning a value. In this case, the returnValueType is the keyword void.

**Method Name** This is the actual name of the method. The method name and the parameter list together constitute the method signature.

**Parameters** A parameter is like a placeholder. When a method is invoked, you pass a value to the parameter. This value is referred to as actual parameter or argument. The parameter list refers to the type, order, and number of the parameters of a method. Parameters are optional; that is, a method may contain no parameters.

**Method Body** The method body contains a collection of statements that define what the method does.
 	
Objects & Classes
-----------------

**Object** is a copy or instance of a class. Objects have states and behaviors. Example: A dog has states-color, name, breed as well as behaviors -wagging, barking, eating. An object is an instance of a class.
	
	// sample object statement
	Object object  = new Object();

**Class** can be defined as a template/ blue print that describe the behaviors/states that object of its type support. Class is a template for an object. Class has data & methods.
	
	// sample class
	public class Dog{
		String breed;
		int age;
		String color;

		void barking(){
		}
   
		void hungry(){
		}
   
		void sleeping(){
		}
	}

A **class** can contain any of the following variable types:

- **Local variables** Variables defined inside methods, constructors or blocks are called local variables. The variable will be declared and initialized within the method and the variable will be destroyed when the method has completed.
- **Instance variables** Instance variables are variables within a class but outside any method. These variables are instantiated when the class is loaded. Instance variables can be accessed from inside any method, constructor or blocks of that particular class.
- **Class variables** Class variables are variables declared with in a class, outside any method, with the static keyword.

Exceptions Handling
-------------------

A method catches an exception using a combination of the `try` and `catch` keywords. A **try/catch block** is placed around the code that might generate an exception. Code within a try/catch block is referred to as protected code.
	
	// try-catch block
	try{
		// protected code
	}catch(ExceptionName e1){
		// catch block
	}

	// multiple catch block
	try{
		// protected code
	}catch(ExceptionType1 e1){
		// catch block
	}catch(ExceptionType2 e2){
		// catch block
	}

The **throws** and **throw** keywords If a method does not handle a checked exception, the method must declare it using the `throws` keyword. The `throw`s keyword appears at the end of a method's signature.

The **finally** keyword is used to create a block of code that follows a `try block`. A `finally` block of code always executes, whether or not an exception has occurred. Using a finally block allows you to run any cleanup-type statements that you want to execute, no matter what happens in the protected code. A finally block appears at the end of the catch blocks.

	// multiple catch block
	try{
		// protected code
	}catch(ExceptionType1 e1){
		// catch block
	}catch(ExceptionType2 e2){
		// catch block
	}finally{
		// the finally block always executes
	}

Object Oriented Programming concepts
------------------------------------

Object Oriented programming (OOP) is an engineering approach for building software systems. Based on the concepts of class and objects that are used for modeling the real world entities. The Principles of OOP includes Inheritance, Abstraction, Encapsulation, Polymorphism.

Object-Oriented Programming Language(s)   | C | Java/C++              
------------------------------------------|---|----------
Encapsualtion: Data Hiding                | x | x
Polymorphism: Overloading, Overriding     | x | x
Inheritance: Abstract classes, Interfaces |   | x

Constructor
-----------
**Constructors** are the methods which are used to initiliaze objects. They are called or invoked when an object of class is created and can't be called explicitly. It is optional to write constructor mehtod in a class but due to therir utility they are used.

- Constructor is a method that has the same name as the class. 
- It is executed when an object is created.
- It is used to set default values.
- Does not return anything including void.
- Cunstructor can be oveloaded (i.e. can create multiply constructor).

```
class Programming {
	// Constructor method
	Programming() {
		System.out.println("Constructor method called.");	
	}
	public static void main(String[] args) {
		// Creating the Programming object
		Programming object = new Programming();
	}
}
```

**Constructor chaining** occurs when a class inherits another class i.e. in inheritance, as in inheritance sub class inherits the properties of superclass. Both the super and sub class may have constructor methods, when an object of sub class is created it's constructor is invoked it initializes subclass attributes, now super class constructor needs to be invoked, to achieve this java provides a `super` keyword through we can pass arguments to super class constructor.

Inheritance
-----------

**Inheritance** is when a class acquires(extend) the properties of another class. `Inheritance` commonly used keyword would be `extends` and `implements`. These words would determine whether one object **IS-A** type of another. With use of the extends keyword the subclasses will be able to inherit all the properties of the superclass except for the private properties of the superclass.
	
	// Animal is a super class
	public class Animal{
	}
	
	// Mammal is a subclass of Animal or Mammal IS-A Animal
	public class Mammal extends Animal{
	}
	
	// Dog is a subclass of Mammal and Animal
	public class Dog extends Mammal{
	}

Abstraction
-----------

**Abstraction** refers to the ability to make a class abstract in OOP. An abstract class is one that cannot be instantiated. All other functionality of the class still exists, and its fields, methods, and constructors are all accessed in the same manner. You just cannot create an instance of the abstract class. **Abstract** class is a class which has empty methods and fully defined methods.

An interface is a collection of abstract methods. A class implements an interface, thereby inheriting the abstract methods of the interface.

Encapsulation
-------------

**Encapsulation** is a data & methods that act on the data. Getter and Setter - Accessor and Mutator

**Constructor** is a method that has the same name as the class. It is executed when an object is created. It is used to set default values. Does not return anything including void.

Polymorphism
------------

**Overloading** is when methods of the same name are differentiated by their passing arguments.

**Overriding** is when a method in the subclass has the same signature as a method in the super class, then the subclass method takes precedence

Super
-----

**Super** keyword is used to access super class data and methods. 
	
	// Access super class data
	System.out.println("Name from subclass : " + super.name);
	
	// Invoke Super class's 'getClassName()' method 
        super.getClassName();
      
This
-----

**This** keyword is used to access  class level data

Static
------
**Static** is one per class, but not one per object. **Static** methods can only access other static data & methods.

```
// Static data.
static int staticVariable;

// Static method.
static public void  staticMethod(){
        // method body.
}
```

Final
-----

**Final** data is constant and Cannot be changed. Final methods cannot be overridden and Final classes cannot be sub classed. Final keyword can be applied to data,methods, and classes.

Annotations
-----------

**Annotations**, a form of metadata, provide data about a program that is not part of the program itself. Annotations have no direct effect on the operation of the code they annotate. Annotations can be applied to declarations: declarations of classes, fields, methods, and other program elements. As of the [Java SE 8 release](http://docs.oracle.com/javase/8/docs/api/), annotations can also be applied to the use of types.
 
- **Information for the compiler** — Annotations can be used by the compiler to detect errors or suppress warnings.
- **Compile-time and deployment-time processing** — Software tools can process annotation to generate code or XML files.
- **Runtime processing** — Some annotations are available to be examined at runtime. 

The format of an Annotations

	// The at sign character (@) indicates to the compiler that what follows is an annotation
 	@Override
 	void myTestClass() {...}
 	
 	// Annotation with elements
 	@Author(
 	 name = "John Doe",
 	 date = "3/27/2003"
 	)
 	class MyClass() {...}
 
 	// Multiple and custom annotations 
 	@Author(name = "Jane Doe")
 	@EBook
 	class MyClass() {...}
 
 	// Repeating annotations - supported of the Java SE 8 release
 	@Author(name = "Jane Doe")
 	@Author(name = "John Smith")
 	class myClass() {...}
 	
 	// Java 8 - Class instance creation expression
    	new @Interned MyObject();
	// Java 8 - Type cast
    	myString = (@NonNull String) str;


**Anntotation Type** definition is an interface defintion where the keyword *interface* is preceded by the sign (@) (@ = AT, as in annotation type). Annotation types are form of *interface*.

	@ @interface ClassType (
		// Annotation element definitions.
	)

**@Deprecated** annotation indicates that the marcked element is deprecated and should no longer be used.

	/**
	 * @deprecated
	 * exaplanation of why it was deprecated
	 */
	@Deprecated
	static void() {...}

**@Override** annotation informs the compiler that the element is meant to overridean elementdeclared in a superclass.


	// mark method as a superclass method that has been overridden
	@Override
	int overriddenMethod() {...}


**@SuppressWarnings** (annotation tells the compiler to suppress specific warningsthat it would otherwise generate).

	// use a deprecated method and tell compiler not to generate a warning
	@SuppressWarnings("deprecation")
	void useDeprecatedMethod() {
		// deprecation warning - suppressed
		objectOne.deprecatedMethod();
	}

	// suppress multiple categories of warnings
	@SuppressWarnings({"unchecked", "deprecation"})

**@SaveVarargs** annotation, when applied to a method or constructor, asserts that the code does not perform potentially unsafe operations on its varargs parameter.

**@FunctionalInterface** annotation, introduduced in Java SE 8, indicates that the type declaration is intended to be a functional interface.

Meta-Annotations is annotation that apply to other annotations. Defined in java.lan.annotation. 

**@Retention** annotation specifies how the marked annotation is stored.

- `RetentionPolicy.SOURCE` – The marked annotation is retained only in the source level and is ignored by the compiler.
- `RetentionPolicy.CLASS` – The marked annotation is retained by the compiler at compile time, but is ignored by the Java Virtual Machine (JVM).
- `RetentionPolicy.RUNTIME` – The marked annotation is retained by the JVM so it can be used by the runtime environment.

**@Documented** annotation indicates that whenever the specified annotation is used those elements should be documented using the Javadoc tool.

**@Target** annotation marks another annotation to restrict what kind of Java elements the annotation can be applied to. A target annotation specifies one of the following element types as its value:

- `ElementType.ANNOTATION_TYPE` can be applied to an annotation type.
- `ElementType.CONSTRUCTOR` can be applied to a constructor.
- `ElementType.FIELD` can be applied to a field or property.
- `ElementType.LOCAL_VARIABLE` can be applied to a local variable.
- `ElementType.METHOD` can be applied to a method-level annotation.
- `ElementType.PACKAGE` can be applied to a package declaration.
- `ElementType.PARAMETER` can be applied to the parameters of a method.
- `ElementType.TYP`E can be applied to any element of a class.

**@Inherited** annotation indicates that the annotation type can be inherited from the super class.

**@Repeatable** annotation, introduced in Java SE 8, indicates that the marked annotation can be applied more than once to the same declaration or type use.

Generics
--------

Java **Generics** methods and specific classes enable programmers to specify, with a single parameter, a set of related methods or, with a single class declaration, a set of related types, respectively. Code that uses generics has many benefits:

- Stronger type checks at compile time
- Elimination of casts
- Enabling programmers to implement generic algorithms

Generic example

	List<String> genericList = new ArrayList<String>();

**Generic Methods** can be called with arguments of different types. Based on the types of the arguments to the generic method, the compiler handles each method call approprietary. Generic Method Rules:

- Declarations have a type parameter with angle brackets `<` ... `>`, which precedes with return type.
- Geneneric type name or Type parameters (type variable) separated by commas. 
- The type parameters can be used to declare the return type and act as placeholders.
- A generic method's body is declared any other method. Parameters can represent only reference types.

Generic Method

	public static <E> void printArray(E[] inputArray) {
		// statement(s)
	}

**Bounded Type Parameters** can help to restrict the kinds of types that are allowed to be passed to a type parameter. To declare a bounded type parameter, list the type parameters name, followed by the extends keyword, follow by its upper bound.

	public static <T extends Coparable<T>> T maximum(T x, T y, T z) {
		// statement(s)
	}
	
**Generic Classes** delcarations looks like a non-generic class declarion,exept that the class is followed by a type parameter section. These classes are known as paramererized and can have one or more parameters separeted by comma.

	public class Box<T> {
		// statement(s)
	}

Collections
-----------

A **Collection** (container) is simply an object that groups multiple elements in to a single unit. Collections are used to store, retrieve, manipulate, and communicate aggregate data. 

A **Collection Framework** is a unified architecture for representing and manipulating collections. All collections frameworks contain:

**Interfaces** These are abstract data types that represent collections. Interfaces allow collections to be manipulated independently of the details of their representation. In object-oriented languages, interfaces generally form a hierarchy.

**Implementations, i.e., Classes** These are the concrete implementations of the collection interfaces. In essence, they are reusable data structures.

	// ArrayList Class
	ArrayList<E> al = new ArrayList<E>();
	
	// HashMap Class
	HashMap hm = new HashMap();
	
	// Non generic list
	List list = new ArrayList();
	
	// Generic list
	List<String> gList = new ArrayList<String>();

**Algorithms** These are the methods that perform useful computations, such as searching and sorting, on objects that implement collection interfaces. The algorithms are said to be polymorphic: that is, the same method can be used on many different implementations of the appropriate collection interface.

Serialization
-------------

Java provides a mechanism, called **object serialization** where an object can be represented as a sequence of bytes that includes the object's data as well as information about the object's type and the types of data stored in the object. Classes **ObjectInputStream** and **ObjectOutputStream** are high-level streams that contain the methods for serializing and deserializing an object.

	// ObjectOutputStream class contains many write methods for writing various data types
	public final void writeObject(Object x) throws IOException
	
	// ObjectInputStream class contains the following method for deserializing an object
	public final Object readObject() throws IOException, ClassNotFoundException

Applets
-------

Using the applet tag
	
	<!-- The purpose of the <object> element is to support HTML helpers (plug-ins).-->
	<object>Name of the object-applet</object>

Multithreding
-------------

Java is a **multithreaded programming language** which means we can develop multithreaded program using Java. A **multithreaded program** contains two or more parts that can run concurrently and each part can handle different task at the same time making optimal use of the available resources specially when your computer has multiple CPUs.

Logger
------

**Logging** is the process of writing log messages during the execution of a program to a central place. This logging allows you to report and persist error and warning messages as well as info messages (e.g., runtime statistics) so that the messages can later be retrieved and analyzed.

Java contains the **Java Logging API**. This logging API allows you to configure which message types are written. Individual classes can use this logger to write messages to the configured log files.

	// The java.util.logging package provides the logging capabilities via the Logger class.
	import java.util.logging.Logger;
	
	// Assumes the current class is called logger
	private final static Logger LOGGER = Logger.getLogger(MyClass.class.getName());

EasyMock
--------

**EasyMock** is a mock framework which can be easly used in conjunction with JUnit. EasyMock instantiates an object based on an interface or class.

```
import static org.easymock.EasyMock.createNiceMock;
...
// ICalculateMethod is the object whitch is mocked
ICalculateMethod calculateMethod = createNiceMock(ICalculateMethod.class);
```

The `createNiceMock()` method creates a mock whic returns default values for methods which are not overiden. A mock ceated with th `Mock()` method will fails is such a case.

Concurrency
-----------

Computer users take it for granted that their systems can do more than one thing at a time. They assume that they can continue to work in a word processor, while other applications download files, manage the print queue, and stream audio. Software that can do such things is known as **concurrent software**. The Basic concurrency support defided in ``java.util.concurrent`` packages. In concurrent programming, there are two basic units of execution: **processes** and **threads**.

A **Process** has a self-contained execution environment. A process generally has a complete, private set of basic run-time resources; in particular, each process has its own memory space.

**Threads** are sometimes called lightweight processes. Both processes and threads provide an execution environment, but creating a new thread requires fewer resources than creating a new process.


Junit
-----

**JUnit** is a testing framework for the Java Programming Language. A **Unit test** is a piece of code written by a developer that executes a specific functionality in the code to be tested. The percentage of code which is tested by unit tests is typically called test coverage. A unit test targets a small unit of code, e.g., a method or a class, (local tests). Features:

- It's an open source framework.
- Provides Annotations, Assertions, and Test Runners.
- It's simple and can be run automatically.

A **Unit Test Case** is a part of code which ensures that the another part of the code (method)works as expected. A formal written test-case is characterized by a known input and by an expected output, which is worked out before the test is executed. There must be at least two test cases for each requirement: one positive and one negative.

Java Class

```
package com.valerysamovich.java.junit.first;

// My Class
public class MyClass {
  	public int multiply(int x, int y) {
    		// the following is just an example
    		if (x > 999) {
      			throw new IllegalArgumentException("X should be less than 1000");
    		}
    		return x / y;
  	}
} 
```

JUnit Test

```
package com.valerysamovich.junit.first;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class MyClassTest {

	@Test(expected = IllegalArgumentException.class)
	public void testExceptionIsThrown() {
		MyClass tester = new MyClass();
	tester.multiply(1000, 5);
	}
  }
```

JSON
----

**JSON** or JavaScript Object Notation is a lightweight is a text-based open standard designed for human-readable data interchange. The JSON format was originally specified by Douglas Crockford, and is described in RFC 4627. The official Internet media type for JSON is application/json. The JSON filename extension is `.json`.

**JSON** syntax is basically considered as subset of JavaScript. Data is represented in name/value pairs. Curly braces `{}` hold objects and each name is followed by `:` (colon), the name/value pairs are separated by `,` (comma). Square brackets `[]` hold arraysand values are separated by `,` (comma). **JSON** supports following two data structures: **Collections of name/value pairs**, **Ordered list of values**.
 
```
{
    "book": [
    {
       "id":"01",
       "language": "Java",
       "edition": "third",
       "author": "Herbert Schildt"
    },
    {
       "id":"07",
       "language": "C++",
       "edition": "second"
       "author": "E.Balagurusamy"
    }]
}
```

Classes
-------

**Class** - A class can be defined as a template/ blue print that describe the behaviors/states that object of its type support. The class declarations can include these components, in order:

1. Modifiers such as public, private, and a number of others that you will encounter later.
2. The class name, with the initial letter capitalized by convention.
3. The name of the class's parent (superclass), if any, preceded by the keyword extends. A class can only extend (subclass) one parent.
4. A comma-separated list of interfaces implemented by the class, if any, preceded by the keyword implements. A class can implement more than one interface.
5. The class body, surrounded by braces, {}.

```
class MyClass {
    // field, constructor, and 
    // method declarations
}
```

```
// MyClass is a subclass of MySuperClass and that it implements the YourInterface interface
class MyClass extends MySuperClass implements YourInterface {
    // field, constructor, and
    // method declarations
}
```

**Member varibles** There are several kinds of variables:

- Member variables in a class—these are called fields.
- Variables in a method or block of code—these are called local variables.
- Variables in method declarations—these are called parameters.

**Field declarations** are composed of three components, in order:

1. Zero or more modifiers, such as public or private.
2. The field's type.
3. The field's name.

**Access modifiers** Like other languages, it is possible to modify classes, methods, etc., by using modifiers. There are two categories of modifiers.

Access Modifiers: `default, public , protected, private`

Modifier      |	Class 	  | Package   | Subclass  | Project   
--------------|-----------|-----------|-----------|------------
public	      | Y     	  | Y	      | Y         | Y
protected     |	Y     	  | Y	      | Y         | N
default       |	Y     	  | Y	      | N         | N
private	      |	N     	  | N	      | N         | N

**Defining Methods** More generally, method declarations have six components, in order:

- Modifiers—such as `public`, `private`, and others you will learn about later.
- The return type—the data type of the value returned by the method, or `void` if the method does not return a value.
- The method name—the rules for field names apply to method names as well, but the convention is a little different.
- The parameter list in parenthesis—a comma-delimited list of input parameters, preceded by their data types, enclosed by parentheses, `()`. If there are no parameters, you must use empty parentheses.
- An exception list—to (optional).
- The method body, enclosed between braces—the method's code, including the declaration of local variables, goes here.

```
public double calculateAnswer(double wingSpan, int numberOfEngines, double length, double grossTons) {
    //do the calculation here
}
```

Required elements of a method declaration are the method's return type, name, a pair of parentheses, `()`, and a body between braces, `{}`.

***
**Definition**: Two of the components of a method declaration comprise the method signature—the method's name and the parameter types.
***
