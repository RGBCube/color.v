module color

fn test_brush() {
	brush := new_brush(
		fg: bright_white
		bg: bright_red
		styles: [bold, underline]
	)

	brush.println('Hello, World!')
}
