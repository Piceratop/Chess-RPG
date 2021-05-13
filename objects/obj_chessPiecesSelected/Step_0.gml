// Change piece's position
if (x > 0 and y > 0){
	global.board[initX, initY] = 0
}
// Follow mouse
if (mouse_check_button(mb_left) and 0 <= mouse_x and mouse_x < 1704 and 0 <= mouse_y and mouse_y < 1704){
	x = mouse_x - global.squareWidth / 2
	y = mouse_y - global.squareWidth / 2
} else {
	x = initX * global.squareWidth
	y = initY * global.squareWidth
}
//Move piece
if (mouse_check_button_released(mb_left) and 
((floor(mouse_x/global.squareWidth) != initX or 
floor(mouse_y/global.squareWidth) != initY))){
	// Move Piece
	if ((0 <= mouse_x and mouse_x < 1704 and 0 <= mouse_y and mouse_y < 1704) and position_meeting(mouse_x, mouse_y, obj_highlight)){
		if (position_meeting(mouse_x, mouse_y, obj_chessPieces)){
			instance_destroy(instance_nearest(mouse_x, mouse_y, obj_chessPieces))
		}
		obj_chessPiecesSelected.x = floor(mouse_x/global.squareWidth) * global.squareWidth
		obj_chessPiecesSelected.y = floor(mouse_y/global.squareWidth) * global.squareWidth
		moved = true
	} else {
		obj_chessPiecesSelected.x = obj_chessPiecesSelected.initX * global.squareWidth
		obj_chessPiecesSelected.y = obj_chessPiecesSelected.initY * global.squareWidth
	}
	released = instance_create_layer(obj_chessPiecesSelected.x, obj_chessPiecesSelected.y, "Pieces", obj_chessPieces)
	released.sprite_index = obj_chessPiecesSelected.sprite_index
	released.image_index = obj_chessPiecesSelected.image_index
	released.moved = moved
	instance_destroy(obj_chessPiecesSelected)
} 	