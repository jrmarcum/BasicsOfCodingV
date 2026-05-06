// V's _structs_ are typed collections of fields.

struct Person {
	name string
	age  int
}

fn new_person(name string) &Person {
	// You can safely return a pointer to a local variable — V manages memory.
	return &Person{
		name: name
		age:  42
	}
}

fn main() {
	// This syntax creates a new struct.
	println(Person{ name: 'Bob', age: 20 })

	// You can name the fields when initializing a struct.
	println(Person{ name: 'Alice', age: 30 })

	// Omitted fields will be zero-valued.
	println(Person{ name: 'Fred' })

	// An `&` prefix yields a pointer to the struct.
	println(&Person{ name: 'Ann', age: 40 })

	// It's idiomatic to encapsulate new struct creation in constructor functions.
	println(new_person('Jon'))

	// Access struct fields with a dot.
	mut s := Person{ name: 'Sean', age: 50 }
	println(s.name)

	// You can also use dots with struct pointers — the pointer is automatically dereferenced.
	sp := &s
	println(sp.age)

	// Structs are mutable; use `mut` to modify fields.
	sp.age = 51
	println(sp.age)

	// Anonymous struct type.
	dog := struct {
		name  string
		is_good bool
	}{
		name:   'Rex'
		is_good: true
	}
	println(dog)
}
