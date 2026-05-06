// V has a native `enum` type, making enumerated types cleaner than Go's iota pattern.

enum ServerState {
	idle
	connected
	error_state
	retrying
}

// The `str()` method makes enum values printable with their name.
fn (s ServerState) str() string {
	return match s {
		.idle      { 'idle' }
		.connected { 'connected' }
		.error_state { 'error' }
		.retrying  { 'retrying' }
	}
}

// `transition` emulates a state transition for a server.
fn transition(s ServerState) ServerState {
	return match s {
		.idle                    { .connected }
		.connected, .retrying    { .idle }
		.error_state             { .error_state }
	}
}

fn main() {
	ns := transition(.idle)
	println(ns)

	ns2 := transition(ns)
	println(ns2)
}
