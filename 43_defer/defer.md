#### V uses `defer { }` blocks (not function calls as in Go). The `tmp/` directory must exist before running; create it with `mkdir tmp`. Running the program confirms that the file is closed after being written.
___
##### Run Command:

`$ mkdir tmp`
`$ v run defer.v`

##### Results:

`creating`
`writing`
`closing`
