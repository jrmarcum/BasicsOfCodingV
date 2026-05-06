import os

fn main() {
	tmp := os.temp_dir()

	// Create a temporary file in the OS temp directory.
	fname := os.join_path(tmp, 'sample_${os.getpid()}')
	mut f := os.create(fname) or { panic(err) }
	println('Temp file name: ${fname}')
	defer {
		f.close()
		os.rm(fname) or {}
	}

	f.write([u8(1), 2, 3, 4]) or { panic(err) }

	// Create a temporary directory.
	dname := os.join_path(tmp, 'sampledir_${os.getpid()}')
	os.mkdir(dname) or { panic(err) }
	println('Temp dir name: ${dname}')
	defer { os.rmdir_all(dname) or {} }

	file_in_dir := os.join_path(dname, 'file1')
	os.write_file(file_in_dir, '\x01\x02') or { panic(err) }
}
