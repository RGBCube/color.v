module main

import color

fn main() {
	p := color.PaintBrush{
		fg: color.rgb(0, 0, 0)!
		bg: color.hex(0xffffff)!
		styles: [color.bold, color.underline, color.italic]
	}

	print(p.color('Hello World'))
}
