import time

fn main() {
	t := time.now()

	// Format using RFC3339.
	println(t.format_rfc3339())

	// Parse an RFC3339 string.
	t1 := time.parse_rfc3339('2012-11-01T22:08:41+00:00') or { panic(err) }
	println(t1.format_rfc3339())

	// Format with a simple YYYY-MM-DD HH:MM:SS layout.
	println(t.format_ss())

	// Manual numeric formatting using struct fields.
	println('${t.year:04d}-${t.month:02d}-${t.day:02d}T${t.hour:02d}:${t.minute:02d}:${t.second:02d}-00:00')

	// Parse will return an error on malformed input.
	time.parse_rfc3339('8:41PM') or {
		println(err)
		return
	}
}
