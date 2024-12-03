# Basics of Coding V
## Preface
What this text is and what it is not: This text is intended to introduce the reader to the basics of the V programming language in the sense that they will be able to write minimal types of programs and run the code. It is not intended to go into advanced topics like concurrency and use of pointers, data structures, object oriented programming, testing and debugging techniques and other software engineering principals.

The programs are intended to be run in the terminal as that is common to most operating systems. Linux and Mac come preinstalled with a terminal. Windows may or may not have it pre-installed. "Windows Terminal" can be installed from the Microsoft store. Just do a search for it and install it.
## Installation and Setup of V
To setup V for use, navigate to the [vlang](https://vlang.io/) website and download the appropriate installer for your operating system. Install and follow the directions on how to perform further settings for use. If the language has been installed properly you will be able to type the following command in the terminal command line and receive the response shown:
```
$ v version
V 0.4.8 e61475e
(Note: the version shown here varies with your installed version, and the os and cpu will match your os and cpu type)
```
## Statements
A statement is an instruction that a program can execute. They are usually made line by line in your coding file. Lines in your code can have multiple statements that are separated typically by semicolons.
## Comments
Comments are used to document what your code does so that others can understand it when reviewing your code. Comments also document items that are non-performant in order to debug the code items at a later date.
## Keywords
## Operators
> ### 1. Arithmetic Operators
>> a. **+**: add numbers
>>
>> b. **-**: subtract numbers
>>
>> c. **/**: divide one number by another
>>
>> d. **%**: remainder of dividing one number by another
>>
>> e. 
## Data Types

> ### 1.  Variables
>> a.  **String, string, str**: used for storing text and/or characters
>> 
>> b.  **Char, char, Character, character**: a single character/letter/number, or ASCII values, UTF-8 code unit
>> 
>> c.  **wchar**: UTF-16 code unit
>> 
>> d.  **dchar**: UTF-32 code unit and Unicode code point
>> 
>> e.  **Numbers**
>>
>>>  1.  *Number, number, numeric*: stores numeric data with or without decimal
>>>
>>>  2.  *Int8, int8, i8,sbyte*: stores positive or negative integers from -2^7 to (2^7)-1, with 3 significant figure precision
>>>
>>>  3.  *Int16, int16, i16, Short, short*: stores positive or negative integers from -2^15 to (2^15)-1, with 5 significant figure precision
>>>
>>>  4.  *Int32, int32, i32, Int, int, Integer, integer*: stores positive or negative integers from -2^31 to (2^31)-1, with 10 significant figure precision
>>>
>>>  5.  *Int64, int64, i64, bigint, Long, long*: stores positive or negative integers from -2^63 to (2^63)-1, with 19 significant figure precision
>>>
>>>  6.  *Int128, i128*: stores positive or negative integers from -2^127 to (2^127)-1, with 39 significant figure precision
>>>
>>>  7.  *isize*: same as i32 or i64 depending on computer architecture
>>>
>>>  8.  *UInt8, unint8, u8, ubyte, Byte, byte, bytes*: stores positive integers from 0 to (2^8)-1, with 3 significant figure precision
>>>
>>>  9.  *UInt16, unint16, u16, ushort*: stores positive integers from 0 to (2^16)-1, with 5 significant figure precision
>>>
>>> 10.  *UInt32, uint32, unint32, u32, uint*: stores positive integers from 0 to (2^32)-1, with 10 significant figure precision
>>>
>>> 11.  *UInt64, uint64, unint64, u64, ulong*: stores positive integers from 0 to (2^64)-1, with 19 significant figure precision
>>>
>>> 12.  *UInt128, u128*: stores positive integer numbers from 0 to (2^128)-1, with 39 significant figure precision
>>>
>>> 13.  *usize*: same as u32 or u64 depending on computer architecture
>>>
>>> 14.  *Real, real*: either the largest floating point type that the hardware supports, or double; whichever is larger
>>>
>>> 15.  *Float16*: stores fractional numbers from -2^15 to (2^15)-1, with 5 significant figure precision
>>>
>>> 16.  *Float32, float32, f32, Float, float*: stores fractional numbers from -2^31 to (2^31)-1, with 10 significant figure precision 
>>>
>>> 17.  *Double, double, Float64, float64, f64*: stores fractional numbers from -2^63 to (2^63)-1, with 19 significant figure precision
>>>
>>> 18.  *decimal*: stores numbers from -7.9E-28 to +7.9E28 (28 digits of precision)
>>>
>>> 19.  *BigRational*: construction of number from an i32 numerator and i32 denominator
>>>
>>> 20.  *Complex, complex, cfloat*: complex number type made of two floats
>>>
>>> 21.  *cdouble*: complex number type made of two doubles
>>>
>>> 22.  *creal*: complex number type made of two reals 
>>>
>>> 23.  *ifloat*: imaginary value type of float
>>>
>>> 24.  *idouble*: imaginary value type of double
>>>
>>> 25.  *ireal*: imaginary value type of real
> ### 2. **Boolean, boolean, Bool, bool, Logical, logical**: values of True, true, False, false or None
> ### 3. **Lists**
>> a. Arrays      
> ### 4. **Tuples**
> ### 5. **Dictionaries**
> ### 6. **Sets**
> ### 7. **Frozen Set**
## Command Line Input and Output
> ### 1. Command Line Input: program input from the user entered from the command line interface (CLI)
>> a. Input casting: type casting of input variables for the purpose of processing the data with the appropriate data type
>> b. Handling Errors from incorrect input types: Errors will occur from time to time when the data provided by the user is in the incorrect data type for the program to process the data. When errors occur the program will need instruction on what to do in that instance. Otherwise it will terminate with a warning or an error.
> ### 2. Command Line Output: command line output will be in the form of numbers, strings, booleans and characters produced by a output keyword such as print, println, PrintLn!, console.log(), ConsoleWriteLine(), etc.
>> a. String Formatting: strings can be formatted to produce a specific output format based upon numbers, strings, booleans and their presentation types
## Functions
> ### 1. **Range**: Data range function typically using in for loops
> ### 2. **Date and Time**: produces the date and time in a specified format
## Conditional Statements
> ### 1. **if**: performs a statement 'if' a condition is met
> ### 2. **if-else**: performs a statement 'if' a condition is met and if not (ie. 'else') performs the default statement
> ### 3. **if-else**: performs a statement 'if' a condition is met and if not, performs a statement 'else if' a condition is met and if not (ie. 'else') performs the default statement
## Iterative Statements
> ###  1. **for**: loop statement over a defined range of predetermined variables or values
> ###  2. **for-in, for-each, for-of**: loop statement over each element in an array
> ###  4. **while**: indefinite loop that is terminated while a condition is true
> ###  5. **while-let**: while let destructures a variable into another variable perform a block of code else break
> ###  6. **if-let**: if let destructures a variable into another variable perform a block of code
> ###  6. **do, do-while, do-until, do-loop-while, do-loop-until, repeat-while, repeat-until, repeat-if**: repeats a bock of code while a boolean condition is true or until the condition becomes true
> ### 10. **loop**: indefinite loop that requires a break statement to terminate the loop
## Transfer Statements
> ### 1. **break**: terminates a statement at the point of call
> ### 2. **continue**: continues to the next loop increment
> ### 3. **pass**: it is a null statement used to pass the statement flow on to the next statement in a function or class in which we have not determined the correct code to put in it yet
> ### 4. **goto**: sends the control flow to a specific statement
> ### 5. **fallthrough**: in swift this statement forces the program to check each case and not stop at the first valid case
## Classes
## Modules
## File Input and Output
> ### 1. File Input
>> a. Input casting.
>>
>> b. Handling Errors from incorrect input types.
>>
>> c. json
>>
>> d. html
>>
>> e. xml
>>
>> f. csv
>>
> ### 2. File Output
>> a. String Formatting
>>
>> b. json
>>
>> c. html
>>
>> d. xml
>>
>> e. csv
>>
