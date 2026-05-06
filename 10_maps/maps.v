// _Maps_ are V's associative data type, equivalent to Go maps.

fn main() {
	// To create an empty map, use `map[key_type]value_type{}`.
	mut m := map[string]int{}
	println('map: ${m}')

	// Set key/value pairs using the `map[key] = val` syntax.
	m['k1'] = 7
	m['k2'] = 13
	println('map: ${m}')

	// Printing a map will show all its key/value pairs.
	println('v1: ${m['k1']}')

	// If a key doesn't exist the zero value of the value type is returned.
	println('v3: ${m['k3']}')

	// The built-in `len` returns the number of key/value pairs.
	println('len: ${m.len}')

	// `delete` removes key/value pairs from a map.
	m.delete('k2')
	println('map: ${m}')

	// The optional syntax `map[key] or {}` checks for key presence.
	prs := 'k2' in m
	println('prs: ${prs}')

	// You can also declare and initialize a new map in the same line.
	n := {
		'foo': 1
		'bar': 2
	}
	println('map: ${n}')
}
