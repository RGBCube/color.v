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

struct BasicColor {
	pub:
	render    fn (string) string
	render_bg fn (string) string
}
