// V supports _anonymous functions_, which can form _closures_.

// This function `int_seq` returns another function, which we define
// anonymously in the body of `int_seq`. The returned function
// _closes over_ the variable `i` to form a closure.
fn int_seq() fn () int {
	mut i := 0
	return fn [mut i] () int {
		i++
		return i
	}
}

fn main() {
	// We call `int_seq`, assigning the result (a function) to `next_int`.
	// This function value captures its own `i` value, which will be
	// updated each time we call `next_int`.
	mut next_int := int_seq()
	println(next_int())
	println(next_int())
	println(next_int())

	// To confirm that the state is unique to that particular function,
	// create and test a new one.
	mut new_ints := int_seq()
	println(new_ints())
}
