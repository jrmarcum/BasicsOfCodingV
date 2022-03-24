// match statements express conditionals across many
// branches.

import time

fn what_am_i (p string) {
	match p {
      	'bool' { println("I'm a bool") }
      	'int literal' { println("I'm an int") }
    else { println("Don't know type " + p)}
    }
}

fn main() {

	// Here's a basic `match`.

	i := 2
	print("Write $i as ")
	match i {
	  	1 { println("one") }
	  	2 { println("two") }
	  	3 { println("three") }
    else {}
	}

	// Multiple expressions are defined on 
	// seperate lines. An else statement
	// is used do prodcue a case for undefined
	// cases.

	match  time.now().long_weekday_str() {
	  	"Saturday" { println("It's the weekend") }
    	"Sunday" { println("It's the weekend") }
	else { println("It's a weekday") }
	}

	// `match` without an expression is an alternate way
	// to express if/else logic. Here we also show how the
	// `case` expressions can be non-constants.

	t := time.now().hour
	match true {
		t < 12 { println("It's before noon") }
	else { println("It's after noon") }
	}

	// A type `match` compares same types. So you must pass
	// a string into the match related function for comparison.

	what_am_i(typeof(true).name)
	what_am_i(typeof(1).name)
	what_am_i(typeof("hey").name)
}

