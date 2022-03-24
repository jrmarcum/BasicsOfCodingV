___
#### Running our program shows that the goroutine-based state management example completes about 80,000 total operations.
___
#### To run the program, make sure you are in the 39_stateful-vroutines folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run stateful-goroutines.v`
___
##### Results (Example below: results will vary per run):

`readOps: 71708`
`writeOps: 7177`
___
#### For this particular case the goroutine-based approach was a bit more involved than the mutex-based one. It might be useful in certain cases though, for example where you have other channels involved or when managing multiple such mutexes would be error-prone. You should use whichever approach feels most natural, especially with respect to understanding the correctness of your program.
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.