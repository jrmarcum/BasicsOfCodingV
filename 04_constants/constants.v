// v supports _constants_ of character, string, boolean,
// and numeric values.

import math

// `const` declares a constant value.

// A `const` statement must be declared outside
// of functions.

// multiple constants can be defined at the same
// time by adding '(' ')' around them.
const (
        s = "constant"
        n = 500000000
        d = 3e20 / n
      )

fn main() {
	println(s)

	// Constant expressions perform arithmetic with
	// arbitrary precision.
	println(d)

	// A numeric constant has no type until it's given
	// one, such as by an explicit conversion.
	println(i64(d))

	// A number can be given a type by using it in a
	// context that requires one, such as a variable
	// assignment or function call. For example, here
	// `math.sin` expects a `float64`.
	println(math.sin(n))
}
