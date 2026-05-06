// For more complex state we can use a _mutex_ to safely access data
// across multiple goroutines.
import sync

struct Container {
mut:
	mu       sync.Mutex
	counters map[string]int
}

fn (mut c Container) inc(name string) {
	// Lock the mutex before accessing `counters`; unlock it when done.
	c.mu.lock()
	c.counters[name]++
	c.mu.unlock()
}

fn main() {
	mut c := Container{
		counters: {
			'a': 0
			'b': 0
		}
	}

	mut wg := sync.new_waitgroup()

	do_increment := fn [mut c, mut wg] (name string, n int) {
		for _ in 0..n {
			c.inc(name)
		}
		wg.done()
	}

	wg.add(3)
	go do_increment('a', 10000)
	go do_increment('a', 10000)
	go do_increment('b', 10000)

	wg.wait()
	println(c.counters)
}
