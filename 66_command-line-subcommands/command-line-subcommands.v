import flag
import os

fn main() {
	if os.args.len < 2 {
		println("expected 'foo' or 'bar' subcommands")
		exit(1)
	}

	match os.args[1] {
		'foo' {
			mut fp := flag.new_flag_parser(os.args[1..])
			foo_enable := fp.bool('enable', `e`, false, 'enable')
			foo_name := fp.string('name', `n`, '', 'name')
			tail := fp.finalize() or { []string{} }
			println("subcommand 'foo'")
			println('  enable: ${foo_enable}')
			println('  name: ${foo_name}')
			println('  tail: ${tail}')
		}
		'bar' {
			mut fp := flag.new_flag_parser(os.args[1..])
			bar_level := fp.int('level', `l`, 0, 'level')
			tail := fp.finalize() or { []string{} }
			println("subcommand 'bar'")
			println('  level: ${bar_level}')
			println('  tail: ${tail}')
		}
		else {
			println("expected 'foo' or 'bar' subcommands")
			exit(1)
		}
	}
}
