module color

import term

pub const (
	reset         = Style.reset
	bold          = Style.bold
	dim           = Style.dim
	italic        = Style.italic
	underline     = Style.underline
	slow_blink    = Style.slow_blink
	rapid_blink   = Style.rapid_blink
	inverse       = Style.inverse
	hidden        = Style.hidden
	strikethrough = Style.strikethrough
)

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
