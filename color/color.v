module color

pub interface Renderable {
	render(string) string
}

pub fn (r Renderable) cprint(msg string) {
	print(r.render(msg))
}

pub fn (r Renderable) cprintln(msg string) {
	println(r.render(msg))
}

pub interface Color {
	Renderable
	render_bg(string) string
}

pub fn (c Color) cprint_bg(msg string) {
	print(c.render_bg(msg))
}

pub fn (c Color) cprintln_bg(msg string) {
	println(c.render_bg(msg))
}
