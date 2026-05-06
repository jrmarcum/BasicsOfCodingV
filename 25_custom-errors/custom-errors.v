// V custom error types implement the `IError` interface via `msg()` and `code()`.

struct ArgError {
pub:
	arg     int
	message string
}

fn (e &ArgError) msg() string {
	return '${e.arg} - ${e.message}'
}

fn (e &ArgError) code() int {
	return 0
}

fn f(arg int) !int {
	if arg == 42 {
		// Return our custom error.
		return IError(&ArgError{ arg: arg, message: "can't work with it" })
	}
	return arg + 3
}

fn main() {
	// `or { }` checks whether a call returned an error and lets us
	// inspect and cast the error to the concrete type.
	_ = f(42) or {
		if err is ArgError {
			ae := err as ArgError
			println(ae.arg)
			println(ae.message)
		} else {
			println("err doesn't match ArgError")
		}
		return
	}
}
