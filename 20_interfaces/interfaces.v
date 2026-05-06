// _Interfaces_ are named collections of method signatures.
import math

interface Geometry {
	area() f64
	perim() f64
}

struct Rect {
	width  f64
	height f64
}

struct Circle {
	radius f64
}

// To implement an interface in V, just implement all the required methods.
// There is no explicit `implements` keyword.
fn (r Rect) area() f64 {
	return r.width * r.height
}

fn (r Rect) perim() f64 {
	return 2 * r.width + 2 * r.height
}

fn (c Circle) area() f64 {
	return math.pi * c.radius * c.radius
}

fn (c Circle) perim() f64 {
	return 2 * math.pi * c.radius
}

fn measure(g Geometry) {
	println(g)
	println(g.area())
	println(g.perim())
}

fn main() {
	r := Rect{ width: 3, height: 4 }
	c := Circle{ radius: 5 }

	// The `Circle` and `Rect` struct types both implement the
	// `Geometry` interface so we can use instances of these structs
	// as arguments to `measure`.
	measure(r)
	measure(c)
}
