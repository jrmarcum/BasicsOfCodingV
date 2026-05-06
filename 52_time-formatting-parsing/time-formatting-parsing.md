#### V supports RFC3339 formatting and parsing via `format_rfc3339()` and `parse_rfc3339()`. Go's reference-time custom layouts are not available; use struct fields for custom numeric formats.
___
##### Run Command:

`$ v run time-formatting-parsing.v`

##### Results:

`2012-11-01T22:08:41+00:00`
`2012-11-01T22:08:41+00:00`
`2012-11-01 22:08:41`
`2012-11-01T22:08:41-00:00`
`... (error message for malformed input)`
