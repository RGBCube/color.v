module color

import term
import datatypes

const can_show_color = term.can_show_color_on_stdout()

pub struct PaintBrush {
pub:
	fg     Color = no_color
	bg     Color = no_color
	styles []Style
}

pub fn (p &PaintBrush) apply(msg string) string {
	if !color.can_show_color {
		return msg
	}

	mut result := p.bg.apply(p.fg.apply(msg))

	for style in p.styles {
		result = style.apply(result)
	}

	return result
}
