#### V's `os` module provides portable path utilities. Unlike Go's `filepath.Join`, V's `os.join_path` does not normalize redundant separators or `..` components. V has no built-in `Rel` equivalent.
___
##### Run Command:

`$ v run file-paths.v`

##### Results:

`p: dir1/dir2/filename`
`dir1/filename`
`dir1/../dir1/filename`
`Dir(p): dir1/dir2`
`Base(p): filename`
`false`
`true`
`.json`
`config`
`t/file`
`../../t/file`
