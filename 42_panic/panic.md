___
#### Running this program will cause it to panic, print an error message and vroutine traces, and exit with a non-zero status.
___
#### To run the program, make sure you are in the 42_panic folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run panic.v`
___
##### Results:

`panic: a problem`
```
vroutine 1 [running]:
main.main()
	/.../panic.go:22 +0x45
...
exit status 2
```
___
#### Note that unlike some languages which use exceptions for handling of many errors, in Go it is idiomatic to use error-indicating return values wherever possible.
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.