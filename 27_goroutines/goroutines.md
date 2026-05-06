#### When we run this program, we see the output of the blocking call first, then the output of the two goroutines. The goroutines' output may be interleaved, because goroutines are being run concurrently by the V runtime.
___
##### Run Command:

`$ v run goroutines.v`

##### Results:

`direct : 0`
`direct : 1`
`direct : 2`
`goroutine : 0`
`going`
`goroutine : 1`
`goroutine : 2`
`done`
