// V supports _recursive functions_.

fn fact(n int) int {
	if n == 0 {
		return 1
	}
	return n * fact(n - 1)
}

fn main() {
	println(fact(7))

	// Closures can also be recursive, but must be declared with `mut` first.
	mut fib := fn (n int) int { return 0 }
	fib = fn [mut fib] (n int) int {
		if n < 2 {
			return n
		}
		return fib(n - 1) + fib(n - 2)
	}
	println(fib(7))
}
