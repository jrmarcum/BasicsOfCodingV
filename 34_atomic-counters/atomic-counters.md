#### V uses mutex-protected counters in place of Go's `sync/atomic` package. The result is always 50000.
___
##### Run Command:

`$ v run atomic-counters.v`

##### Results:

`ops: 50000`
