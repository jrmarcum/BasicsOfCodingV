#### V does not have a built-in `time.NewTimer`; this example implements the same pattern with a goroutine and channel. The first timer fires ~2s after the program starts; the second is stopped before it fires.
___
##### Run Command:

`$ v run timers.v`

##### Results:

`Timer 1 fired`
`Timer 2 stopped`
