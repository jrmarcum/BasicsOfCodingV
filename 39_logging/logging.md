#### Sample output; the date and time emitted will depend on when the example ran. V's `log` module is simpler than Go's — it lacks microsecond flags and structured JSON output.
___
##### Run Command:

`$ v run logging.v`

##### Results:

`2023-08-22 10:45:16 INFO standard logger`
`2023-08-22 10:45:16 WARN with warning`
`2023-08-22 10:45:16 INFO my from mylog`
`2023-08-22 10:45:16 INFO ohmy from mylog`
`from buflog:2023-08-22 10:45:16 INFO buf hello`
