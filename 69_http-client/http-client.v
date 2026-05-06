import net.http

fn main() {
	resp := http.get('https://gobyexample.com') or { panic(err) }

	println('Response status: ${resp.status_code} ${resp.status_msg}')

	lines := resp.body.split('\n')
	for i, line in lines {
		if i >= 5 {
			break
		}
		println(line)
	}
}
