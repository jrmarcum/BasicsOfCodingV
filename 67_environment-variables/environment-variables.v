import os

fn main() {
	os.setenv('FOO', '1', true)
	println('FOO: ${os.getenv('FOO')}')
	println('BAR: ${os.getenv('BAR')}')

	println('')
	env := os.environ()
	for key, _ in env {
		println(key)
	}
}
