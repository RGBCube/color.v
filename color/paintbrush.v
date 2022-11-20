module color

// Interface

pub interface Brush {
	Style
mut:
	set_disabled(bool)
}

[params]
pub struct BrushParams {
	fg     ?Color
	bg     ?Color
	styles []Style
}

pub fn new_brush(p BrushParams) !Brush {
	mut style_counter := map[int]int{}

	for style in p.styles {
		if style is Color {
			return error('A Color was given instead of a Style')
		}
		// Style is definitely not a Color
		style_counter[typeof(style).idx]++

		if style_counter[typeof(style).idx] > 1 {
			return error('Multiple of the same style was provided')
		}
	}

	return BrushImpl{
		fg: p.fg
		bg: p.bg
		styles: p.styles
	}
}

// Declaration

struct BrushImpl {
	fg     ?Color
	bg     ?Color
	styles []Style
mut:
	disabled bool
}

fn (p &BrushImpl) render(msg string) string {
	return if no_color || p.disabled {
		msg
	} else {
		mut result := msg

		if fg := p.fg {
			result = fg.render(result)
		}
		if bg := p.bg {
			result = bg.render_bg(result)
		}
		for style in p.styles {
			result = style.render(result)
		}

		result
	}
}

fn (mut p BrushImpl) set_disabled(value bool) {
	p.disabled = value
}
