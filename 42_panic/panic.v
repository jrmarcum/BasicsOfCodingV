// A `panic` typically means something went unexpectedly wrong.
// Mostly we use it to fail fast on errors that shouldn't occur
// during normal operation, or that we aren't prepared to handle gracefully.

import os

fn main() {
	// We'll use panic to abort if something unexpected happens.
	// This is the only program on the site designed to panic.
	panic('a problem')

	// A common use of panic is to abort if a function returns an error value
	// that we don't know how to handle. Here's an example of panicking if
	// we get an unexpected error when creating a new file.
	os.create('/tmp/file') or { panic(err) }
}
