// V provides basic logging through the `log` module for free-form output.
import log
import os

fn main() {
	// The default logger writes to stderr with a timestamp prefix.
	log.info('standard logger')

	// Log at different severity levels.
	log.warn('with warning')

	// Create a custom logger with a label prefix.
	mut mylog := log.Log{}
	mylog.set_output_label('my')
	mylog.info('from mylog')

	// Change the label on an existing logger.
	mylog.set_output_label('ohmy')
	mylog.info('from mylog')

	// Log to a buffer file, then print its contents.
	tmp := os.temp_dir()
	log_path := os.join_path(tmp, 'buflog.txt')
	mut buflog := log.Log{}
	buflog.set_output_label('buf')
	buflog.set_output_path(log_path)
	buflog.info('hello')
	buflog.flush()
	buflog.close()

	content := os.read_file(log_path) or { '' }
	print('from buflog:${content}')
	os.rm(log_path) or {}
}
