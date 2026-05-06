import os

fn main() {
	// defer blocks do NOT run when exit() is called, just as in Go.
	defer { println('!') }

	// Exit with status 3.
	os.exit(3)
}
