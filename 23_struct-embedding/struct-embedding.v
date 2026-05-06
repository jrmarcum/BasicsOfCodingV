// V supports _embedding_ of structs to express seamless composition of types.

struct Base {
	num int
}

fn (b Base) describe() string {
	return 'base with num=${b.num}'
}

// A `Container` _embeds_ a `Base`. An embedding looks like a field
// with the type name as its field name.
struct Container {
	Base
	str string
}

interface Describer {
	describe() string
}

fn main() {
	// When creating structs with literals, initialize the embedded struct
	// explicitly using the embedded type's name as the field name.
	co := Container{
		Base: Base{ num: 1 }
		str: 'some name'
	}

	// We can access the base's fields directly on `co`, e.g. `co.num`.
	println('co={num: ${co.num}, str: ${co.str}}')

	// Alternatively, spell out the full path via the embedded type name.
	println('also num: ${co.Base.num}')

	// Since `Container` embeds `Base`, the methods of `Base` also become
	// methods of a `Container`.
	println('describe: ${co.describe()}')

	// Embedding structs with methods bestows interface implementations
	// onto the outer struct. `Container` now satisfies `Describer`.
	d := Describer(co)
	println('describer: ${d.describe()}')
}
