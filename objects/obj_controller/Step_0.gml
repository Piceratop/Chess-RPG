if (instance_exists(obj_chessPiecesSelected)){
	xSelected = obj_chessPiecesSelected.initX
	ySelected = obj_chessPiecesSelected.initY
	switch (abs(obj_chessPiecesSelected.pieceId)){
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
		case 5:
			for (var i = xSelected + 1; i < 8; i++){
				highlight_movement(i, ySelected)
				if (global.board[i, ySelected] != 0){
					break	
				}
			}
			for (var i = xSelected - 1; i >= 0; i--){
				highlight_movement(i, ySelected)
				if (global.board[i, ySelected] != 0){
					break
				}
			}
			for (var i = ySelected + 1; i < 8; i++){
				highlight_movement(xSelected, i)
				if (global.board[xSelected, i] != 0){
					break
				}
			}
			for (var i = ySelected - 1; i >= 0; i--){
				highlight_movement(xSelected, i)	
				if (global.board[xSelected, i] != 0){
					break
				}
			}
			break
		default:
			break
	}
} else {
	xSelected = -1
	ySelected = -1
	instance_destroy(obj_highlight)	
}