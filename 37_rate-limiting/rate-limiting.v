// _Rate limiting_ is an important mechanism for controlling resource utilization
// and maintaining quality of service. V supports rate limiting with goroutines,
// channels, and tickers.
import time

fn main() {
	// First we'll look at basic rate limiting. Suppose we want to limit
	// our handling of incoming requests. We'll serve these requests off a
	// channel of the same name.
	requests := chan int{cap: 5}
	for i in 1..6 {
		requests <- i
	}
	requests.close()

	// This `limiter` goroutine sends a value every 200ms.
	limiter := chan time.Time{cap: 1}
	go fn [limiter] () {
		for {
			time.sleep(200 * time.millisecond)
			limiter <- time.now()
		}
	}()

	// By receiving from `limiter` before serving each request, we limit
	// ourselves to 1 request every 200ms.
	for {
		req := <-requests or { break }
		<-limiter
		println('request ${req} ${time.now()}')
	}

	// We may want to allow short bursts of requests while preserving the
	// overall rate limit. Pre-fill a bursty limiter channel with 3 values.
	bursty_limiter := chan time.Time{cap: 3}
	for _ in 0..3 {
		bursty_limiter <- time.now()
	}

	// Refill the bursty limiter every 200ms.
	go fn [bursty_limiter] () {
		for {
			time.sleep(200 * time.millisecond)
			bursty_limiter <- time.now()
		}
	}()

	// Now simulate 5 more incoming requests.
	bursty_requests := chan int{cap: 5}
	for i in 1..6 {
		bursty_requests <- i
	}
	bursty_requests.close()

	for {
		req := <-bursty_requests or { break }
		<-bursty_limiter
		println('request ${req} ${time.now()}')
	}
}
