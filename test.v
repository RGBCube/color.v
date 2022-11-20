module main

import color

fn main() {
	color.red.cprintln('Hello World')
	color.black.cprintln_bg('Hello World')
	color.bold.cprintln('Hello World')

	brush := color.new_brush(
		fg: color.rgb(0, 0, 0)
		bg: color.hex(0xffffff)
		styles: [color.bold, color.dim, color.italic]
	)!

	brush.cprintln('Hello World')
}
