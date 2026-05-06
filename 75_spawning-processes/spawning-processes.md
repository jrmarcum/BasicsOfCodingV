#### V's `os.execute(cmd string)` spawns a shell command and returns an `os.Result` with `output` and `exit_code`. For stdin piping, use shell pipe syntax via the shell command string. For more control over individual stdin/stdout streams, use `os.new_process`.
___
##### Run Command:

`$ v run spawning-processes.v`

##### Results:

`> date`
`Tue Nov 17 20:34:58 UTC 2009`

`command exit rc = 1`
`> grep hello`
`hello grep`

`> ls -a -l -h`
`total ...`
`(directory listing output)`
