module color

pub interface Style {
	render(string) string
}

pub fn (s Style) cprint(msg string) {
	print(s.render(msg))
}

pub fn (s Style) cprintln(msg string) {
	println(s.render(msg))
}

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
