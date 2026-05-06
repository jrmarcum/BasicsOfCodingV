#### V's `os.signal` module handles Unix signals via a channel. `signal.notify` registers signals to deliver to the channel; receiving from it blocks until a signal arrives. V does not expose `context.Cause` for signal-triggered cancellations.
___
##### Run Command:

`$ v run signals.v`

##### Results:

`awaiting signal`
`^C`
`exiting`
