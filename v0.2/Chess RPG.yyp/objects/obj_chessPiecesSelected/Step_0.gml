// Change piece's position
global.board[init_x, init_y] = 0
// Follow mouse
if (mouse_check_button(mb_left) and 0 <= mouse_x and mouse_x < 1704 and 0 <= mouse_y and mouse_y < 1704) {
	x = mouse_x - global.square_width / 2
	y = mouse_y - global.square_width / 2
} else {
	x = init_x * global.square_width
	y = init_y * global.square_width
}
// Move piece
if (mouse_check_button_released(mb_left)) {
	// Reset count
	with(obj_chessPieces) {
		range_count = 0
		move_range = []
		capture_range = []
		move_and_capture_range = []
	}
	global.white_capture_range = []
	global.black_capture_range = []
	// Check where the piece land
	if (instance_position(mouse_x, mouse_y, obj_highlight) or instance_position(mouse_x, mouse_y, obj_selected)) {
		// Land on highlight
		if (instance_position(mouse_x, mouse_y, obj_highlight)) {
			x = floor(mouse_x / global.square_width) * global.square_width
			y = floor(mouse_y / global.square_width) * global.square_width
			if (instance_position(x + 1, y + 1, obj_chessPieces)) {
				instance_destroy(instance_nearest(x, y, obj_chessPieces))
			} else if (instance_nearest(x, y, obj_highlight).type == "en_passant") {
				instance_destroy(instance_nearest(x, y + global.square_width * sign(pieceId), obj_chessPieces))
			}
			with (obj_chessPieces) {
				move_number = ceil(move_number)
			}
			move_number = ceil(move_number) + 0.5
			obj_controller.x_start = init_x
			obj_controller.y_start = init_y
			obj_controller.x_end = floor(x / global.square_width)
			obj_controller.y_end = floor(y / global.square_width)
		// Land on selected
		} else if (instance_position(mouse_x, mouse_y, obj_selected)) {
			x = init_x * global.square_width
			y = init_y * global.square_width
			click_number += 1
		}
		// Convert back into chessPieces
		if (instance_position(x, y, obj_highlight) or click_number > 1) {
			released = instance_create_layer(x, y, "Pieces", obj_chessPieces)
			released.sprite_index = sprite_index
			released.image_index = image_index
			released.move_number = move_number
			released.pieceId = pieceId
			if (x != init_x * global.square_width or y != init_y * global.square_width){
				obj_controller.turn = obj_controller.turn * (-1)	
			}
			global.board[round(x / global.square_width), round(y / global.square_width)] = pieceId
			instance_destroy()
		}
	// Does not land
	} else {
		released = instance_create_layer(init_x * global.square_width, init_y * global.square_width, "Pieces", obj_chessPieces)
		released.sprite_index = sprite_index
		released.image_index = image_index
		released.move_number = move_number
		released.pieceId = pieceId
		global.board[init_x, init_y] = pieceId
		instance_destroy()
	}
}