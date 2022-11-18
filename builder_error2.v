module main

import color

fn main() {
	p := color.new_brush(
		fg: color.rgb(0, 0, 0)!
		bg: color.hex(0xffffff)!
		style: [color.bold, color.underline, color.italic]
	)!

	p.cprintln('Hello World')
}
