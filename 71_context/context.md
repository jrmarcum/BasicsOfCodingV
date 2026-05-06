#### V has no `context.Context` package. Cancellation is implemented using a shared channel that signals goroutines or handlers to stop, combined with `select` for timeout.
___
##### Run Command:

`$ v run context.v`

##### Results:

`(server listens on :8090; cancel with Ctrl-C or close the connection early)`
`server: hello handler started`
`server: request cancelled`
`server: hello handler ended`
