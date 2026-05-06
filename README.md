# Basics of Coding V
## Preface
What this text is and what it is not: This text is intended to introduce the reader to the basics of the V programming language in the sense that they will be able to write minimal types of programs and run the code. It is not intended to go into advanced topics like concurrency and use of pointers, advanced data structures, object oriented programming, testing and debugging techniques and other software engineering principals.

The programs are intended to be run in the terminal as that is common to most operating systems. Linux and Mac come preinstalled with a terminal. Windows may or may not have it pre-installed. "Windows Terminal" can be installed from the Microsoft store. Just do a search for it and install it.
## Installation and Setup of V
To setup V for use, navigate to the [vlang](https://vlang.io/) website and follow the installation instructions for your operating system. A package manager makes the install process much easier (brew for Mac, chocolatey for Windows, and varies based on Linux distribution). If the language has been installed properly you will be able to type the following command in the terminal command line and receive the response shown:
```
$ v version
V 0.4.x ...
(Note: the version shown here varies with your installed version)
```
## How to Run Examples

Each lesson folder contains a `.v` source file and a `.md` file showing the run command and expected output. To run any example, navigate to its folder in your terminal first, then use the command shown in the `.md` file:

```
$ cd 01_hello-world
$ v run hello-world.v
```

## Comments
Comments are used to document what your code does so that others can understand it when reviewing your code. Comments also document items that are non-performant in order to debug the code items at a later date.
## Keywords
|           |           |          |          |          |
|:---------:|:---------:|:--------:|:--------:|:--------:|
| as        | asm       | assert   | atomic   | break    |
| const     | continue  | defer    | else     | enum     |
| fn        | for       | go       | goto     | if       |
| import    | in        | interface| is       | lock     |
| match     | module    | mut      | none     | or       |
| pub       | return    | rlock    | select   | shared   |
| sizeof    | spawn     | static   | struct   | type     |
| typeof    | union     | unsafe   | volatile |          |
## Identifiers

## Operators
> ### Arithmetic Operators
> |        |                                                    |
> |:------:|:---------------------------------------------------|
> | **+**  | add one number to another number                   |
> | **-**  | subtract one number from another number            |
> | **\*** | multiply one number by another number              |
> | **/**  | divide one number by another number                |
> | **%**  | remainder of dividing one number by another number |
> | **++** | increase the value of a variable by 1              |
> | **--** | decrease the value of a variable by 1              |
> ### Comparison Operators
> |        |                                                         |
> |:------:|:--------------------------------------------------------|
> | **==** | check if a variable is equal to another                 |
> | **!=** | check if a variable is not equal to another             |
> | **>**  | check if a variable is greater than another             |
> | **<**  | check if a variable is less than another                |
> | **>=** | check if a variable is greater than or equal to another |
> | **<=** | check if a variable is less than or equal to another    |
> ### Logical Operators
> |          |                                                 |
> |:--------:|:------------------------------------------------|
> | **&&**   | returns true if both statements are true        |
> | **\|\|** | returns true if one of the statements are true  |
> | **!**    | reverse the result of a true or false statement |
> ### Assignment Operators
> |         |                                                                                                              |
> |:-------:|:-------------------------------------------------------------------------------------------------------------|
> | **=**   | assign a data type to a variable                                                                             |
> | **+=**  | add a number to the existing value of a variable and assign the result to variable                           |
> | **-=**  | subtract a number to the existing value of a variable and assign the result to variable                      |
> | **\*=** | multiply a number to the existing value of a variable and assign the result to variable                      |
> | **/=**  | divide the existing value of a variable by a number and assign the result to variable                        |
> | **%=**  | take the remainder of the existing value of a variable divided by a number and assign the result to variable |
## Data Types
  ###  1.  Variables
>> #### a.  **String, string**: used for storing text and/or characters
>>
>> #### b.  **rune**: an integer representing a Unicode code point
>>
>> #### c.  **Numbers**
>>>
>>> #####  1)  *int*: stores positive or negative integers (platform-dependent size)
>>>
>>> #####  2)  *i8*: stores positive or negative integers from -2^7 to (2^7)-1
>>>
>>> #####  3)  *i16*: stores positive or negative integers from -2^15 to (2^15)-1
>>>
>>> #####  4)  *i32*: stores positive or negative integers from -2^31 to (2^31)-1
>>>
>>> #####  5)  *i64*: stores positive or negative integers from -2^63 to (2^63)-1
>>>
>>> #####  6)  *u8 (byte)*: stores positive integers from 0 to (2^8)-1
>>>
>>> #####  7)  *u16*: stores positive integers from 0 to (2^16)-1
>>>
>>> #####  8)  *u32*: stores positive integers from 0 to (2^32)-1
>>>
>>> #####  9)  *u64*: stores positive integers from 0 to (2^64)-1
>>>
>>> ##### 10)  *f32*: stores fractional numbers with 32-bit IEEE 754 precision
>>>
>>> ##### 11)  *f64*: stores fractional numbers with 64-bit IEEE 754 precision
> ###  2. **Constants** :
> ###  3. **Boolean, bool**: values of `true` or `false`
> ###  4. **Arrays**: `[]T` — dynamic arrays of a single type
> ###  5. **Maps**: `map[K]V` — hash-map / dictionary type
## Functions
> ###  1. **Range**: `0..n` exclusive upper bound; `0...n` inclusive upper bound
> ###  2. **Date and Time**: `time` module provides date/time formatting and arithmetic
## Statements
A statement is an instruction that a program can execute. They are usually made line by line in your coding file.
> ### Conditional Statements
> |             |                                                                                                     |
> |:-----------:|:----------------------------------------------------------------------------------------------------|
> | **if-else** | performs a statement 'if' a condition is met and if not (ie. 'else') performs the default statement |
> | **match**   | V's equivalent of switch; matches a value against patterns and executes the matching branch         |
> ### Iterative Statements
> |                   |                                                                                              |
> |:-----------------:|:---------------------------------------------------------------------------------------------|
> | **for**           | V's only loop keyword — covers C-style for, while-style, and infinite loops                 |
> | **for in**        | loop statement over each element in an array, map, or range                                  |
> ### Transfer Statements
> |                 |                                             |
> |:---------------:|:--------------------------------------------|
> | **break**       | terminates a loop at the point of call      |
> | **continue**    | continues to the next loop increment        |
> | **goto**        | sends the control flow to a specific label  |
## File Input and Output
> ###  1. File Input
>> #### a. os.read_file()
>>
>> #### b. json decoding with `json.decode`
>>
> ###  2. File Output
>> #### a. String Formatting with `'${var}'`
>>
>> #### b. json encoding with `json.encode`
>>
>> #### c. os.write_file()

## Attribution

This project is adapted in part from **[Basics of Coding Go](https://github.com/jrmarcum/BasicsOfCodingGo)**
by [Jon Marcum](https://github.com/jrmarcum), which was itself adapted from
**[Go by Example](https://github.com/mmcgrana/gobyexample)**
by [Mark McGranaghan](https://github.com/mmcgrana), both licensed under the
[Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/).

The lesson files and code examples derived from those works retain their
CC BY 3.0 license. This project exists as a platform for multi-language
comparative study of syntax, language simplicity, lines of code required,
and compile/run performance.

## License

This repository contains two tiers of content:

| Content | License |
| --- | --- |
| Lesson files and code examples adapted from *Basics of Coding Go* / *Go by Example* | [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/) — see NOTICE |
| Original contributions by Jon Marcum (project structure, README, comparative study additions) | [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) — see LICENSE |

The root `LICENSE` file (CC0) applies to Jon Marcum's original contributions.
The `NOTICE` file clarifies that CC BY 3.0 governs all content adapted from *Go by Example* and *Basics of Coding Go*.
