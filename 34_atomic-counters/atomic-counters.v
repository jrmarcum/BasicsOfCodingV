// The primary mechanism for managing state in V is communication over channels.
// For simple counters accessed by multiple goroutines, V provides atomic
// operations via a mutex-protected counter or the `sync` module.
import sync

struct AtomicU64 {
mut:
	mu  sync.Mutex
	val u64
}

fn (mut a AtomicU64) add(delta u64) {
	a.mu.lock()
	a.val += delta
	a.mu.unlock()
}

fn (mut a AtomicU64) load() u64 {
	a.mu.lock()
	v := a.val
	a.mu.unlock()
	return v
}

fn main() {
	mut ops := AtomicU64{}
	mut wg := sync.new_waitgroup()

	// Start 50 goroutines that each increment the counter 1000 times.
	wg.add(50)
	for _ in 0..50 {
		go fn [mut ops, mut wg] () {
			for _ in 0..1000 {
				ops.add(1)
			}
			wg.done()
		}()
	}

	wg.wait()

	println('ops: ${ops.load()}')
}
