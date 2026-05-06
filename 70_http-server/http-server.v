import net.http
import net.http.server

struct Handler {}

fn (h Handler) handle(req &http.Request) http.Response {
	if req.url == '/hello' {
		return http.Response{
			status_code: 200
			body: 'hello\n'
		}
	}
	if req.url == '/headers' {
		mut body := ''
		for name, values in req.header.data {
			for val in values {
				body += '${name}: ${val}\n'
			}
		}
		return http.Response{
			status_code: 200
			body: body
		}
	}
	return http.Response{ status_code: 404 }
}

fn main() {
	mut s := server.Server{
		port: 8090
		handler: Handler{}
	}
	s.listen_and_serve()!
}
