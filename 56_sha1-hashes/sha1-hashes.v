import crypto.sha1

fn main() {
	s := 'sha1 this string'

	h := sha1.sum(s.bytes())

	println(s)
	println(h.hex())
}
