// V has built-in support for _multiple return values_.

fn vals() (int, int) {
	return 3, 7
}

fn main() {
	// Here we use the 2 different return values from the call with
	// multiple assignment.
	a, b := vals()
	println(a)
	println(b)

	// If you only want a subset of the returned values, use the
	// blank identifier `_`.
	_, c := vals()
	println(c)
}
