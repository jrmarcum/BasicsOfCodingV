___
#### We expect to get exactly 50,000 operations. Had we used the non-atomic `ops++` to increment the counter, we'd likely get a different number, changing between runs, because the vroutines would interfere with each other. Moreover, we'd get data race failures when running with the `-race` flag.
___
#### To run the program, make sure you are in the 37_atomic-counters folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run atomic-counters.v`
___
##### Results:

`ops: 50000`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.