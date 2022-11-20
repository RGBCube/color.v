module color

import term

pub fn rgb(r u8, g u8, b u8) Color {
	return TrueColor{
		r: r
		g: g
		b: b
	}
}

pub fn hex(hex int) Color {
	return rgb(u8(hex >> 16), u8(hex >> 8 & 0xFF), u8(hex & 0xFF))
}

struct TrueColor {
	r u8
	g u8
	b u8
}

fn (c TrueColor) render(msg string) string {
	return if no_color {
		msg
	} else {
		term.rgb(c.r, c.g, c.b, msg)
	}
}

fn (c TrueColor) render_bg(msg string) string {
	return if no_color {
		msg
	} else {
		term.bg_rgb(c.r, c.g, c.b, msg)
	}
}
