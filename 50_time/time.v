import time

fn main() {
	now := time.now()
	println(now)

	then := time.Time{
		year:       2009
		month:      11
		day:        17
		hour:       20
		minute:     34
		second:     58
		nanosecond: 651387237
	}
	println(then)

	println(then.year)
	println(then.month)
	println(then.day)
	println(then.hour)
	println(then.minute)
	println(then.second)
	println(then.nanosecond)
	println('UTC')

	println(then.weekday())

	println(then.before(now))
	println(then.after(now))
	println(then == now)

	diff_secs := now.unix_time() - then.unix_time()
	diff := time.Duration(diff_secs * time.second)
	println(diff)

	println(diff.hours())
	println(diff.minutes())
	println(diff.seconds())
	println(diff.nanoseconds())

	println(then.add(diff))
	println(then.add(-diff))
}
