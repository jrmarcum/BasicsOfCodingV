// _range_ iterates over elements in a variety of data structures.

fn main() {
	// Here we use `for` with `in` to sum the numbers in an array.
	nums := [2, 3, 4]
	mut sum := 0
	for num in nums {
		sum += num
	}
	println('sum: ${sum}')

	// `for i, val in array` provides both the index and the value.
	for i, num in nums {
		if num == 3 {
			println('index: ${i}')
		}
	}

	// `for k, v in map` iterates over key/value pairs in a map.
	m := {
		'a': 1
		'b': 2
	}
	for k, v in m {
		println('${k} -> ${v}')
	}

	// `for i, c in str` iterates over Unicode code points (runes) in a string.
	for i, c in 'go' {
		println('${i} ${int(c)}')
	}
}
