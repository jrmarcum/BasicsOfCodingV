// In this example we'll look at how to implement a _worker pool_ using
// goroutines and channels.
import time

fn worker(id int, jobs chan int, results chan int) {
	for {
		j := <-jobs or { break }
		println('worker ${id} started  job ${j}')
		time.sleep(time.second)
		println('worker ${id} finished job ${j}')
		results <- j * 2
	}
}

fn main() {
	const num_jobs = 5
	jobs := chan int{cap: num_jobs}
	results := chan int{cap: num_jobs}

	// Start up 3 workers, initially blocked because there are no jobs yet.
	for w in 1..4 {
		go worker(w, jobs, results)
	}

	// Send 5 jobs and close the channel to indicate that's all the work.
	for j in 1..num_jobs + 1 {
		jobs <- j
	}
	jobs.close()

	// Collect all the results of the work.
	for _ in 1..num_jobs + 1 {
		<-results
	}
}
