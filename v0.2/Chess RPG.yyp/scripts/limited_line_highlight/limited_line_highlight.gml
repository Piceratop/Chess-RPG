function limited_line_highlight(argument0, argument1, argument2, argument3, argument4) {
	var startX = argument0
	var startY = argument1
	var incrementX = argument2
	var incrementY = argument3
	var limit = argument4
	i = startX + incrementX
	j = startY + incrementY
	lim = limit
	while (i < 8 and j < 8 and i >= 0 and j >= 0 and lim > 0){
		highlight_movement(i, j)
		if (global.board[i, j] != 0) {
			break
		}
		i += incrementX
		j += incrementY
		lim -= 1
	}


}
