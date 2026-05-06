#### V's `net.urllib` module parses URLs into scheme, user info, host, path, fragment, and query components. Map output format differs from Go's `map[k:[v]]`.
___
##### Run Command:

`$ v run url-parsing.v`

##### Results:

`postgres`
`user:pass`
`user`
`pass`
`host.com:5432`
`host.com`
`5432`
`/path`
`f`
`k=v`
`{'k': ['v']}`
`v`
