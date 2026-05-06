#### V's `os` module provides file reading via `os.read_file()` for whole-file reads and `os.File` methods for granular seeks and partial reads. Create `./tmp/dat.txt` containing `hello\ngo\n` before running.
___
##### Run Command:

`$ v run reading-files.v`

##### Results:

`hello`
`go`
`5 bytes: hello`
`2 bytes @ 6: go`
`2 bytes @ 6: go`
`5 bytes: hello`
