// In v, _variables_ are explicitly declared and used by
// the compiler to e.g. check type-correctness of function
// calls.


fn main() {

	// `:=` initializes 1 immutable variable.
	a := "initial"
	println(a)

  // `mut` initializes 1 mutable variable.
	mut g := "mutable"
	println(g)

  // values of mulitple variables can be swapped in one line
  mut h:=0
  mut i:=1
  println('$h, $i')
  h,i = i, h
  println('$h, $i')

	// v will infer the type of initialized variables.
	d := true
	println(d)

	// Variables must be declared with a corresponding
	// initialization. For Example e:= int() would throw
  // an error.
	e := int(0)
	println(e)

	// The `mut` syntax is for declaring mutable variables
	// `mut f string := "apple"` in this case.
	mut f := "apple"
  println(f)
  f = "pear"
	println(f)
}
