___
#### Running our program we see the first batch of requests handled once every ~200 milliseconds as desired.
___
#### To run the program, make sure you are in the 36_rate-limiting folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run rate-limiting.v`

___
##### Results (Example below: The actual result will be relative to the current date, time and time zone of your machine at the time of run):

`request 1 2012-10-19 00:38:18.687438 +0000 UTC`
`request 2 2012-10-19 00:38:18.887471 +0000 UTC`
`request 3 2012-10-19 00:38:19.087238 +0000 UTC`
`request 4 2012-10-19 00:38:19.287338 +0000 UTC`
`request 5 2012-10-19 00:38:19.487331 +0000 UTC`
___
#### For the second batch of requests we serve the first 3 immediately because of the burstable rate limiting, then serve the remaining 2 with ~200ms delays each.

___
##### Results (Example below: The actual result will be relative to the current date, time and time zone of your machine at the time of run):

`request 1 2012-10-19 00:38:20.487578 +0000 UTC`
`request 2 2012-10-19 00:38:20.487645 +0000 UTC`
`request 3 2012-10-19 00:38:20.487676 +0000 UTC`
`request 4 2012-10-19 00:38:20.687483 +0000 UTC`
`request 5 2012-10-19 00:38:20.887542 +0000 UTC`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.