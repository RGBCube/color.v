module color

type Color = BasicColor | TrueColor

// I have no idea why this is needed
fn (c Color) color(msg string) string {
	return c.color(msg)
}

fn (c Color) color_bg(msg string) string {
	return c.color_bg(msg)
}
