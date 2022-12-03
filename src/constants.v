module color

import term

pub const (
	// Styles
	reset          = Style(StyleImpl.reset)
	bold           = Style(StyleImpl.bold)
	dim            = Style(StyleImpl.dim)
	italic         = Style(StyleImpl.italic)
	underline      = Style(StyleImpl.underline)
	slow_blink     = Style(StyleImpl.slow_blink)
	rapid_blink    = Style(StyleImpl.rapid_blink)
	inverse        = Style(StyleImpl.inverse)
	hidden         = Style(StyleImpl.hidden)
	strikethrough  = Style(StyleImpl.strikethrough)
	// Colors
	black          = Color(BasicColor.black)
	bright_black   = Color(BasicColor.bright_black)
	red            = Color(BasicColor.red)
	bright_red     = Color(BasicColor.bright_red)
	green          = Color(BasicColor.green)
	bright_green   = Color(BasicColor.bright_green)
	yellow         = Color(BasicColor.yellow)
	bright_yellow  = Color(BasicColor.bright_yellow)
	blue           = Color(BasicColor.blue)
	bright_blue    = Color(BasicColor.bright_blue)
	magenta        = Color(BasicColor.magenta)
	bright_magenta = Color(BasicColor.bright_magenta)
	cyan           = Color(BasicColor.cyan)
	bright_cyan    = Color(BasicColor.bright_cyan)
	white          = Color(BasicColor.white)
	bright_white   = Color(BasicColor.bright_white)
)

const no_color = !term.can_show_color_on_stdout()
