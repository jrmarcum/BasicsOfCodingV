// _Timeouts_ are important for programs that connect to external resources or
// that otherwise need to bound execution time. Implementing timeouts in V
// is straightforward with channels and `select`.
import time

fn main() {
	// For our example, suppose we're executing an external call that returns
	// its result on a channel `c1` after 2s.
	c1 := chan string{}
	go fn [c1] () {
		time.sleep(2 * time.second)
		c1 <- 'result 1'
	}()

	// Here's the `select` implementing a timeout.
	// `select` awaits the result or the timeout — whichever comes first.
	select {
		res := <-c1 { println(res) }
		1 * time.second { println('timeout 1') }
	}

	// If we allow a longer timeout of 3s, then the receive from `c2`
	// will succeed and we'll print the result.
	c2 := chan string{}
	go fn [c2] () {
		time.sleep(2 * time.second)
		c2 <- 'result 2'
	}()

	select {
		res := <-c2 { println(res) }
		3 * time.second { println('timeout 2') }
	}
}
