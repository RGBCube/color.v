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
	black          = Color(BasicColor{term.black, term.bg_black})
	bright_black   = Color(BasicColor{term.bright_black, term.bright_bg_black})
	red            = Color(BasicColor{term.red, term.bg_red})
	bright_red     = Color(BasicColor{term.bright_red, term.bright_bg_red})
	green          = Color(BasicColor{term.green, term.bg_green})
	bright_green   = Color(BasicColor{term.bright_green, term.bright_bg_green})
	yellow         = Color(BasicColor{term.yellow, term.bg_yellow})
	bright_yellow  = Color(BasicColor{term.bright_yellow, term.bright_bg_yellow})
	blue           = Color(BasicColor{term.blue, term.bg_blue})
	bright_blue    = Color(BasicColor{term.bright_blue, term.bright_bg_blue})
	magenta        = Color(BasicColor{term.magenta, term.bg_magenta})
	bright_magenta = Color(BasicColor{term.bright_magenta, term.bright_bg_magenta})
	cyan           = Color(BasicColor{term.cyan, term.bg_cyan})
	bright_cyan    = Color(BasicColor{term.bright_cyan, term.bright_bg_cyan})
	white          = Color(BasicColor{term.white, term.bg_white})
	bright_white   = Color(BasicColor{term.bright_white, term.bright_bg_white})
)

const no_color = !term.can_show_color_on_stdout()
