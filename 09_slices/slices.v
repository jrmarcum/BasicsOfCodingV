// V dynamic arrays are equivalent to Go slices — they grow as needed.

fn main() {
	// Unlike Go's typed nil slices, an uninitialized V array is empty.
	// Use `[]string{}` to create an empty dynamic array.
	mut s := []string{}
	println('uninit: ${s} ${s == []} ${s.len == 0}')

	// To create an empty array with non-zero length, use `len:`.
	mut s2 := []string{len: 3}
	println('emp: ${s2} len: ${s2.len}')

	// We can set and get just like with arrays above.
	s2[0] = 'a'
	s2[1] = 'b'
	s2[2] = 'c'
	println('set: ${s2}')
	println('get: ${s2[2]}')

	println('len: ${s2.len}')

	// `<<` appends one or more new values to the array.
	s2 << 'd'
	s2 << 'e'
	s2 << 'f'
	println('apd: ${s2}')

	// Arrays can be sliced with `arr[low..high]`.
	l := s2[2..5]
	println('sl1: ${l}')
	println('sl2: ${s2[..3]}')
	println('sl3: ${s2[2..]}')

	// Copy an array.
	t := s2.clone()
	println('cpy: ${t}')
}
