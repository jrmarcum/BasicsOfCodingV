// Sometimes we'll want to sort a collection by something other than its
// natural order. V's `sort_with_compare` method allows custom comparators.

fn main() {
	// Sort strings by their length.
	mut fruits := ['peach', 'kiwi', 'apple']
	fruits.sort_with_compare(fn (a &string, b &string) int {
		if a.len < b.len {
			return -1
		} else if a.len > b.len {
			return 1
		}
		return 0
	})
	println(fruits)

	// We can also sort int arrays with a custom comparator.
	// Here we sort in descending order.
	mut ints := [7, 2, 4]
	ints.sort_with_compare(fn (a &int, b &int) int {
		if *a > *b {
			return -1
		} else if *a < *b {
			return 1
		}
		return 0
	})
	println(ints)

	// For structs, sort by a specific field.
	struct Person {
		name string
		age  int
	}

	mut people := [
		Person{ name: 'Jax', age: 37 },
		Person{ name: 'TJ', age: 25 },
		Person{ name: 'Alex', age: 72 },
	]
	people.sort_with_compare(fn (a &Person, b &Person) int {
		if a.age < b.age {
			return -1
		} else if a.age > b.age {
			return 1
		}
		return 0
	})
	println(people)
}
