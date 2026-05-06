// V offers built-in support for JSON encoding and decoding.
import json

struct Response1 {
	page   int
	fruits []string
}

struct Response2 {
	page   int      [json: 'page']
	fruits []string [json: 'fruits']
}

fn main() {
	// Encode basic values.
	println(json.encode(true))
	println(json.encode(1))
	println(json.encode(2.34))
	println(json.encode('vector'))

	// Encode arrays and maps.
	println(json.encode(['apple', 'peach', 'pear']))

	// Encode a custom struct.
	res1 := Response1{ page: 1, fruits: ['apple', 'peach', 'pear'] }
	println(json.encode(res1))

	// Use field tags to customize JSON key names.
	res2 := Response2{ page: 1, fruits: ['apple', 'peach', 'pear'] }
	println(json.encode(res2))

	// Decode JSON into a typed struct.
	str := '{"page": 1, "fruits": ["apple", "peach"]}'
	res := json.decode(Response2, str) or { panic(err) }
	println(res)
	println(res.fruits[0])
}
