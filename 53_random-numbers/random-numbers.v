import rand
import time

fn main() {
	print('${rand.intn(100) or { 0 }},')
	println(rand.intn(100) or { 0 })

	println(rand.f64())

	print('${(rand.f64() * 5) + 5},')
	println((rand.f64() * 5) + 5)

	// Seed with time for varying sequences.
	rand.seed([u32(time.now().unix_time()), 0])
	print('${rand.intn(100) or { 0 }},')
	println(rand.intn(100) or { 0 })

	// Fixed seed produces reproducible sequences.
	rand.seed([u32(42), 0])
	print('${rand.intn(100) or { 0 }},')
	println(rand.intn(100) or { 0 })

	rand.seed([u32(42), 0])
	print('${rand.intn(100) or { 0 }},')
	print(rand.intn(100) or { 0 })
}
