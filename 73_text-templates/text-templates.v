// V has no text/template package. String interpolation is the idiomatic
// approach for simple dynamic text; this example mirrors Go's output
// using string methods and interpolation.

fn render(tmpl string, value string) string {
	return tmpl.replace('{{.}}', value)
}

struct Person {
	name string
}

fn main() {
	// Basic value substitution via string replacement.
	t1 := 'Value: {{.}}\n'
	print(render(t1, 'some text'))
	print(render(t1, '5'))
	print(render(t1, "['Go', 'Rust', 'C++', 'C#']"))

	// Struct field access via interpolation.
	jane := Person{ name: 'Jane Doe' }
	println('Name: ${jane.name}')

	mickey := map[string]string{
		'Name': 'Mickey Mouse'
	}
	println('Name: ${mickey['Name']}')

	// Conditional output.
	for _, val in ['not empty', ''] {
		if val != '' {
			print('yes ')
		} else {
			print('no ')
		}
	}
	println('')

	// Range over a slice.
	langs := ['Go', 'Rust', 'C++', 'C#']
	print('Range: ')
	for lang in langs {
		print('${lang} ')
	}
	println('')
}
