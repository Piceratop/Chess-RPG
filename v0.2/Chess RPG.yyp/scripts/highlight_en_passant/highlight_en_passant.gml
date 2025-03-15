function highlight_en_passant(argument0, argument1) {
	var xx = argument0
	var yy = argument1
	if (0 <= xx and xx < 8 and 0 <= yy and yy < 8){
		if (obj_chessPiecesSelected.pieceId * global.board[xx, yy] <= 0){
			highlight = instance_create_layer(xx * global.square_width, yy * global.square_width, "Highlight", obj_highlight)
			highlight.type = "en_passant"
		}
	}


}
