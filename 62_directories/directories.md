___
#### To run the program, make sure you are in the 62_directories folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run directories.v`
___
##### Results:

```
Listing subdir/parent
  child true
  file2 false
  file3 false
Listing subdir/parent/child
  file4 false
Visiting subdir
  subdir true
  subdir/file1 false
  subdir/parent true
  subdir/parent/child true
  subdir/parent/child/file4 false
  subdir/parent/file2 false
  subdir/parent/file3 false
```
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.