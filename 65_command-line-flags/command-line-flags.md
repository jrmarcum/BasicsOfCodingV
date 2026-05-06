#### V's `flag` module parses command-line flags. Unlike Go's `flag` package, V returns values directly (not pointers), and each flag requires a short one-character alias.
___
##### Run Command:

`$ v run command-line-flags.v -word opt -numb 7 -fork -svar flag`

##### Results:

`word: opt`
`numb: 7`
`fork: true`
`svar: flag`
`tail: []`
