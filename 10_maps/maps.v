// _Maps_ are V's built-in [associative data type](http://en.wikipedia.org/wiki/Associative_array)
// (sometimes called _hashes_ or _dicts_ in other languages).

fn main() {

	// To create an empty map, use the builtin `make`:
	// `make(map[key-type]val-type)`.
	mut m := map[string]int{}

	// Set key/value pairs using typical `name[key] = val`
	// syntax.
	m['k1'] = 7
	m['k2'] = 13

	// Printing a map with e.g. `fmt.Println` will show all of
	// its key/value pairs.
	println('map: $m')

	// Get a value for a key with `name[key]`.
	v1 := m['k1']
	println('v1: $v1')

	// The builtin `len` returns the number of key/value
	// pairs when called on a map.
	println('len: ${m.len}')

	// The builtin `delete` removes key/value pairs from
	// a map.
	m.delete('k2')
	println('map: $m')

	// If getting a value from a map when the key
	// is not present in the map, the key will produce
	// a zero value by default. You can also use and or
	// {} block to handle the missing keys.
	prs1 := m['k2']
	println('prs1: $prs1')

	// You can also declare and initialize a new map in
	// the same line with this syntax.
	n := {'foo': 1, 'bar': 2}
	println('map: $n')
}
