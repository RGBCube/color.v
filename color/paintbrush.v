module color

// Interface

pub interface Brush {
	Style
	set_disabled(bool)
}

[params]
pub interface BrushParams {
	fg ?Color
	bg ?Color
}

pub fn new_brush(styles ...Style, p BrushParams) !Brush {
	mut style_counter := map[Style]int{}

	for style in styles {
		if style is Color {
			return error('A Color was given instead of a Style')
		}
		// Style is definitely not a Color
		style_counter[style]++

		if style_counter[style] > 1 {
			return error('Multiple of the same style was provided')
		}
	}

	return BrushImpl{styles + p.fg, bg}
}

// Declaration

struct BrushImpl {
	// The foreground is in styles because it fits that interface
	styles []Style
	bg     ?Color
mut:
	disabled bool
}

fn (p &BrushImpl) render(msg string) string {
	return if no_color || p.disabled {
		msg
	} else {
		mut result := msg

		for style in p.styles {
			result = style.render(result)
		}
		if bg := p.bg {
			result = bg.render_bg(result)
		}

		result
	}
}

fn (mut p &BrushImpl) set_disabled(value bool) {
	p.disabled = value
}
