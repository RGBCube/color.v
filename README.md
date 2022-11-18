# v-color

An easier way to print colored text to the terminal

# Example

## Basic

```v
import color

println(color.red.color('Hello World'))
println(color.bold.color('Hello World'))
```

## Advanced

```v
import color

p := color.PaintBrush{
    fg: color.rgb(0, 0, 0)!,
    bg: color.hex(0xffffff)!,
    styles: [color.bold, color.underline, color.italic]
}

print(p.color('Hello World'))
```
