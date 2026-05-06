// Variables are declared and initialized with the `:=` operator.

fn main() {
	// `a` declares and initializes a string variable.
	a := 'initial'
	println(a)

	// Declare multiple variables on separate lines.
	b := 1
	c := 2
	println('${b} ${c}')

	// V infers the type of initialized variables.
	d := true
	println(d)

	// A zero-valued variable has the type's default value.
	mut e := 0
	println(e)
	e = e // suppress unused-variable warning

	// Short declaration also works for string variables.
	f := 'apple'
	println(f)
}
