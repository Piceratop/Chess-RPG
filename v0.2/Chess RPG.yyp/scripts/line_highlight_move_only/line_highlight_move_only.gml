function line_highlight_move_only(argument0, argument1, argument2, argument3) {
	var startX = argument0
	var startY = argument1
	var incrementX = argument2
	var incrementY = argument3
	i = startX + incrementX
	j = startY + incrementY
	while (i < 8 and j < 8 and i >= 0 and j >= 0){
		highlight_move_only(i, j)
		if (global.board[i, j] != 0) {
			break	
		}
		i += incrementX
		j += incrementY
	}


}
