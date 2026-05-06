#### V uses `match` on `os.args[1]` to dispatch subcommands, with a separate `flag.new_flag_parser` instance for each subcommand's flags.
___
##### Run Command:

`$ v run command-line-subcommands.v foo -enable -name=joe a1 a2`

##### Results:

`subcommand 'foo'`
`  enable: true`
`  name: joe`
`  tail: ['a1', 'a2']`
