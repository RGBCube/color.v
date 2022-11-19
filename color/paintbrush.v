module color

[noinit]
pub struct Brush {
pub:
	fg    ?Color
	bg    ?Color
	style []Style
__global:
	disabled bool
}

[params]
pub struct BrushParams {
	fg   ?Color
	bg ?Color
	style    []Style
	disabled bool
}

pub fn new_brush(p BrushParams) !Brush {
	mut count := map[Style]int{}

	for style in p.style {
		count[style]++

		if count[style] > 1 {
			return error('Multiple of the same style was provided')
		}
	}

	return Brush{
		fg: p.fg
		bg: p.bg
		style: p.style
	}
}

pub fn (p &Brush) render(msg string) string {
	if no_color || p.disabled {
		return msg
	}

	mut result := msg

	if fg := p.fg {
		result = fg.render(result)
	}
	if bg := p.bg {
		result = bg.render(result)
	}
	for style in p.style {
		result = style.render(result)
	}

	return result
}

pub fn (p &Brush) cprint(msg string) {
	print(p.render(msg))
}

pub fn (p &Brush) cprintln(msg string) {
	println(p.render(msg))
}
