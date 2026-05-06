// In V, _array_ is a sequence of elements of the same type.

fn main() {
	// Here we create an array `a` that will hold exactly 5 `int`s.
	// The type is inferred and all elements are zero-initialized.
	mut a := []int{len: 5}
	println('emp: ${a}')

	// We can set a value at an index using the `array[index] = value` syntax,
	// and get a value with `array[index]`.
	a[4] = 100
	println('set: ${a}')
	println('get: ${a[4]}')

	// The built-in `len` returns the length of an array.
	println('len: ${a.len}')

	// Use this syntax to declare and initialize an array in one line.
	b := [1, 2, 3, 4, 5]
	println('dcl: ${b}')

	// V arrays are dynamic; `<<` appends to an array.
	mut c := [1, 2, 3]
	c << 4
	c << 5
	println('apd: ${c}')

	// Array slices are supported with the `arr[low..high]` syntax.
	println('sl1: ${c[2..5]}')
	println('sl2: ${c[..3]}')
	println('sl3: ${c[2..]}')

	// Two-dimensional arrays.
	mut two_d := [][]int{len: 2, init: []int{len: 3}}
	for i in 0..2 {
		for j in 0..3 {
			two_d[i][j] = i + j
		}
	}
	println('2d: ${two_d}')
}
