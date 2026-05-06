import os

fn main() {
	// Write a string directly to a file.
	os.write_file('./tmp/dat1.txt', 'hello\ngo\n') or { panic(err) }

	// Create a file for granular writes.
	mut f := os.create('./tmp/dat2.txt') or { panic(err) }
	defer { f.close() }

	// Write a byte slice.
	d2 := [u8(115), 111, 109, 101, 10]
	n2 := f.write(d2) or { panic(err) }
	println('wrote ${n2} bytes')

	// Write a string.
	n3 := f.write_string('writes\n') or { panic(err) }
	println('wrote ${n3} bytes')

	// Flush writes to stable storage.
	f.flush()

	// Write a buffered string.
	n4 := f.write_string('buffered\n') or { panic(err) }
	println('wrote ${n4} bytes')
	f.flush()
}
