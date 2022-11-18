module color

pub type Color = BasicColor | TrueColor

pub fn (c Color) render(msg string) string {
	if no_color {
		return msg
	}

	return c.render(msg)
}

pub fn (c Color) render_bg(msg string) string {
	if no_color {
		return msg
	}

	return c.render_bg(msg)
}

pub fn (c Color) cprint(msg string) {
	print(c.render(msg))
}

pub fn (c Color) cprintln(msg string) {
	println(c.render(msg))
}

pub fn (c Color) cprint_bg(msg string) {
	print(c.render_bg(msg))
}

pub fn (c Color) cprintln_bg(msg string) {
	println(c.render_bg(msg))
}
