// We often need our programs to perform operations on collections of data.
// V provides built-in higher-order functions on arrays: `.filter()`, `.map()`,
// `.any()`, and `.all()`.

fn index(vs []string, t string) int {
	for i, v in vs {
		if v == t {
			return i
		}
	}
	return -1
}

fn include(vs []string, t string) bool {
	return index(vs, t) >= 0
}

fn main() {
	strs := ['peach', 'apple', 'pear', 'plum']

	println(index(strs, 'pear'))

	println(include(strs, 'grape'))

	// `.any()` returns true if any element satisfies the predicate.
	println(strs.any(it.starts_with('p')))

	// `.all()` returns true if all elements satisfy the predicate.
	println(strs.all(it.starts_with('p')))

	// `.filter()` returns a new array of elements satisfying the predicate.
	println(strs.filter(it.contains('e')))

	// `.map()` applies a function to every element.
	println(strs.map(it.to_upper()))
}
