___
#### To try out our line filter, first make a file with a few lowercase lines. If "lines.txt" file exists delete it before doing the exercise. 
___
#### To run the program, make sure you are in the 60_line-filters folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ echo 'hello'   > ./tmp/lines.txt`

`$ echo 'filter' >> ./tmp/lines.txt`
___
# Then use the line filter to get uppercase lines.
___
##### Run Command:

`$ cat ./tmp/lines.txt | go run line-filters.go`
___
##### Results:

`HELLO`
`FILTER`
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.