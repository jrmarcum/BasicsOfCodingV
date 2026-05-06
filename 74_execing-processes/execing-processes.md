#### V has no built-in `syscall.Exec`. On Unix, replacing the current process image requires calling `C.execvp` directly via V's C interop. This example is Unix-only and does not run on Windows.
___
##### Run Command:

`$ v run execing-processes.v`

##### Results:

`total ...`
`drwxr-xr-x ...`
`(ls -a -l -h output of current directory)`
