import os

fn main() {
	// Run a simple command and capture its output.
	date_res := os.execute('date')
	println('> date')
	println(date_res.output)

	// A command that exits with an error.
	err_res := os.execute('date -x')
	if err_res.exit_code != 0 {
		println('command exit rc = ${err_res.exit_code}')
	}

	// Pipe data to an external process via a shell command.
	grep_res := os.execute('echo "hello grep\ngoodbye grep" | grep hello')
	println('> grep hello')
	println(grep_res.output)

	// Run a shell command directly.
	ls_res := os.execute('ls -a -l -h')
	println('> ls -a -l -h')
	println(ls_res.output)
}
