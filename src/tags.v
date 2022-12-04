import term

const start_tags = {
	// Reset tag
	'<reset>':             term.format_esc('0')
	// Style tags
	'<bold>':              term.format_esc('1')
	'<b>':                 start_tags['<bold>']
	'<dim>':               term.format_esc('2')
	'<d>':                 start_tags['<dim>']
	'<italic>':            term.format_esc('3')
	'<i>':                 start_tags['<italic>']
	'<underline>':         term.format_esc('4')
	'<ul>':                start_tags['<underline>']
	'<slow>-blink':        term.format_esc('5')
	'<sb>':                start_tags['<slow-blink>']
	'<rapid>-blink':       term.format_esc('6')
	'<rb>':                start_tags['<rapid-blink>']
	'<inverse>':           term.format_esc('7')
	'<inv>':               start_tags['<inverse>']
	'<hidden>':            term.format_esc('8')
	'<h>':                 start_tags['<hidden>']
	'<strikethrough>':     term.format_esc('9')
	'<st>':                start_tags['<strikethrough>']
	// Color tags
	'<black>':             term.format_esc('30')
	'<black-bg>':          term.format_esc('40')
	'<bright-black>':      term.format_esc('90')
	'<bright-black-bg>':   term.format_esc('100')
	'<red>':               term.format_esc('31')
	'<red-bg>':            term.format_esc('41')
	'<bright-red>':        term.format_esc('91')
	'<bright-red-bg>':     term.format_esc('101')
	'<green>':             term.format_esc('32')
	'<green-bg>':          term.format_esc('42')
	'<bright-green>':      term.format_esc('92')
	'<bright-green-bg>':   term.format_esc('102')
	'<yellow>':            term.format_esc('33')
	'<yellow-bg>':         term.format_esc('43')
	'<bright-yellow>':     term.format_esc('93')
	'<bright-yellow-bg>':  term.format_esc('103')
	'<blue>':              term.format_esc('34')
	'<blue-bg>':           term.format_esc('44')
	'<bright-blue>':       term.format_esc('94')
	'<bright-blue-bg>':    term.format_esc('104')
	'<magenta>':           term.format_esc('35')
	'<magenta-bg>':        term.format_esc('45')
	'<bright-magenta>':    term.format_esc('95')
	'<bright-magenta-bg>': term.format_esc('105')
	'<cyan>':              term.format_esc('36')
	'<cyan-bg>':           term.format_esc('46')
	'<bright-cyan>':       term.format_esc('96')
	'<bright-cyan-bg>':    term.format_esc('106')
	'<white>':             term.format_esc('37')
	'<white-bg>':          term.format_esc('47')
	'<bright-white>':      term.format_esc('97')
	'<bright-white-bg>':   term.format_esc('107')
}

const end_tags = {
	'<bold>': term.format_esc('22')
	'</b>':   end_tags['<bold>']
	'</dim>': end_tags['<bold>']
	'</d>':   end_tags['<bold>']
}

pub fn render(str string) string {
}

pub fn print(str string) {
	print(render(str))
}

pub fn println(str string) {
	println(render(str))
}
