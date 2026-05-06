// We often want to execute V code at some point in the future. V's
// timer pattern uses channels and goroutines to replicate Go's timer behavior.
import time

struct Timer {
	c chan time.Time
}

fn new_timer(d time.Duration) &Timer {
	t := &Timer{ c: chan time.Time{} }
	go fn [t, d] () {
		time.sleep(d)
		t.c <- time.now()
	}()
	return t
}

fn main() {
	// This timer will wait 2 seconds.
	timer1 := new_timer(2 * time.second)

	// Block until the timer fires.
	<-timer1.c
	println('Timer 1 fired')

	// If you just wanted to wait, you could have used `time.sleep`.
	// One reason a timer may be useful is that you can cancel it before it fires.
	// Here we simulate a stoppable timer using a done channel.
	done := chan bool{}
	timer2_c := chan time.Time{}

	go fn [timer2_c, done] () {
		select {
			<-done { return }
			time.second {
				timer2_c <- time.now()
			}
		}
	}()

	// Stop timer2 before it fires.
	done <- true
	println('Timer 2 stopped')

	time.sleep(2 * time.second)
}
