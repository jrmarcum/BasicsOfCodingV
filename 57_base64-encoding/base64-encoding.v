import encoding.base64

fn main() {
	data := "abc123!?\$*&()'-=@~"

	s_enc := base64.encode(data.bytes())
	println(s_enc)

	s_dec := base64.decode(s_enc)
	println(s_dec.bytestr())
	println()

	u_enc := base64.encode_url(data.bytes())
	println(u_enc)
	u_dec := base64.decode_url(u_enc)
	println(u_dec.bytestr())
}
