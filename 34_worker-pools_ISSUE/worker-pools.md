___
#### Our running program shows the 5 jobs being executed by various workers. The program only takes about 2 seconds despite doing about 5 seconds of total work because there are 3 workers operating concurrently.
___
#### To run the program, make sure you are in the 34_worker-pools folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ time v run worker-pools.v`
___
##### Results:

`worker 1 started  job 1`
`worker 2 started  job 2`
`worker 3 started  job 3`
`worker 1 finished job 1`
`worker 1 started  job 4`
`worker 2 finished job 2`
`worker 2 started  job 5`
`worker 3 finished job 3`
`worker 1 finished job 4`
`worker 2 finished job 5`
`real	0m2.358s`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.