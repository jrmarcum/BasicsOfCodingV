#### V has no standard XML encoding package. This example uses string interpolation to produce equivalent XML output.
___
##### Run Command:

`$ v run xml.v`

##### Results:

` <plant id="27">`
`  <name>Coffee</name>`
`    <origin>Ethiopia</origin>`
`    <origin>Brazil</origin>`
` </plant>`
`<?xml version="1.0" encoding="UTF-8"?>`
` <plant id="27">`
`  <name>Coffee</name>`
`    <origin>Ethiopia</origin>`
`    <origin>Brazil</origin>`
` </plant>`
`Plant id=27, name=Coffee, origin=['Ethiopia', 'Brazil']`
