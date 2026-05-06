#### V's `net` module provides TCP server support via `net.listen_tcp`. Each connection is handled in a goroutine using a buffered reader from `io`.
___
##### Run Command:

`$ v run tcp-server.v`

##### Results:

`(server listens on :8090; test with: echo 'hi' | nc localhost 8090)`
`ACK: HI`
