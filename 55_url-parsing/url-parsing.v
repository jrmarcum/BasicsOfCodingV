import net.urllib

fn main() {
	s := 'postgres://user:pass@host.com:5432/path?k=v#f'

	u := urllib.parse(s) or { panic(err) }

	println(u.scheme)

	println(u.user)
	if user := u.user {
		println(user.username())
		pass, _ := user.password()
		println(pass)
	}

	println(u.host)
	parts := u.host.split(':')
	println(parts[0])
	println(parts[1])

	println(u.path)
	println(u.fragment)

	println(u.raw_query)
	m := urllib.parse_query(u.raw_query) or { panic(err) }
	println(m)
	println(m.get('k'))
}
