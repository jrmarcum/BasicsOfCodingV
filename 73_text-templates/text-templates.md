#### V has no `text/template` package. String interpolation `${}` and string `.replace()` are the idiomatic V alternatives for dynamic text generation. Struct fields and map values are accessed directly in interpolated strings.
___
##### Run Command:

`$ v run text-templates.v`

##### Results:

`Value: some text`
`Value: 5`
`Value: ['Go', 'Rust', 'C++', 'C#']`
`Name: Jane Doe`
`Name: Mickey Mouse`
`yes no `
`Range: Go Rust C++ C# `
