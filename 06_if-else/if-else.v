// Branching with `if` and `else` in v is
// straight-forward.

fn main() {

	// Here's a basic example.
	if 7%2 == 0 {
		println("7 is even")
	} else {
		println("7 is odd")
	}

	// You can have an `if` statement without an else.
	if 8%4 == 0 {
		println("8 is divisible by 4")
	}

	// A variable definition can't procede a conditional
	// statement.

  num := 9
	if num < 0 {
		println('$num is negative')
	} else if num < 10 {
		println('$num has 1 digit')
	} else {
		println('$num has multiple digits')
	}
}

// Note that you don't need parentheses around conditions
// in v, but that the braces are required.
