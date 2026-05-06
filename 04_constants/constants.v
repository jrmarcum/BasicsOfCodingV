// V supports constants for values known at compile time.
import math

const s = 'constant'
const n = 500000000
const d = f64(3e20) / n

fn main() {
	println(s)
	println(n)
	println(d)
	println(i64(d))
	println(math.sin(f64(n)))
}
