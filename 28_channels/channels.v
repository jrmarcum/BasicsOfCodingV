// _Channels_ are the pipes that connect concurrent goroutines.
// You can send values into channels from one goroutine and receive them
// in another goroutine.

fn main() {
	// Create a new channel with `chan val_type{}`.
	// Channels are typed by the values they convey.
	messages := chan string{}

	// _Send_ a value into a channel using the `channel <- value` syntax.
	// Here we send `'ping'` to the `messages` channel from a new goroutine.
	go fn [messages] () {
		messages <- 'ping'
	}()

	// The `<-channel` syntax _receives_ a value from the channel.
	// Here we'll receive the `'ping'` message we sent above and print it.
	msg := <-messages
	println(msg)
}
