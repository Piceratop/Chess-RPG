//Move piece
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)){
	if (!instance_exists(obj_chessPiecesSelected)){
		selected = instance_create_layer(floor(x/global.squareWidth)*global.squareWidth, floor(y/global.squareWidth)*global.squareWidth, "Selected", obj_chessPiecesSelected)
		selected.sprite_index = sprite_index
		selected.image_index = image_index
		switch (sprite_index){
			case spr_whiteChessPieces:
				selected.pieceId = image_index + 1
				break
			case spr_blackChessPieces:
				selected.pieceId = - image_index - 1
				break
			default:
				selected.pieceId = 0
				break
		}
		instance_destroy()
	}
}
switch (sprite_index){
	case spr_whiteChessPieces:
		global.board[floor(x/global.squareWidth), floor(y/global.squareWidth)] = image_index + 1
		break
	case spr_blackChessPieces:
		global.board[floor(x/global.squareWidth), floor(y/global.squareWidth)] = - image_index - 1
		break
	default:
		global.board[floor(x/global.squareWidth), floor(y/global.squareWidth)] = 0
		break
}