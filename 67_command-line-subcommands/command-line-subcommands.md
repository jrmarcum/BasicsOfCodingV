___
#### To run the program, make sure you are in the 67_command-line-subcommands folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v build command-line-subcommands.v`
___
##### First invoke the foo subcommand.
___
#### Run Command:

`$ ./command-line-subcommands foo -enable -name=joe a1 a2`
___
##### Results:

```
subcommand 'foo'
  enable: true
  name: joe
  tail: [a1 a2]
```
___
#### Now try bar.
___
##### Run Command:

`$ ./command-line-subcommands bar -level 8 a1`
___
#### Results:

```
subcommand 'bar'
  level: 8
  tail: [a1]
```
___
#### But bar won't accept foo's flags.
___
##### Run Command:

`$ ./command-line-subcommands bar -enable a1`
___
#### Results:

```
flag provided but not defined: -enable
Usage of bar:
  -level int
    	level
```
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.