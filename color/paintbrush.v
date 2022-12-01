module color

// Interface

// Brush is the complex Style type that can hold multiple colors and styles.
pub interface Brush {
	Style
mut:
	set_disabled(bool)
}

// Initialization

[params]
pub struct BrushParams {
	fg       ?Color
	bg       ?Color
	styles   []Style
	disabled bool
}

// new_brush creates a new Brush with the given parameters.
pub fn new_brush(p BrushParams) !Brush {
	return BrushImpl{
		fg: p.fg
		bg: p.bg
		styles: p.styles
		disabled: disabled
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
