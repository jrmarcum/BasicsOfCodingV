// V has no direct equivalent to Go's syscall.Exec (replacing the current
// process image). On Unix, this can be done via C.execvp. This example
// demonstrates the pattern using C interop.

#include <unistd.h>

fn C.execvp(file &char, argv &&char) int

import os

fn main() {
	binary := os.find_abs_path_of_executable('ls') or { panic(err) }

	args := [binary, '-a', '-l', '-h']
	c_args := args.map(it.str)
	mut argv := []&char{len: c_args.len + 1}
	for i, s in c_args {
		argv[i] = s.str
	}
	argv[c_args.len] = unsafe { nil }

	ret := C.execvp(binary.str, argv.data)
	if ret != 0 {
		panic('execvp failed')
	}
}
