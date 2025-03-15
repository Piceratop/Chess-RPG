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
	with (obj_chessPieces) {
		for (var i = 0; i < array_length_1d(capture_range); i++) {
			var j = capture_range[i]
			test = instance_create_layer(j[0]*global.square_width, j[1]*global.square_width, "Highlight", obj_test)
			test.image_index = floor((sign(pieceId) + 1) / 2)
		}
		if (pieceId == -1) {
			show_message(capture_range)	
		}
	}	
}