// A V string is an immutable sequence of UTF-8 bytes.
// The concept of a character is called a `rune` — an alias for `int`
// representing a Unicode code point.

fn rune_to_str(r rune) string {
	cp := int(r)
	if cp < 0x80 {
		return [u8(cp)].bytestr()
	} else if cp < 0x800 {
		return [u8(0xC0 | (cp >> 6)), u8(0x80 | (cp & 0x3F))].bytestr()
	} else if cp < 0x10000 {
		return [u8(0xE0 | (cp >> 12)), u8(0x80 | ((cp >> 6) & 0x3F)),
			u8(0x80 | (cp & 0x3F))].bytestr()
	} else {
		return [u8(0xF0 | (cp >> 18)), u8(0x80 | ((cp >> 12) & 0x3F)),
			u8(0x80 | ((cp >> 6) & 0x3F)), u8(0x80 | (cp & 0x3F))].bytestr()
	}
}

fn utf8_rune_len(cp int) int {
	if cp < 0x80 { return 1 }
	if cp < 0x800 { return 2 }
	if cp < 0x10000 { return 3 }
	return 4
}

fn examine_rune(r rune) {
	// Values enclosed in backticks are _rune literals_.
	if r == `t` {
		println('found tee')
	} else if r == `ส` {
		println('found so sua')
	}
}

fn main() {
	// `s` is a string assigned the Thai word for "hello".
	// V string literals are UTF-8 encoded text.
	s := 'สวัสดี'

	// `s.len` gives the byte length of the raw bytes.
	println('Len: ${s.len}')

	// Indexing produces raw byte values in hex.
	for b in s.bytes() {
		print('${b:x} ')
	}
	println()

	// `s.runes()` returns the Unicode code points.
	runes := s.runes()
	println('Rune count: ${runes.len}')

	// Iterate runes with their byte offset in the string.
	mut byte_idx := 0
	for r in runes {
		println("U+${int(r):04X} '${rune_to_str(r)}' starts at ${byte_idx}")
		byte_idx += utf8_rune_len(int(r))
	}

	println()
	println('Using rune examination')
	byte_idx = 0
	for r in runes {
		println("U+${int(r):04X} '${rune_to_str(r)}' starts at ${byte_idx}")
		examine_rune(r)
		byte_idx += utf8_rune_len(int(r))
	}
}
