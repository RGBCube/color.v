module main

import color

fn main() {
	color.red.println('Hello World')
	color.black.println_bg('Hello World')
	color.bold.println('Hello World')

	brush := color.new_brush(
		fg: color.rgb(0, 0, 0)
		bg: color.hex(0xffffff)
		styles: [color.bold, color.dim, color.italic]
	)!

	brush.println('Hello World')
}
