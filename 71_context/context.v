// V has no context.Context equivalent. Cancellation is implemented
// using a shared channel that signals goroutines to stop.

import net.http
import net.http.server
import time

struct Handler {
mut:
	done chan bool
}

fn (mut h Handler) handle(req &http.Request) http.Response {
	println('server: hello handler started')
	defer { println('server: hello handler ended') }

	// Simulate long work, cancellable via channel.
	select {
		_ := <-h.done {
			println('server: request cancelled')
			return http.Response{ status_code: 500, body: 'cancelled\n' }
		}
		10 * time.second {
			return http.Response{ status_code: 200, body: 'hello\n' }
		}
	}
	return http.Response{ status_code: 200, body: 'hello\n' }
}

fn main() {
	done := chan bool{cap: 1}
	mut s := server.Server{
		port: 8090
		handler: Handler{ done: done }
	}
	s.listen_and_serve()!
}
