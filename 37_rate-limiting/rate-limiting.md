#### Sample output; timestamps will reflect when the example ran. The first 3 bursty requests are served immediately; the last 2 are limited to ~200ms apart.
___
##### Run Command:

`$ v run rate-limiting.v`

##### Results:

`request 1 2012-10-19 00:38:18.687438 +0000 UTC`
`request 2 2012-10-19 00:38:18.887970 +0000 UTC`
`request 3 2012-10-19 00:38:19.088008 +0000 UTC`
`request 4 2012-10-19 00:38:19.288046 +0000 UTC`
`request 5 2012-10-19 00:38:19.488064 +0000 UTC`
`request 1 2012-10-19 00:38:19.688000 +0000 UTC`
`request 2 2012-10-19 00:38:19.688000 +0000 UTC`
`request 3 2012-10-19 00:38:19.688000 +0000 UTC`
`request 4 2012-10-19 00:38:19.888000 +0000 UTC`
`request 5 2012-10-19 00:38:20.088000 +0000 UTC`
