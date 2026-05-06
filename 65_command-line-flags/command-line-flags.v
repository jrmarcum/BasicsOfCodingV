import flag
import os

fn main() {
	mut fp := flag.new_flag_parser(os.args)

	word := fp.string('word', `w`, 'foo', 'a string')
	numb := fp.int('numb', `n`, 42, 'an int')
	fork := fp.bool('fork', `f`, false, 'a bool')
	svar := fp.string('svar', `s`, 'bar', 'a string var')

	additional := fp.finalize() or {
		eprintln(err)
		exit(1)
	}

	println('word: ${word}')
	println('numb: ${numb}')
	println('fork: ${fork}')
	println('svar: ${svar}')
	println('tail: ${additional}')
}
