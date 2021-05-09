if (instance_exists(obj_chessPiecesSelected)){
	switch (obj_chessPiecesSelected.image_index){
		case 0:
			xSelected = obj_chessPiecesSelected.initX
			ySelected = obj_chessPiecesSelected.initY
			highlight_movement(xSelected + 1, ySelected)
			highlight_movement(xSelected - 1, ySelected)
			highlight_movement(xSelected, ySelected + 1)
			highlight_movement(xSelected, ySelected - 1)
			highlight_movement(xSelected + 1, ySelected + 1)
			highlight_movement(xSelected - 1, ySelected + 1)
			highlight_movement(xSelected + 1, ySelected - 1)
			highlight_movement(xSelected - 1, ySelected - 1)
		break
		default:	
		break
	}
} else {
	instance_destroy(obj_highlight)	
}