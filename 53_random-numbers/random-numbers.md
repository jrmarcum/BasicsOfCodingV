#### V's `rand` module provides pseudorandom number generation. Use `rand.seed([u32(n), 0])` to produce reproducible sequences from a fixed seed.
___
##### Run Command:

`$ v run random-numbers.v`

##### Results:

`81,87`
`0.6645600532184904`
`7.123187485356329,8.212712099917994`
`... (time-seeded values vary)`
`... (fixed-seed values reproducible per RNG implementation)`
