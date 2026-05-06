import os

fn main() {
	args_with_prog := os.args
	args_without_prog := os.args[1..]

	arg := os.args[3]

	println(args_with_prog)
	println(args_without_prog)
	println(arg)
}
