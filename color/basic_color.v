module color

import term

pub const (
	black          = BasicColor.black
	red            = BasicColor.red
	green          = BasicColor.green
	yellow         = BasicColor.yellow
	blue           = BasicColor.blue
	magenta        = BasicColor.magenta
	cyan           = BasicColor.cyan
	white          = BasicColor.white
	bright_black   = BasicColor.bright_black
	bright_red     = BasicColor.bright_red
	bright_green   = BasicColor.bright_green
	bright_yellow  = BasicColor.bright_yellow
	bright_blue    = BasicColor.bright_blue
	bright_magenta = BasicColor.bright_magenta
	bright_cyan    = BasicColor.bright_cyan
	bright_white   = BasicColor.bright_white
)

enum BasicColor {
	black
	red
	green
	yellow
	blue
	magenta
	cyan
	white
	bright_black
	bright_red
	bright_green
	bright_yellow
	bright_blue
	bright_magenta
	bright_cyan
	bright_white
}

pub fn (c BasicColor) color(msg string) string {
	func := match c {
		.black { term.black }
		.red { term.red }
		.green { term.green }
		.yellow { term.yellow }
		.blue { term.blue }
		.magenta { term.magenta }
		.cyan { term.cyan }
		.white { term.white }
		.bright_black { term.bright_black }
		.bright_red { term.bright_red }
		.bright_green { term.bright_green }
		.bright_yellow { term.bright_yellow }
		.bright_blue { term.bright_blue }
		.bright_magenta { term.bright_magenta }
		.bright_cyan { term.bright_cyan }
		.bright_white { term.bright_white }
	}
	return func(msg)
}

pub fn (c BasicColor) color_bg(msg string) string {
	func := match c {
		.black { term.bg_black }
		.red { term.bg_red }
		.green { term.bg_green }
		.yellow { term.bg_yellow }
		.blue { term.bg_blue }
		.magenta { term.bg_magenta }
		.cyan { term.bg_cyan }
		.white { term.bg_white }
		.bright_black { term.bright_bg_black }
		.bright_red { term.bright_bg_red }
		.bright_green { term.bright_bg_green }
		.bright_yellow { term.bright_bg_yellow }
		.bright_blue { term.bright_bg_blue }
		.bright_magenta { term.bright_bg_magenta }
		.bright_cyan { term.bright_bg_cyan }
		.bright_white { term.bright_bg_white }
	}
	return func(msg)
}
