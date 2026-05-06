import crypto.sha256

fn main() {
	s := 'sha256 this string'

	h := sha256.sum256(s.bytes())

	println(s)
	println(h[..].hex())
}
