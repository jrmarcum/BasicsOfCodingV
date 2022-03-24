___
#### Note that while slices are different types than arrays, they are rendered similarly by `fmt.Println`.
___
#### To run the program, make sure you are in the 09_slices folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run slices.v`
___
##### Results:

`s: [0, 1, 2, 3, 4, 5]`
`Slice 1 is index 2 up to but excluding index 5 of s:`
`[2, 3, 4]`

`Slice 2 is up to but excluding index 5 of s:`
`[0, 1, 2, 3, 4]`

`Slice 3 is index 2 and up of s:`
`[2, 3, 4, 5]`

`Slice 4 is sl3 and up to but excluding index 2 of s:`
`[2, 3, 4, 5, 0, 1]`

`Parent array 'a':`
`[0, 1, 2, 3, 4, 5]`

`Dependent Child array 'b' sliced from 'a':`
`[1, 2, 3]`

`Revised Parent array 'a':`
`[5, 4, 3, 2, 1, 0]`

`Revised Dependent Child array 'b':`
`[4, 3, 2]`

`Revised Parent array 'a':`
`[0, 1, 2, 3, 4, 5]`

`Revised Independent Child array 'b':`
`[4, 3, 2, 6] `
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.