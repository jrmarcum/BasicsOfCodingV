// In Go, an _array_ is a numbered sequence of elements of a
// specific length.

fn main() {

	// Here we create an array `a` that will hold exactly
	// 5 `int`s. The type of elements and length are both
	// part of the array's type. By default an array is
	// zero-valued, which for `int`s means `0`s.
	mut a := [5]int{}
	println("emp: $a")

	// We can set a value at an index using the
	// `array[index] = value` syntax, and get a value with
	// `array[index]`. You must add the '{}' braces around
	// the variable or V will think the brackets after the
	// variable is text.
	a[4] = 100
	println("set: $a")
	println("get: ${a[4]}")

	// The builtin `len` returns the length of an array.
  	s1 := a.len
	println("len: $s1")

	// Use this syntax to declare and initialize an array
	// in one line.
	b := [1, 2, 3, 4, 5]
	println("dcl: $b")

	// Array types are one-dimensional, but you can
	// compose types to build multi-dimensional data
	// structures.
	mut two_d := [][]int{len: 2, init: []int{len:3}}
	for i := 0; i < 2; i++ {
		for j := 0; j < 3; j++ {
			two_d[i][j] = i + j
		}
	}
	println("2d: $two_d")

	// Here we make an array of
	// `string`s of length `3` (initially zero-valued).
	mut s := []string{cap: 3}
	println("emp: $s")

	// We can set and get just like with arrays.
	s << "a"
	s << "b"
	s << "c"
	println("set: $s")
	println("get: ${s[2]}")

	// `len` returns the length of the slice as expected.
	println("len: ${s.len}")

	// In addition to these basic operations, slices
	// support several more that make them richer than
	// arrays. One is the builtin `append`, which
	// returns a slice containing one or more new values.
	// Note that we need to accept a return value from
	// `append` as we may get a new slice value.
	s << "d"
	s << ["e", "f"]
	println("apd: $s")

	// Slices can also be `copy`'d. Here we create an
	// empty slice `c` of the same length as `s` and copy
	// into `c` from `s`.
	c := s.clone()
	println("cpy: $c")
}
