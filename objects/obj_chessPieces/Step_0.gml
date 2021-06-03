// Move and capture Range
if (range_count == 0) {
	switch(abs(pieceId)) {
		// King
		case 1:
			move_and_capture_range = [
			[init_x + 1, init_y],
			[init_x - 1, init_y],
			[init_x, init_y + 1],
			[init_x, init_y - 1],
			[init_x + 1, init_y + 1],
			[init_x + 1, init_y - 1],
			[init_x - 1, init_y + 1],
			[init_x - 1, init_y - 1]
			]
			move_range = move_and_capture_range
			capture_range = move_and_capture_range
			break
		// Queen
		case 2:
			half_line_check(init_x + 1, init_y + 1, 1, 1)
			half_line_check(init_x + 1, init_y - 1, 1, -1)
			half_line_check(init_x - 1, init_y + 1, -1, 1)
			half_line_check(init_x - 1, init_y - 1, -1, -1)
			half_line_check(init_x + 1, init_y, 1, 0)
			half_line_check(init_x - 1, init_y, -1, 0)
			half_line_check(init_x, init_y + 1, 0, 1)
			half_line_check(init_x, init_y - 1, 0, -1)
			break
		// Bishop
		case 3:
			half_line_check(init_x + 1, init_y + 1, 1, 1)
			half_line_check(init_x + 1, init_y - 1, 1, -1)
			half_line_check(init_x - 1, init_y + 1, -1, 1)
			half_line_check(init_x - 1, init_y - 1, -1, -1)
			break
		// Knight
		case 4:
			move_and_capture_range = [
			[init_x + 2, init_y + 1],
			[init_x + 2, init_y - 1],
			[init_x - 2, init_y + 1],
			[init_x - 2, init_y - 1],
			[init_x + 1, init_y + 2],
			[init_x + 1, init_y - 2],
			[init_x - 1, init_y + 2],
			[init_x - 1, init_y - 2],
			]
			move_range = move_and_capture_range
			capture_range = move_and_capture_range
			break
		//Rook
		case 5:
			half_line_check(init_x + 1, init_y, 1, 0)
			half_line_check(init_x - 1, init_y, -1, 0)
			half_line_check(init_x, init_y + 1, 0, 1)
			half_line_check(init_x, init_y - 1, 0, -1)
			break
		// Pawn
		case 6:
			{
				var i = 1
				if (move_number == 0) {
					i = 2	
				}
				while (i > 0) {
					move_range[array_length_1d(move_range)] = [init_x, init_y - i * sign(pieceId)]
					i -= 1
				}
				capture_range[array_length_1d(capture_range)] = [init_x + 1, init_y - sign(pieceId)]
				capture_range[array_length_1d(capture_range)] = [init_x - 1, init_y - sign(pieceId)]
			}
		default:
			break
	}
	range_count += 1
}
// Move piece
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and obj_controller.turn * pieceId > 0){
	if (!instance_exists(obj_chessPiecesSelected)){
		selected = instance_create_layer(floor(x/global.square_width)*global.square_width, floor(y/global.square_width)*global.square_width, "Selected", obj_chessPiecesSelected)
		selected.sprite_index = sprite_index
		selected.image_index = image_index
		selected.move_number = move_number
		selected.move_range = move_range
		selected.capture_range = capture_range
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