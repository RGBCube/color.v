module color

import term

// Color is a Style extension that also supports rendering in the background.
// Every Color is a Style, but not every Style is a Color.
pub interface Color {
	Style // Inherits Style methods.
	render_bg(string) string // Renders the color as the background for the given string.
}

// print_bg prints the given string with the color in the background.
pub fn (c Color) print_bg(str string) {
	print(c.render_bg(str))
}

// println_bg prints the given string with the color in the background with an added newline.
pub fn (c Color) println_bg(str string) {
	println(c.render_bg(str))
}

// rgb returns a Color with the given RGB values.
pub fn rgb(r u8, g u8, b u8) Color {
	return TrueColor{
		r: r
		g: g
		b: b
	}
}

// hex returns a Color with the given hex value.
pub fn hex(hex int) Color {
	return rgb(u8(hex >> 16), u8(hex >> 8 & 0xFF), u8(hex & 0xFF))
}

struct TrueColor {
	r u8
	g u8
	b u8
}

fn (c TrueColor) render(str string) string {
	return if no_color {
		str
	} else {
		term.rgb(c.r, c.g, c.b, str)
	}
}

fn (c TrueColor) render_bg(str string) string {
	return if no_color {
		str
	} else {
		term.bg_rgb(c.r, c.g, c.b, str)
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

fn (c BasicColor) render(str string) string {
	return if no_color {
		str
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

		func(str)
	}
}

fn (c BasicColor) render_bg(str string) string {
	return if no_color {
		str
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

		func(str)
	}
}
