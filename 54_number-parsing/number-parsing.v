import strconv

fn main() {
	f := strconv.atof64('1.234') or { panic(err) }
	println(f)

	i := strconv.parse_int('123', 0, 64) or { panic(err) }
	println(i)

	d := strconv.parse_int('1c8', 16, 64) or { panic(err) }
	println(d)

	u := strconv.parse_uint('789', 0, 64) or { panic(err) }
	println(u)

	k := strconv.atoi('135') or { panic(err) }
	println(k)

	strconv.atoi('wat') or {
		println(err)
		return
	}
}
