import time

fn main() {
	now := time.now()
	secs := now.unix_time()
	millis := now.unix_time_milli()
	println(now)

	println(secs)
	println(millis)

	println(time.unix(secs))
	println(time.unix(millis / 1000))
}
