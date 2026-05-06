// `for` is V's only looping construct.

fn main() {
	// The most basic form uses a single condition (like a while loop).
	mut i := 1
	for i <= 3 {
		println(i)
		i++
	}

	// A classic initial/condition/post `for` loop.
	for j := 7; j <= 9; j++ {
		println(j)
	}

	// `for` without a condition loops forever until you `break`.
	for {
		println('loop')
		break
	}

	// You can `continue` to the next iteration with a condition.
	for n in 0..6 {
		if n % 2 == 0 {
			println(n)
		}
	}
}
