module color

import term

// Interface

pub interface Style {
	render(string) string
}

pub fn (s Style) cprint(msg string) {
	print(s.render(msg))
}

pub fn (s Style) cprintln(msg string) {
	println(s.render(msg))
}

// Implementation

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

fn (s StyleImpl) render(msg string) string {
	return if no_color {
		msg
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

		func(msg)
	}
}
