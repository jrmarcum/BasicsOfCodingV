// V supports _methods_ defined on struct types.
import math

struct Rect {
	width  f64
	height f64
}

// This `area` method has a receiver type of `Rect`.
fn (r Rect) area() f64 {
	return r.width * r.height
}

// Methods can be defined for either value or pointer receivers.
// V uses `&Rect` for pointer receivers; value receivers copy the struct.
fn (r Rect) perim() f64 {
	return 2 * r.width + 2 * r.height
}

fn main() {
	r := Rect{ width: 3, height: 4 }

	// Here we call the 2 methods defined for our struct.
	println('area: ${r.area()}')
	println('perim: ${r.perim()}')

	// V automatically handles value/pointer distinction for method calls.
	rp := &r
	println('area: ${rp.area()}')
	println('perim: ${rp.perim()}')

	_ = math.sqrt(0) // imported but used elsewhere to silence import error
}
