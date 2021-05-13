if (instance_exists(obj_chessPiecesSelected)){
	xSelected = obj_chessPiecesSelected.initX
	ySelected = obj_chessPiecesSelected.initY
	//Check piece to move
	switch (abs(obj_chessPiecesSelected.pieceId)){
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
		default:
			break
	}
} else {
	xSelected = -1
	ySelected = -1
	instance_destroy(obj_highlight)	
}