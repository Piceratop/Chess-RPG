distance = (xEnd - xStart)*(xEnd - xStart) + (yEnd - yStart)*(yEnd - yStart)
if (instance_exists(obj_chessPiecesSelected)) {
	xSelected = obj_chessPiecesSelected.initX
	ySelected = obj_chessPiecesSelected.initY
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
			en_passant = instance_position((xSelected + 1) * global.squareWidth + 1, ySelected * global.squareWidth + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5 and distance == 4) {
					highlight_en_passant(xSelected + 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
			en_passant = instance_position((xSelected - 1) * global.squareWidth + 1, ySelected * global.squareWidth + 1, obj_chessPieces)
			if (en_passant != noone) {
				if (abs(en_passant.pieceId) == 6 and en_passant.move_number == 0.5 and distance == 4) {
					highlight_en_passant(xSelected - 1, ySelected - sign(obj_chessPiecesSelected.pieceId))
				}
			}
		default:
			break
	}
} else {
	instance_destroy(obj_highlight)
	instance_destroy(obj_selected)
}