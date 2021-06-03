distance = (x_end - x_start)*(x_end - x_start) + (y_end - y_start)*(y_end - y_start)
if (instance_exists(obj_chessPiecesSelected)) {
	x_selected = obj_chessPiecesSelected.init_x
	y_selected = obj_chessPiecesSelected.init_y
	highlight_move_range(obj_chessPiecesSelected.move_range)
	highlight_capture_range(obj_chessPiecesSelected.capture_range)
	//Check piece to move
	switch (abs(obj_chessPiecesSelected.pieceId)) {
		//Castle
		case 1:
			break
		//Pawn
		case 6:
			//En Passant
			en_passant = instance_position((x_selected + 1) * global.square_width + 1, y_selected * global.square_width + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5 and distance == 4) {
					highlight_en_passant(x_selected + 1, y_selected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
			en_passant = instance_position((x_selected - 1) * global.square_width + 1, y_selected * global.square_width + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5 and distance == 4) {
					highlight_en_passant(x_selected - 1, y_selected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
		default:
			break
	}
} else {
	instance_destroy(obj_highlight)
	instance_destroy(obj_selected)
}
//Testing
if (keyboard_check(ord("D"))) {
	show_message(global.board)
	show_message(check)
}