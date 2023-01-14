<div align="center">

<h1>color.v</h1>

[Docs](https://rgbcube.github.io/docs/color)

A V library to aid in printing colored text to the terminal.

</div>

## Installation

After doing these, you can use the module in your V programs by importing `rgbcube.color`.

### Via VPM

```bash
v install RGBCube.color
```

### Via Git

```bash
git clone https://github.com/RGBCube/color.v ~/.vmodules/rgbcube/color
```

## Examples

Here are some examples to get you started:

### Basic

```v,oksyntax
import rgbcube.color

color.red.println('Hello, World!')
color.cyan.println_bg('Hello, World!')
color.bold.println('Hello, World!')
```

### Advanced

```v,oksyntax
import rgbcube.color

brush := color.new_brush(
    fg: color.rgb(0, 0, 0)
    bg: color.hex(0xffffff)
    styles: [color.bold, color.underline, color.italic]
)

brush.println('Hello, World!')
```

## License

```
MIT License

Copyright (c) 2022-present RGBCube

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
