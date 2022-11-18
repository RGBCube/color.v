module color

import term

const can_show_color = term.can_show_color_on_stdout()

pub struct PaintBrush {
pub:
	fg     ?Color
	bg     ?Color
	styles []Style
}

pub fn (p &PaintBrush) color(msg string) string {
	if !color.can_show_color {
		return msg
	}

	mut result := msg

	if fg := p.fg {
		result = fg.color(result)
	}
	if bg := p.bg {
		result = bg.color(result)
	}

	for style in p.styles {
		result = style.color(result)
	}

	return result
}
