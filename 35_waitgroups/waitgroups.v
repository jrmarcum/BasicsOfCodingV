// To wait for multiple goroutines to finish, we can use a _wait group_.
import sync
import time

fn worker(id int) {
	println('Worker ${id} starting')
	// Sleep to simulate an expensive task.
	time.sleep(time.second)
	println('Worker ${id} done')
}

fn main() {
	mut wg := sync.new_waitgroup()

	// Launch several goroutines and increment the WaitGroup counter for each.
	for i in 1..6 {
		wg.add(1)
		go fn [mut wg, i] () {
			defer { wg.done() }
			worker(i)
		}()
	}

	// Block until the WaitGroup counter goes back to 0;
	// all the workers have notified they're done.
	wg.wait()
}
