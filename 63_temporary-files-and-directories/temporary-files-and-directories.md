#### V has no `TempFile`/`TempDir` functions; use `os.temp_dir()` combined with `os.getpid()` to construct unique temporary file and directory names.
___
##### Run Command:

`$ v run temporary-files-and-directories.v`

##### Results:

`Temp file name: /tmp/sample_12345`
`Temp dir name: /tmp/sampledir_12345`
