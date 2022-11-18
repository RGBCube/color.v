module color

import term

[noinit]
struct TrueColor {
pub:
	r int [required]
	g int [required]
	b int [required]
}

pub fn rgb(r int, g int, b int) !TrueColor {
	if r < 0 || r > 255 || g < 0 || g > 255 || b < 0 || b > 255 {
		return error('Red, green and blue must each be between 0 and 255')
	}
	return TrueColor{
		r: r
		g: g
		b: b
	}
}

pub fn hex(hex int) !TrueColor {
	return rgb(hex >> 16, hex >> 8 & 0xFF, hex & 0xFF)!
}

pub fn (c TrueColor) apply(msg string) string {
	return term.rgb(c.r, c.g, c.b, msg)
}

pub fn (c TrueColor) apply_bg(msg string) string {
	return term.bg_rgb(c.r, c.g, c.b, msg)
}
