module color

type Color = BasicColor | TrueColor

// I have no idea why this is needed
fn (c Color) apply(msg string) string {
	return c.apply(msg)
}

fn (c Color) apply_bg(msg string) string {
	return c.apply_bg(msg)
}
