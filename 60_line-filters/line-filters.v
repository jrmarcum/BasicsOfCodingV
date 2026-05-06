import os
import io

fn main() {
	mut reader := io.new_buffered_reader(reader: os.stdin)
	for {
		line := reader.read_line() or { break }
		println(line.to_upper())
	}
}
