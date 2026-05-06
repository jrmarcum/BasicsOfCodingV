import os

fn main() {
	// Read the entire file into a string.
	dat := os.read_file('./tmp/dat.txt') or { panic(err) }
	print(dat)

	// Open the file for granular reads.
	mut f := os.open('./tmp/dat.txt') or { panic(err) }
	defer { f.close() }

	// Read the first 5 bytes.
	mut b1 := []u8{len: 5}
	n1 := f.read(mut b1) or { panic(err) }
	println('${n1} bytes: ${b1[..n1].bytestr()}')

	// Seek to position 6 and read 2 bytes.
	f.seek(6, .start) or { panic(err) }
	mut b2 := []u8{len: 2}
	n2 := f.read(mut b2) or { panic(err) }
	println('${n2} bytes @ 6: ${b2[..n2].bytestr()}')

	// Seek again to position 6.
	f.seek(6, .start) or { panic(err) }
	mut b3 := []u8{len: 2}
	n3 := f.read(mut b3) or { panic(err) }
	println('${n3} bytes @ 6: ${b3[..n3].bytestr()}')

	// Rewind to the beginning.
	f.seek(0, .start) or { panic(err) }

	// Read 5 bytes from the start using read_bytes.
	b4 := f.read_bytes(5)
	println('5 bytes: ${b4.bytestr()}')
}
