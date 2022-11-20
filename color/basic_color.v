module color

import term

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

fn (c BasicColor) render(msg string) string {
	return if no_color {
		msg
	} else {
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

		func(msg)
	}
}

fn (c BasicColor) render_bg(msg string) string {
	return if no_color {
		msg
	} else {
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

		func(msg)
	}
}
