// V provides regular expression support via the `regex` module.
import regex

fn main() {
	// Test whether a pattern matches a string.
	mut r := regex.regex_opt('p([a-z]+)ch') or { panic(err) }
	println(r.matches_string('peach'))

	// Find the match for the regexp.
	start, end := r.match_string('peach punch')
	if start >= 0 {
		println('peach punch'[start..end])
	}

	// Find all matches.
	all_matches := r.find_all_str('peach punch pinch')
	println(all_matches)

	// Limit the number of matches.
	mut count := 0
	for m in all_matches {
		if count >= 2 { break }
		println(m)
		count++
	}

	// Replace matching substrings.
	result := r.replace('a peach', '<fruit>')
	println(result)
}
