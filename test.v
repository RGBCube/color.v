module main

import color

fn main() {
	color.red.cprintln('Hello World')
	color.cyan.cprintln_bg('Hello World')
	color.bold.cprintln('Hello World')

	brush := color.new_brush(
		fg: color.rgb(0, 0, 0)!
		bg: color.hex(0xffffff)!
		style: [color.bold, color.underline, color.italic]
	)!

	brush.cprintln('Hello World')
}
