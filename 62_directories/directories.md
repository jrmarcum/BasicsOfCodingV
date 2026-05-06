#### V's `os` module provides `mkdir`, `mkdir_all`, `ls`, `chdir`, and `rmdir_all` for directory operations. V's `os.walk` visits files only, so a recursive `walk_all` helper is used here to visit both files and directories as Go's `filepath.Walk` does.
___
##### Run Command:

`$ v run directories.v`

##### Results:

`Listing subdir/parent`
`  child true`
`  file2 false`
`  file3 false`
`Listing subdir/parent/child`
`  file4 false`
`Visiting subdir`
` subdir true`
` subdir/file1 false`
` subdir/parent true`
` subdir/parent/child true`
` subdir/parent/child/file4 false`
` subdir/parent/file2 false`
` subdir/parent/file3 false`
