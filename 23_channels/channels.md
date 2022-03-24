___
#### When we run the program the `"ping"` message is successfully passed from one vroutine to another via our channel.

___
#### To run the program, make sure you are in the 23_channels folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run channels.v`

___
##### Results:

`ping`
___
#### By default sends and receives block until both the sender and receiver are ready. This property allowed us to wait at the end of our program for the `"ping"` message without having to use any other synchronization.
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.