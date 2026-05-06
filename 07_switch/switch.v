// V uses `match` instead of Go's `switch`. The `match` expression is
// exhaustive and does not fall through by default.

import time

type Anything = bool | int | string

fn what_am_i(i Anything) {
	match i {
		bool    { println('bool ${i}') }
		int     { println('int ${i}') }
		string  { println('unknown type ${typeof(i).name}') }
	}
}

fn main() {
	// Here's a basic `match`.
	i := 2
	print('Write ${i} as ')
	match i {
		1 { println('one') }
		2 { println('two') }
		3 { println('three') }
		else {}
	}

	// You can use commas to separate multiple expressions in the same branch.
	match time.now().weekday_str() {
		'Sat', 'Sun' { println("It's the weekend") }
		else         { println("It's a weekday") }
	}

	// `match true` is another way to express if/else logic.
	t := time.now().hour
	match true {
		t < 12 { println("It's before noon") }
		else   { println("It's after noon") }
	}

	// Sum-type `match` distinguishes types at compile time.
	what_am_i(true)
	what_am_i(1)
	what_am_i('hey')
}
