module color

import term

enum Style {
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

pub fn (s Style) color(msg string) string {
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
	return func(msg)
}
