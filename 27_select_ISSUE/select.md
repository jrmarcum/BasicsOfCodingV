___
#### We receive the values `"one"` and then `"two"` as expected.
___
#### To run the program, make sure you are in the 27_select folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ time v run select.v`
___
##### Results:

`received one`
`received two`
___
#### Note that the total execution time is only ~2 seconds since both the 1 and 2 second `Sleeps` execute concurrently. real	0m2.245s
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.