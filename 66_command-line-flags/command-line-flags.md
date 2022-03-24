___
#### To experiment with the command-line flags program it's best to first compile it and then run the resulting binary directly.

___
#### To run the program, make sure you are in the 66_command-line-flags folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v build command-line-flags.v`
___
#### Try out the built program by first giving it values for all flags.
___
##### Run Command:

`$ ./command-line-flags -word=opt -numb=7 -fork -svar=flag`
___
##### Results:

`word: opt`
`numb: 7`
`fork: true`
`svar: flag`
`tail: []`
___
#### Note that if you omit flags they automatically take their default values.
___
##### Run Command:

`$ ./command-line-flags -word=opt`
___
##### Results:

`word: opt`
`numb: 42`
`fork: false`
`svar: bar`
`tail: []`
___
#### Trailing positional arguments can be provided after any flags.
___
##### Run Command:

`$ ./command-line-flags -word=opt a1 a2 a3`
___
##### Results:

`word: opt`
`numb: 42`
`fork: false`
`svar: bar`
`tail: [a1 a2 a3]`

___
#### Note that the `flag` package requires all flags to appear before positional arguments (otherwise the flags will be interpreted as positional arguments).
___
##### Run Command:

`$ ./command-line-flags -word=opt a1 a2 a3 -numb=7`
___
##### Results:

`word: opt`
`numb: 42`
`fork: false`
`svar: bar`
`tail: [a1 a2 a3 -numb=7]`
___
#### Use `-h` or `--help` flags to get automatically generated help text for the command-line program.
___
##### Run Command:

`$ ./command-line-flags -h`
___
##### Results:

  `-fork`
	`a bool`
  `-numb int`
	`an int (default 42)`
  `-svar string`
	`a string var (default "bar")`
  `-word string`
	`a string (default "foo")`
____
#### If you provide a flag that wasn't specified to the `flag` package, the program will print an error message and show the help text again.
_______________________________________________________________________________
##### Run Command:

`$ ./command-line-flags -wat`
_______________________________________________________________________________
##### Results:

```
flag provided but not defined: -wat
Usage of ./command-line-flags:
  -fork
	a bool
  -numb int
	an int (default 42)
  -svar string
	a string var (default "bar")
  -word string
	a string (default "foo")
```
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.