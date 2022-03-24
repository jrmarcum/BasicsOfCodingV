___
#### When we run this program it will block waiting for a signal. By typing `ctrl-C` (which the terminal shows as `^C`) we can send a `SIGINT` signal, causing the program to print `interrupt` and then exit.
___
#### To run the program, make sure you are in the 74_signals folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run signals.v`
___
##### Results:

`awaiting signal`
___
##### Run Command:
`$ Ctrl+C`
___
##### Results:

`interrupt`
`exiting`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.