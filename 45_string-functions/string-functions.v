// The standard library provides many useful string-related functions.
// In V these are methods on the string type rather than package functions.

fn main() {
	// Here's a sample of string methods available in V.
	println('Contains:  ${\'test\'.contains('es')}')
	println('Count:     ${'test'.count('t')}')
	println('HasPrefix: ${'test'.starts_with('te')}')
	println('HasSuffix: ${'test'.ends_with('st')}')
	println('Index:     ${'test'.index('e') or { -1 }}')
	println('Join:      ${['a', 'b'].join('-')}')
	println('Repeat:    ${'a'.repeat(5)}')
	println('Replace:   ${'foo'.replace('o', '0')}')
	println('Replace:   ${'foo'.replace_once('o', '0')}')
	println('Split:     ${'a-b-c-d-e'.split('-')}')
	println('ToLower:   ${'TEST'.to_lower()}')
	println('ToUpper:   ${'test'.to_upper()}')
	println()

	// Not part of strings, but worth mentioning: byte length and indexing.
	println('Len: ${'hello'.len}')
	println('Char: ${'hello'[1]}')
}
