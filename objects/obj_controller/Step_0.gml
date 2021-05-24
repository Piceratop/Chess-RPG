if (instance_exists(obj_chessPiecesSelected)) {
	xSelected = obj_chessPiecesSelected.initX
	ySelected = obj_chessPiecesSelected.initY
	//Check piece to move
	switch (abs(obj_chessPiecesSelected.pieceId)) {
		//King
		case 1:
			highlight_movement(xSelected + 1, ySelected)
			highlight_movement(xSelected - 1, ySelected)
			highlight_movement(xSelected, ySelected + 1)
			highlight_movement(xSelected, ySelected - 1)
			highlight_movement(xSelected + 1, ySelected + 1)
			highlight_movement(xSelected - 1, ySelected + 1)
			highlight_movement(xSelected + 1, ySelected - 1)
			highlight_movement(xSelected - 1, ySelected - 1)
			break
		//Queen
		case 2:
			all_line_highlight(xSelected, ySelected, 1, 1)
			all_line_highlight(xSelected, ySelected, 1, 0)
			all_line_highlight(xSelected, ySelected, 0, 1)
			break
		//Bishop
		case 3:
			all_line_highlight(xSelected, ySelected, 1, 1)
			break
		//Knight
		case 4:
			highlight_movement(xSelected + 2, ySelected + 1)
			highlight_movement(xSelected - 2, ySelected + 1)
			highlight_movement(xSelected + 2, ySelected - 1)
			highlight_movement(xSelected - 2, ySelected - 1)
			highlight_movement(xSelected + 1, ySelected + 2)
			highlight_movement(xSelected - 1, ySelected + 2)
			highlight_movement(xSelected + 1, ySelected - 2)
			highlight_movement(xSelected - 1, ySelected - 2)
			break
		//Rook
		case 5:
			all_line_highlight(xSelected, ySelected, 1, 0)
			all_line_highlight(xSelected, ySelected, 0, 1)
			break
		//Pawn
		case 6:
			//Move
			if (obj_chessPiecesSelected.move_number == 0) {
				limited_line_highlight_move_only(xSelected, ySelected, 0, - sign(obj_chessPiecesSelected.pieceId), 2)
			} else {
				highlight_move_only(xSelected, ySelected - sign(obj_chessPiecesSelected.pieceId))
			}
			//Capture
			highlight_capture_only(xSelected + 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
			highlight_capture_only(xSelected - 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
			//En Passant
			en_passant = instance_position((xSelected + 1) * global.squareWidth + 1, ySelected * global.squareWidth + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5) {
					highlight_en_passant(xSelected + 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
			en_passant = instance_position((xSelected - 1) * global.squareWidth + 1, ySelected * global.squareWidth + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5) {
					highlight_en_passant(xSelected - 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
		default:
			break
	}
} else {
	xSelected = -1
	ySelected = -1
	instance_destroy(obj_highlight)
	instance_destroy(obj_selected)
}