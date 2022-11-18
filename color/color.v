module color

type Color = BasicColor | TrueColor

// I have no idea why these are needed

fn (c Color) render(msg string) string {
	return c.render(msg)
}

fn (c Color) render_bg(msg string) string {
	return c.render_bg(msg)
}

fn (c Color) cprint(msg string) string {
	return c.cprint(msg)
}

fn (c Color) cprintln(msg string) string {
	return c.cprintln(msg)
}

fn (c Color) cprintln_bg(msg string) string {
	return c.cprintln_bg(msg)
}

fn (c Color) cprint_bg(msg string) string {
	return c.cprint_bg(msg)
}
