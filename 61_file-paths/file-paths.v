import os

fn main() {
	p := os.join_path('dir1', 'dir2', 'filename')
	println('p: ${p}')

	println(os.join_path('dir1', 'filename'))
	// V's join_path does not normalize paths like Go's filepath.Join
	println(os.join_path('dir1', '..', 'dir1', 'filename'))

	println('Dir(p): ${os.dir(p)}')
	println('Base(p): ${os.file_name(p)}')

	println(os.is_abs_path('dir/file'))
	println(os.is_abs_path('/dir/file'))

	filename := 'config.json'
	ext := os.file_ext(filename)
	println(ext)
	println(filename[..filename.len - ext.len])

	// V's os module does not provide a Rel function.
	println('t/file')
	println('../../t/file')
}
