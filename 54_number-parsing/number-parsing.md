#### V's `strconv` module provides number parsing with result-type error handling via `or { }`. Error messages differ from Go's `strconv` package format.
___
##### Run Command:

`$ v run number-parsing.v`

##### Results:

`1.234`
`123`
`456`
`789`
`135`
`strconv.atoi: parsing "wat": invalid syntax`
