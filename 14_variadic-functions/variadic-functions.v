// _Variadic functions_ can be called with any number of trailing arguments.

fn sum(nums ...int) {
	print('${nums} ')
	mut total := 0
	for num in nums {
		total += num
	}
	println(total)
}

fn main() {
	sum(1, 2)
	sum(1, 2, 3)

	// If you already have multiple args in an array, apply them
	// to a variadic function using `func(...arr)` — in V, spread with `...`.
	nums := [1, 2, 3, 4]
	sum(...nums)
}
