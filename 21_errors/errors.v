// In V, errors are communicated via the `!` Result type, not a separate return value.
// Functions that can fail return `!T`; callers handle errors with `or { }`.

fn f1(arg int) !int {
	if arg == 42 {
		// Return an error using the `error()` built-in.
		return error("can't work with 42")
	}
	// A nil error indicates success; just return the value.
	return arg + 3
}

// A custom error type implements the `IError` interface via `msg()` and `code()`.
struct ArgError {
	arg  int
	prob string
}

fn (e &ArgError) msg() string {
	return '${e.arg} - ${e.prob}'
}

fn (e &ArgError) code() int {
	return 0
}

fn f2(arg int) !int {
	if arg == 42 {
		return IError(&ArgError{ arg: arg, prob: "can't work with it" })
	}
	return arg + 3
}

fn main() {
	// Call f1 for 7 and 42; handle the error with `or { }`.
	for _, i in [7, 42] {
		result := f1(i) or {
			println('f1 failed: ${err}')
			continue
		}
		println('f1 worked: ${result}')
	}

	// Same for f2.
	for _, i in [7, 42] {
		result := f2(i) or {
			println('f2 failed: ${err}')
			continue
		}
		println('f2 worked: ${result}')
	}

	// Retrieve the custom error's fields with a type check.
	_ = f2(42) or {
		if err is ArgError {
			ae := err as ArgError
			println(ae.arg)
			println(ae.prob)
		}
		return
	}
}
