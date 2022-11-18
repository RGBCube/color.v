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

const no_color = !term.can_show_color_on_stdout()
