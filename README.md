# v-color

An easier way to print colored text to the terminal.

# Example

## Basic

```v
import color

color.red.cprintln('Hello World')
color.bold.cprintln('Hello World')
```

## Advanced

```v
import color

brush := color.PaintBrush{
    fg: color.rgb(0, 0, 0)!,
    bg: color.hex(0xffffff)!,
    styles: [color.bold, color.underline, color.italic]
}

brush.cprintln('Hello World')
```
