//Move piece
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)){
	if (instance_exists(obj_chessPiecesSelected)){
		released = instance_create_layer(obj_chessPiecesSelected.x, obj_chessPiecesSelected.y, "Pieces", obj_chessPieces)
		released.sprite_index = obj_chessPiecesSelected.sprite_index
		released.image_index = obj_chessPiecesSelected.image_index
		instance_destroy(obj_chessPiecesSelected)
	} else {
		obj_controller.xSelected = floor(x/global.squareWidth)
		obj_controller.ySelected = floor(y/global.squareWidth)
		selected = instance_create_layer(floor(x/global.squareWidth)*global.squareWidth, floor(y/global.squareWidth)*global.squareWidth, "Selected", obj_chessPiecesSelected)
		selected.sprite_index = self.sprite_index
		selected.image_index = self.image_index
		if (sprite_index == spr_whiteChessPieces){
			selected.pieceId = self.image_index + 1	
		} else {
			selected.pieceId = - self.image_index - 1
		}
		instance_destroy()
	}
}
if (sprite_index == spr_whiteChessPieces){
	global.board[floor(x/global.squareWidth), floor(y/global.squareWidth)] = image_index + 1	
} else {
	global.board[floor(x/global.squareWidth), floor(y/global.squareWidth)] = -(image_index + 1)
}