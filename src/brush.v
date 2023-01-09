module color

// Brush is the complex Style type that can hold multiple colors and styles.
pub interface Brush {
	Style // Inherits Style methods.
mut:
	set_disabled(bool) // Enable/disable the brush. When disabled, the brush doesn't render anything and returns the given string.
}

[params]
pub struct BrushParams {
	fg       ?Color
	bg       ?Color
	styles   []Style
	disabled bool
}

// new_brush creates a new Brush with the given parameters.

pub fn new_brush(p BrushParams) Brush {
	return BrushImpl{
		fg: p.fg
		bg: p.bg
		styles: p.styles
		disabled: p.disabled
	}
}

// new_brush_pointers creates a new Brush pointer with the given parameters.
// This is useful for long-lived brush instances.

pub fn new_brush_pointer(p BrushParams) &Brush {
	return &BrushImpl{
		fg: p.fg
		bg: p.bg
		styles: p.styles
		disabled: p.disabled
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

fn (p &BrushImpl) render(str string) string {
	return if no_color || p.disabled {
		str
	} else {
		mut result := str

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
