module color

// Style is an interface for a style.
pub interface Style {
	render(string) string // Renders the string with the given style.
}

// print prints the given string with the given style.
pub fn (s Style) print(str string) {
	print(s.render(str))
}

// println prints the given string with the given style with an added newline.
pub fn (s Style) println(str string) {
	println(s.render(str))
}

struct StyleImpl {
	render_fn fn (string) string
}

fn (s StyleImpl) render(str string) string {
	return if no_color {
		str
	} else {
		s.render_fn(str)
	}
}
