#### V uses `'${value:format}'` interpolation instead of Go's `fmt.Printf` verbs. Struct printing uses V's own format (field names with values).
___
##### Run Command:

`$ v run string-formatting.v`

##### Results:

`Point{x: 1, y: 2}`
`struct: Point{x: 1, y: 2}`
`type: Point`
`true`
`123`
`1110`
`!`
`1c8`
`78.900000`
`1.234000e+08`
`1.234000E+08`
`"string"`
`"string"`
`6865782074686973`
`|    12|   345|`
`|  1.20|  3.45|`
`|1.20  |3.45  |`
`|   foo|     b|`
`|foo   |b     |`
`a string`
`an error`
