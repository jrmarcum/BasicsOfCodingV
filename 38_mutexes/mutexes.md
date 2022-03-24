___
#### Running the program shows that we executed about 90,000 total operations against our `mutex`-synchronized `state`.
___
#### To run the program, make sure you are in the 38_mutexes folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run mutexes.v`
___
##### Results (Example shown below: the result will vary with machine and run):

`readOps: 83285`
`writeOps: 8320`
`state: map[1:97 4:53 0:33 2:15 3:2]`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.