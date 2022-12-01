module color

import term

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

enum StyleImpl {
	reset
	bold
	dim
	italic
	underline
	slow_blink
	rapid_blink
	inverse
	hidden
	strikethrough
}

fn (s StyleImpl) render(str string) string {
	return if no_color {
		str
	} else {
		func := match s {
			.reset { term.reset }
			.bold { term.bold }
			.dim { term.dim }
			.italic { term.italic }
			.underline { term.underline }
			.slow_blink { term.slow_blink }
			.rapid_blink { term.rapid_blink }
			.inverse { term.inverse }
			.hidden { term.hidden }
			.strikethrough { term.strikethrough }
		}

		func(str)
	}
}
