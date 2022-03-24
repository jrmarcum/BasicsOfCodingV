___
#### Running the program computes the hash and prints it in a human-readable hex format.
___
#### To run the program, make sure you are in the 56_sha1-hashes folder then use the Run Command below. See `general.md` for useful information.
___
##### Run Command:

`$ v run sha1-hashes.v`
___
##### Results:

```
sha1 this string
cf23df2207d99a74fbe169e3eba035e633b65d94
```
___
#### You can compute other hashes using a similar pattern to the one shown above. For example, to compute MD5 hashes import `crypto/md5` and use `md5.New()`.
___
#### Note that if you need cryptographically secure hashes, you should carefully research [hash strength](http://en.wikipedia.org/wiki/Cryptographic_hash_function)!
___

###### This work and the accompanying code was originally from Mark McGranaghan at [https://github.com/mmcgrana/gobyexample](https://github.com/mmcgrana/gobyexample) and licensed under a Creative Commons Attribution 3.0 Unported License [http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/). It has been used to provide an example base for multiple languages to provide a basis of comparitive programming language study for syntax, language simplicity, number of lines of code and operations required to perform the same task, as well as compile and run speed combined.