// _Functions_ are central in V. We'll show how to define and call functions.

fn plus(a int, b int) int {
	return a + b
}

fn plus_plus(a int, b int, c int) int {
	return a + b + c
}

fn main() {
	// Call a function just as you'd expect, with `name(args)`.
	res := plus(1, 2)
	println('1+2 = ${res}')

	res2 := plus_plus(1, 2, 3)
	println('1+2+3 = ${res2}')
}
