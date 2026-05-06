// V supports _generics_ (type parameters) using `[T]` syntax.

// `slices_index` takes an array of any `comparable` type and returns
// the index of the first occurrence of `v` in `s`, or -1 if not present.
fn slices_index[T](s []T, v T) int {
	for i, val in s {
		if val == v {
			return i
		}
	}
	return -1
}

// `List` is a singly-linked list with values of any type.
struct Element[T] {
	val  T
	next &Element[T] = unsafe { nil }
}

struct List[T] {
mut:
	head &Element[T] = unsafe { nil }
	tail &Element[T] = unsafe { nil }
}

// `push` appends a value to the list.
fn (mut lst List[T]) push(v T) {
	new_elem := &Element[T]{ val: v }
	if lst.tail == unsafe { nil } {
		lst.head = new_elem
		lst.tail = new_elem
	} else {
		unsafe {
			lst.tail.next = new_elem
		}
		lst.tail = new_elem
	}
}

// `all_elements` returns all list elements as an array.
fn (lst List[T]) all_elements() []T {
	mut elems := []T{}
	mut e := lst.head
	for e != unsafe { nil } {
		elems << e.val
		e = unsafe { e.next }
	}
	return elems
}

fn main() {
	s := ['foo', 'bar', 'zoo']

	// Type inference lets us omit the type parameters when calling generic functions.
	println('index of zoo: ${slices_index(s, 'zoo')}')

	mut lst := List[int]{}
	lst.push(10)
	lst.push(13)
	lst.push(23)
	println('list: ${lst.all_elements()}')
}
