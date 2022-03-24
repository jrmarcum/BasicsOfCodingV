___
#### When we run our program it is replaced by `ls`.

___
#### To run the program, make sure you are in the 73_execing-processes folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run execing-processes.v`
___
##### Results:

`total 16`
`drwxr-xr-x  4 mark 136B Oct 3 16:29 .`
`drwxr-xr-x 91 mark 3.0K Oct 3 12:50 ..`
`-rw-r--r--  1 mark 1.3K Oct 3 16:28 execing-processes.go`
___
#### Note that Go does not offer a classic Unix `fork` function. Usually this isn't an issue though, since starting goroutines, spawning processes, and exec'ing processes covers most use cases for `fork`.
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.