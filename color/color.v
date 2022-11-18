module color

type Color = BasicColor | NoColor | TrueColor

const no_color = NoColor{}

struct NoColor {}

fn (c Color) apply(msg string) string {
	return match c {
		NoColor { msg }
		else { c.apply(msg) }
	}
}

fn (c Color) apply_bg(msg string) string {
	return match c {
		NoColor { msg }
		else { c.apply_bg(msg) }
	}
}
