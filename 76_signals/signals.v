import os
import os.signal

fn main() {
	println('awaiting signal')

	mut c := signal.channel()
	signal.notify(mut c, .sigint, .sigterm)

	_ := <-c

	println('')
	println('exiting')
}
