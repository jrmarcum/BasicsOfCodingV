#### V uses `v test` to run tests. Test functions are named `test_*` and use `assert` for assertions. V does not have a built-in table-driven subtest runner like Go's `t.Run`; iterate with assertions instead. Benchmarks use manual timing rather than a `testing.B` equivalent.
___
##### Run Command:

`$ v test .`

##### Results:

`OK   test_int_min_basic`
`OK   test_int_min_table_driven`
