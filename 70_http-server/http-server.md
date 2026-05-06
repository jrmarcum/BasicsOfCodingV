#### V's `net.http.server` module provides a struct-based HTTP server. Handlers implement the `server.Handler` interface by defining a `handle` method, rather than Go's `http.HandlerFunc` adapter pattern.
___
##### Run Command:

`$ v run http-server.v`

##### Results:

`(server listens on :8090; test with curl http://localhost:8090/hello)`
