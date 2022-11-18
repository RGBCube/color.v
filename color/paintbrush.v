module color

pub struct PaintBrush {
pub:
	fg     ?Color
	bg     ?Color
	styles []Style
}

pub fn (p &PaintBrush) render(msg string) string {
	if no_color {
		return msg
	}

	mut result := msg

	if fg := p.fg {
		result = fg.render(result)
	}
	if bg := p.bg {
		result = bg.render(result)
	}

	for style in p.styles {
		result = style.render(result)
	}

	return result
}

pub fn (p &PaintBrush) cprint(msg string) {
	print(p.render(msg))
}

pub fn (p &PaintBrush) cprintln(msg string) {
	println(p.render(msg))
}
