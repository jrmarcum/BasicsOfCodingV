#### V's `crypto.sha256` module computes SHA256 hashes via `sha256.sum256()`, which returns a `[32]u8` fixed array. Use `h[..].hex()` to convert to a hex string.
___
##### Run Command:

`$ v run sha256-hashes.v`

##### Results:

`sha256 this string`
`1af1dfa857bf1d8814fe1af8983c18080019922e557f15a8a0adada494dea62d`
