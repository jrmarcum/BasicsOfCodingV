// Slices are created from a parent array.
// They are not distict types in V.

fn main() {

	// define an array to slice from
	s := [0,1,2,3,4,5]
	println("s: $s \n")

	// Slices support a "slice" operator with the syntax
	// `slice[low:high]`. For example, this gets a slice
	// of the elements `s[2]`, `s[3]`, and `s[4]`.
	mut l := s[2..5]
	println("Slice 1 is index 2 up to but excluding index 5 of s:")
	println("$l \n")

	// This slices up to (but excluding) `s[5]`.
	l = s[..5]
	println("Slice 2 is up to but excluding index 5 of s:")
	println("$l \n")

	// And this slices up from (and including) `s[2]`.
	l = s[2..]
	println("Slice 3 is index 2 and up of s:")
	println("$l \n")

	// This adds a slice from an array to the end of an array.
	l << s[..2]
	println("Slice 4 is sl3 and up to but excluding index 2 of s:")
	println("$l \n")
	
	// This is a parent and child array example with parent dependency
	mut a := [0,1,2,3,4,5]
	mut b := a[1..4]
	println("Parent array 'a':")
	println("$a \n")
	println("Dependent Child array 'b' sliced from 'a':")
	println("$b \n")
	a.reverse_in_place()
	println("Revised Parent array 'a':")
	println("$a \n")
	println("Revised Dependent Child array 'b':")
	println("$b \n")

	// This is an example of the child array becoming independent
	// of the parent array
	b << 6
	a.reverse_in_place()
	println("Revised Parent array 'a':")
	println("$a \n")
	println("Revised Independent Child array 'b':")
	println("$b \n")
}

// need to copy the portions here that really belong in the array section as they are not truely slice type operations