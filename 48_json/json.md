#### V's `json` module is simpler than Go's — no `interface{}` map decoding; V decodes directly into typed structs.
___
##### Run Command:

`$ v run json.v`

##### Results:

`true`
`1`
`2.34`
`"vector"`
`["apple","peach","pear"]`
`{"page":1,"fruits":["apple","peach","pear"]}`
`{"page":1,"fruits":["apple","peach","pear"]}`
`Response2{page: 1, fruits: ['apple', 'peach']}`
`apple`
