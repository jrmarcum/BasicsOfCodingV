import os

fn walk_all(path string) {
	is_dir := os.is_dir(path)
	println(' ${path} ${is_dir}')
	if is_dir {
		entries := os.ls(path) or { return }
		for entry in entries {
			walk_all(os.join_path(path, entry))
		}
	}
}

fn main() {
	os.mkdir('subdir') or { panic(err) }
	defer { os.rmdir_all('subdir') or {} }

	os.write_file('subdir/file1', '') or { panic(err) }

	os.mkdir_all('subdir/parent/child') or { panic(err) }

	os.write_file('subdir/parent/file2', '') or { panic(err) }
	os.write_file('subdir/parent/file3', '') or { panic(err) }
	os.write_file('subdir/parent/child/file4', '') or { panic(err) }

	entries := os.ls('subdir/parent') or { panic(err) }
	println('Listing subdir/parent')
	for entry in entries {
		is_dir := os.is_dir('subdir/parent/${entry}')
		println('  ${entry} ${is_dir}')
	}

	os.chdir('subdir/parent/child') or { panic(err) }

	c := os.ls('.') or { panic(err) }
	println('Listing subdir/parent/child')
	for entry in c {
		is_dir := os.is_dir('./${entry}')
		println('  ${entry} ${is_dir}')
	}

	os.chdir('../../..') or { panic(err) }

	println('Visiting subdir')
	walk_all('subdir')
}
