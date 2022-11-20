module color

import term

pub const (
	// Colors
	black          = Color(BasicColor.black)
	red            = Color(BasicColor.red)
	green          = Color(BasicColor.green)
	yellow         = Color(BasicColor.yellow)
	blue           = Color(BasicColor.blue)
	magenta        = Color(BasicColor.magenta)
	cyan           = Color(BasicColor.cyan)
	white          = Color(BasicColor.white)
	bright_black   = Color(BasicColor.bright_black)
	bright_red     = Color(BasicColor.bright_red)
	bright_green   = Color(BasicColor.bright_green)
	bright_yellow  = Color(BasicColor.bright_yellow)
	bright_blue    = Color(BasicColor.bright_blue)
	bright_magenta = Color(BasicColor.bright_magenta)
	bright_cyan    = Color(BasicColor.bright_cyan)
	bright_white   = Color(BasicColor.bright_white)
	// Styles
	reset          = Renderable(Style.reset)
	bold           = Renderable(Style.bold)
	dim            = Renderable(Style.dim)
	italic         = Renderable(Style.italic)
	underline      = Renderable(Style.underline)
	slow_blink     = Renderable(Style.slow_blink)
	rapid_blink    = Renderable(Style.rapid_blink)
	inverse        = Renderable(Style.inverse)
	hidden         = Renderable(Style.hidden)
	strikethrough  = Renderable(Style.strikethrough)
)

const no_color = !term.can_show_color_on_stdout()
