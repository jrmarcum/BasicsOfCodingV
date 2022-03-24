___
#### To run the program, make sure you are in the 22_vroutines folder then use the Run Command below. See `general.md` for useful information.
___
#### When we run this program, we see the output of the blocking call first, then the interleaved output of the two goroutines. This interleaving reflects the V routines being run concurrently by the V runtime.

___
##### Run Command:

`$ v run vroutines.v`

___
##### Results:

`direct : 0`
`direct : 1`
`direct : 2`
`vroutine : 0`
`going`
`vroutine : 1`
`vroutine : 2`
`done`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.