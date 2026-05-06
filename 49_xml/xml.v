// V does not include a standard XML encoding package equivalent to Go's
// `encoding/xml`. This example demonstrates basic XML generation using
// string interpolation — the idiomatic V approach for simple XML output.

struct Plant {
	id     int
	name   string
	origin []string
}

fn (p Plant) to_xml() string {
	mut origins := ''
	for o in p.origin {
		origins += '    <origin>${o}</origin>\n'
	}
	return ' <plant id="${p.id}">\n  <name>${p.name}</name>\n${origins} </plant>'
}

fn (p Plant) str() string {
	return 'Plant id=${p.id}, name=${p.name}, origin=${p.origin}'
}

fn main() {
	coffee := Plant{ id: 27, name: 'Coffee', origin: ['Ethiopia', 'Brazil'] }

	// Emit XML representing our plant.
	println(coffee.to_xml())

	// Add a generic XML header.
	println('<?xml version="1.0" encoding="UTF-8"?>')
	println(coffee.to_xml())

	// Print the struct.
	println(coffee)

	tomato := Plant{ id: 81, name: 'Tomato', origin: ['Mexico', 'California'] }

	// Nest multiple plants.
	mut nested := ' <nesting>\n  <parent>\n   <child>\n'
	for p in [coffee, tomato] {
		nested += '    ${p.to_xml()}\n'
	}
	nested += '   </child>\n  </parent>\n </nesting>'
	println(nested)
}
