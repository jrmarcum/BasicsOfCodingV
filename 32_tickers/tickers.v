// _Tickers_ fire repeatedly at regular intervals. V implements this pattern
// with a goroutine that sends on a channel at each tick.
import time

fn new_ticker(interval time.Duration) (chan time.Time, chan bool) {
	c := chan time.Time{}
	done := chan bool{}
	go fn [c, done, interval] () {
		for {
			select {
				<-done { return }
				interval {
					c <- time.now()
				}
			}
		}
	}()
	return c, done
}

fn main() {
	// This ticker fires every 500ms.
	ticker, done := new_ticker(500 * time.millisecond)

	go fn [ticker] () {
		for {
			t := <-ticker
			println('Tick at ${t}')
		}
	}()

	// Stop the ticker after 1600ms.
	time.sleep(1600 * time.millisecond)
	done <- true
	println('Ticker stopped')
}
