// V offers string formatting via interpolation with format specifiers.

import os

struct Point {
	x int
	y int
}

fn main() {
	p := Point{ x: 1, y: 2 }

	// V prints structs with field names by default.
	println('${p}')

	// `${p}` uses V's default struct representation.
	println('struct: ${p}')

	// Print the type of a value with `typeof`.
	println('type: ${typeof(p).name}')

	// Formatting booleans.
	println('${true}')

	// Standard integer formatting.
	println('${123}')

	// Binary representation.
	println('${14:b}')

	// Character from integer.
	println('${33:c}')

	// Hex encoding.
	println('${456:x}')

	// Float formatting with decimal places.
	println('${78.9:.6f}')

	// Scientific notation.
	println('${123400000.0:e}')
	println('${123400000.0:E}')

	// Basic string.
	println('"string"')

	// Quoted string.
	println('"string"')

	// Hex of string bytes.
	println('hex this'.bytes().hex())

	// Width and precision for numbers.
	println('|${12:6}|${345:6}|')
	println('|${1.2:6.2f}|${3.45:6.2f}|')
	println('|${1.2:-6.2f}|${3.45:-6.2f}|')

	// Width for strings.
	println('|${\'foo\':6}|${'b':6}|')
	println('|${\'foo\':-6}|${'b':-6}|')

	// Sprintf equivalent: format and return a string.
	s := 'a string'
	println('a ${s}')

	// Print to stderr.
	eprintln('an error')

	_ = os.stdout()
}
