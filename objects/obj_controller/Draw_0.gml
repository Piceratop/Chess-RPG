draw_set_color(c_red)
for(var i = 0; i < 8; i++){
	for (var j = 0; j < 8; j++){
		draw_text_transformed(i*213, j*213, global.board[i,j], 10, 10, 0)	
	}
}