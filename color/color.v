module color

import term

// Interface

pub interface Color {
	Style
	render_bg(string) string
}

pub fn (c Color) cprint_bg(msg string) {
	print(c.render_bg(msg))
}

pub fn (c Color) cprintln_bg(msg string) {
	println(c.render_bg(msg))
}

// TrueColor Initialization

pub fn rgb(r u8, g u8, b u8) Color {
	return TrueColor{
		r: r
		g: g
		b: b
	}
}

pub fn hex(hex int) Color {
	return rgb(u8(hex >> 16), u8(hex >> 8 & 0xFF), u8(hex & 0xFF))
}

// Implementations

struct TrueColor {
	r u8
	g u8
	b u8
}

fn (c TrueColor) render(msg string) string {
	return if no_color {
		msg
	} else {
		term.rgb(c.r, c.g, c.b, msg)
	}
}

fn (c TrueColor) render_bg(msg string) string {
	return if no_color {
		msg
	} else {
		term.bg_rgb(c.r, c.g, c.b, msg)
	}
}

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
