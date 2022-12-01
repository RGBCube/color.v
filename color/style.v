module color

import term

// Interface

// Style is an interface for a style.
pub interface Style {
	render(string) string
}

// print prints the given string with the given style.
pub fn (s Style) print(msg string) {
	print(s.render(msg))
}

// println prints the given string with the given style with an added newline.
pub fn (s Style) println(msg string) {
	println(s.render(msg))
}

// Implementation

enum StyleImpl {
	reset
	bold
	dim
	italic
	// underline
	// slow_blink
	// rapid_blink
	// inverse
	// hidden
	// strikethrough
}

fn (s StyleImpl) render(msg string) string {
	return if no_color {
		msg
	} else {
		func := match s {
			.reset { term.reset }
			.bold { term.bold }
			.dim { term.dim }
			.italic { term.italic }
			//.underline { term.underline }
			//.slow_blink { term.slow_blink }
			//.rapid_blink { term.rapid_blink }
			//.inverse { term.inverse }
			//.hidden { term.hidden }
			//.strikethrough { term.strikethrough }
		}

		func(msg)
	}
}
