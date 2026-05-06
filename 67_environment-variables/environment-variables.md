#### V uses `os.setenv`, `os.getenv`, and `os.environ()` for environment variable access. Unlike Go's `os.Environ()` which returns `[]string`, V's `os.environ()` returns `map[string]string`; iteration order is non-deterministic.
___
##### Run Command:

`$ v run environment-variables.v`

##### Results:

`FOO: 1`
`BAR: `
``
`TERM_PROGRAM`
`PATH`
`... (all environment keys listed, order varies)`
