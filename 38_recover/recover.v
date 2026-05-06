// V does not have a `recover` built-in like Go. Instead, V uses the `!T`
// Result type and `or { }` blocks to handle recoverable failures gracefully.
// This example shows the closest V idiom: returning an error from a fallible
// function rather than panicking, then catching it with `or { }`.

fn may_fail() ! {
	return error('a problem')
}

fn main() {
	// `or { }` catches the error, prints it, and continues execution —
	// equivalent to Go's deferred recover pattern.
	may_fail() or {
		println('Recovered. Error:')
		println(' ${err}')
		return
	}

	// This line will not run because `may_fail` returns an error.
	println('After may_fail()')
}
