import net
import io

fn handle_connection(mut conn net.TcpConn) {
	defer { conn.close() }

	mut reader := io.new_buffered_reader(reader: conn)
	message := reader.read_line() or { return }

	ack := message.trim_space().to_upper()
	conn.write_string('ACK: ${ack}\n') or {}
}

fn main() {
	mut listener := net.listen_tcp(.ip, ':8090') or { panic(err) }
	defer { listener.close() }

	for {
		mut conn := listener.accept() or { continue }
		go handle_connection(mut conn)
	}
}
