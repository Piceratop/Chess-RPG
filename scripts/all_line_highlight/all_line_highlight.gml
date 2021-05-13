var startX = argument0
var startY = argument1
var incrementX = argument2
var incrementY = argument3
if (incrementX == 0){
	line_highlight(startX, startY, incrementX, incrementY)
	line_highlight(startX, startY, incrementX, -incrementY)
} else if (incrementY == 0){
	line_highlight(startX, startY, incrementX, incrementY)
	line_highlight(startX, startY, -incrementX, incrementY)
} else if (incrementX == incrementY){
	line_highlight(startX, startY, incrementX, incrementY)
	line_highlight(startX, startY, incrementX, -incrementY)
	line_highlight(startX, startY, -incrementX, incrementY)
	line_highlight(startX, startY, -incrementX, -incrementY)
} else {
	line_highlight(startX, startY, incrementX, incrementY)
	line_highlight(startX, startY, incrementX, -incrementY)
	line_highlight(startX, startY, -incrementX, incrementY)
	line_highlight(startX, startY, -incrementX, -incrementY)
	line_highlight(startX, startY, incrementY, incrementX)
	line_highlight(startX, startY, incrementY, -incrementX)
	line_highlight(startX, startY, -incrementY, incrementX)
	line_highlight(startX, startY, -incrementY, -incrementX)
}