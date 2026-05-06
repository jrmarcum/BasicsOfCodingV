// Branching with `if` and `else` in V is straightforward.

fn main() {
	// Here's a basic example.
	if 7 % 2 == 0 {
		println('7 is even')
	} else {
		println('7 is odd')
	}

	// You can have an `if` statement without an `else`.
	if 8 % 4 == 0 {
		println('8 is divisible by 4')
	}

	// Logical operators like `&&` and `||` are often useful in conditions.
	if 8 % 2 == 0 || 7 % 2 == 0 {
		println('either 8 or 7 are even')
	}

	// Variables declared before `if` are available in all branches.
	num := 9
	if num < 0 {
		println('${num} is negative')
	} else if num < 10 {
		println('${num} has 1 digit')
	} else {
		println('${num} has multiple digits')
	}
}
