#### V exposes command-line arguments via `os.args`. Index 0 is the program path; subsequent indices are the arguments. V arrays print with quoted elements and commas, unlike Go's space-separated slice format.
___
##### Run Command:

`$ v run command-line-arguments.v a b c`

##### Results:

`['/path/to/command-line-arguments', 'a', 'b', 'c']`
`['a', 'b', 'c']`
`c`
