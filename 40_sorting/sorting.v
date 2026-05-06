// V's arrays have built-in sorting for common types.

fn main() {
	// Sort methods work in-place on the array.
	// Here's an example for strings.
	mut strs := ['c', 'a', 'b']
	strs.sort()
	println('Strings: ${strs}')

	// An example of sorting `int`s.
	mut ints := [7, 2, 4]
	ints.sort()
	println('Ints:    ${ints}')

	// We can also check if an array is already sorted.
	s := ints == [2, 4, 7]
	println('Sorted:  ${s}')
}
