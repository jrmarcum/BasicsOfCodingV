// _Defer_ is used to ensure that a block of code runs later in a program's
// execution, usually for cleanup. `defer` is often used where `ensure` and
// `finally` would be used in other languages.
import os

// Suppose we wanted to create a file, write to it, and then close when done.
fn main() {
	// Immediately after getting a file object, we defer the closing of that
	// file. This deferred block will execute at the end of `main`, after
	// `write_file` has finished.
	mut f := create_file('./tmp/defer.txt')
	defer {
		close_file(mut f)
	}
	write_file(mut f)
}

fn create_file(p string) os.File {
	println('creating')
	f := os.create(p) or { panic(err) }
	return f
}

fn write_file(mut f os.File) {
	println('writing')
	f.writeln('data') or { panic(err) }
}

fn close_file(mut f os.File) {
	println('closing')
	f.close()
}
