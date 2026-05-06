#### V uses `os.exit(code int)` to immediately terminate with a given status code. Deferred blocks do not run when `os.exit` is called, matching Go's `os.Exit` behavior.
___
##### Run Command:

`$ v run exit.v; echo $?`

##### Results:

`3`
