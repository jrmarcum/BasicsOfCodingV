___
#### Running the program shows that we pick up the value for `FOO` that we set in the program, but that `BAR` is empty.
___
#### To run the program, make sure you are in the 68_envoronment-variables folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run environment-variables.v`
___
##### Results:

`FOO: 1`
`BAR:`
___
#### The total list of keys in the environment will depend on your particular machine.
___
#### If we set `BAR` in the environment first, the running program picks that value up.
___
##### Run Command:

`$ BAR=2 v run environment-variables.v`
___
##### Results:

`FOO: 1`
`BAR: 2`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.