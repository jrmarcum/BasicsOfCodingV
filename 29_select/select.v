// V's `select` lets you wait on multiple channel operations.
// Combining goroutines and channels with `select` is a powerful feature of V.
import time

fn main() {
	// For our example we'll select across two channels.
	c1 := chan string{}
	c2 := chan string{}

	// Each channel will receive a value after some amount of time,
	// to simulate blocking RPC operations in concurrent goroutines.
	go fn [c1] () {
		time.sleep(time.second)
		c1 <- 'one'
	}()
	go fn [c2] () {
		time.sleep(2 * time.second)
		c2 <- 'two'
	}()

	// We'll use `select` to await both of these values simultaneously,
	// printing each one as it arrives.
	for _ in 0..2 {
		select {
			msg1 := <-c1 { println('received ${msg1}') }
			msg2 := <-c2 { println('received ${msg2}') }
		}
	}
}
