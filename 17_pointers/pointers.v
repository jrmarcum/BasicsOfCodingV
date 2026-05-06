// V supports _pointers_, allowing you to pass references to values.

fn zeroval(ival int) {
	// `zeroval` has an `int` parameter, so arguments will be passed to it by value.
	// `zeroval` will get a copy of `ival` distinct from the one in the calling function.
	_ = ival // suppress unused variable
}

fn zeroptr(iptr &int) {
	// `zeroptr` has a `&int` parameter (a pointer), so it takes an `int` address.
	// The `unsafe` dereference `*iptr` sets the value at that address to 0.
	unsafe {
		*iptr = 0
	}
}

fn main() {
	mut i := 1
	println('initial: ${i}')

	zeroval(i)
	println('zeroval: ${i}')

	// The `&i` syntax gives the address of `i`, i.e. a pointer to `i`.
	zeroptr(&i)
	println('zeroptr: ${i}')

	// Pointers can be printed too.
	println('pointer: ${&i}')
}
