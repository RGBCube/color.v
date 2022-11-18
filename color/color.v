module color

pub type Color = BasicColor | TrueColor

pub fn (c Color) render(msg string) string {
	return c.render(msg)
}

pub fn (c Color) render_bg(msg string) string {
	return c.render_bg(msg)
}

pub fn (c Color) cprint(msg string) {
	c.cprint(msg)
}

pub fn (c Color) cprintln(msg string) {
	c.cprintln(msg)
}

pub fn (c Color) cprint_bg(msg string) {
	c.cprint_bg(msg)
}

pub fn (c Color) cprintln_bg(msg string) {
	c.cprintln_bg(msg)
}
