// `for` is v's only looping construct. Here are
// some basic types of `for` loops.

fn main() {

	// The most basic type, with a single condition.
	mut i := 1
	for i <= 3 {
		println(i)
		i = i + 1
	}

	// A classic initial/condition/after `for` loop.
	for j := 7; j <= 9; j++ {
		println(j)
	}

	// `for` without a condition will loop repeatedly
	// until you `break` out of the loop or `return` from
	// the enclosing function.
	for {
		println("loop")
		break
	}

	// You can also `continue` to the next iteration of
	// the loop.
	for n := 0; n <= 5; n++ {
		if n%2 == 0 {
			continue
		}
		println(n)
	}
}
