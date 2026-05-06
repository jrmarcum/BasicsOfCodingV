// A _goroutine_ is a lightweight thread of execution. V uses the same
// `go` keyword as Go to spawn goroutines.
import time

fn f(from string) {
	for i in 0..3 {
		println('${from} : ${i}')
	}
}

fn main() {
	// Suppose we have a function call `f(s)`. Here's how
	// we'd call that in the usual way, running it synchronously.
	f('direct')

	// To invoke this function in a goroutine, use `go f(s)`.
	// This new goroutine will execute concurrently with the calling one.
	go f('goroutine')

	// You can also start a goroutine for an anonymous function call.
	go fn() {
		println('going')
	}()

	// Our two function calls are running asynchronously in separate goroutines.
	// Wait for them to finish (for a more robust approach, use a WaitGroup).
	time.sleep(time.second)
	println('done')
}
