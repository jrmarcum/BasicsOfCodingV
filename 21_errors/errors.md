#### V uses `!T` Result types and `or { }` blocks instead of Go's `(value, error)` tuple returns.
___
##### Run Command:

`$ v run errors.v`

##### Results:

`f1 worked: 10`
`f1 failed: can't work with 42`
`f2 worked: 10`
`f2 failed: 42 - can't work with it`
`42`
`can't work with it`
