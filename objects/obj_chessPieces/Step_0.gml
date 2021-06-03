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
			{
				var i = init_x + 1
				var j = init_y + 1
				while (i < 8 and j < 8) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i += 1
						j += 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x + 1
				var j = init_y - 1
				while (i < 8 and j >= 0) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i += 1
						j -= 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x - 1
				var j = init_y + 1
				while (i >= 0 and j < 8) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i -= 1
						j += 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x - 1
				var j = init_y - 1
				while (i >= 0 and j >= 0) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i -= 1
						j -= 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			for (var i = init_x + 1; i < 8; i++) {
				if (global.board[i, init_y] == 0) {
					move_range[array_length_1d(move_range)] = [i, init_y]
				} else if (global.board[i, init_y] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, init_y]
					break
				} else {
					break	
				}
			}
			for (var i = init_x - 1; i >= 0; i--) {
				if (global.board[i, init_y] == 0) {
					move_range[array_length_1d(move_range)] = [i, init_y]
				} else if (global.board[i, init_y] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, init_y]
					break
				} else {
					break	
				}
			}
			for (var i = init_y + 1; i < 8; i++) {
				if (global.board[init_x, i] == 0) {
					move_range[array_length_1d(move_range)] = [init_x, i]
				} else if (global.board[init_x, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [init_x, i]
					break
				} else {
					break	
				}
			}
			for (var i = init_y - 1; i >= 0; i--) {
				if (global.board[init_x, i] == 0) {
					move_range[array_length_1d(move_range)] = [init_x, i]
				} else if (global.board[init_x, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [init_x, i]
					break
				} else {
					break	
				}
			}
			break
		// Bishop
		case 3:
			{
				var i = init_x + 1
				var j = init_y + 1
				while (i < 8 and j < 8) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i += 1
						j += 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x + 1
				var j = init_y - 1
				while (i < 8 and j >= 0) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i += 1
						j -= 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x - 1
				var j = init_y + 1
				while (i >= 0 and j < 8) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i -= 1
						j += 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
			{
				var i = init_x - 1
				var j = init_y - 1
				while (i >= 0 and j >= 0) {
					if (global.board[i, j] == 0) { 
						move_range[array_length_1d(move_range)] = [i, j]
						i -= 1
						j -= 1
					} else if (global.board[i, j] * pieceId < 0) {
						capture_range[array_length_1d(capture_range)] = [i, j]
						break
					} else {
						break	
					}
				}
			}
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
			for (var i = init_x + 1; i < 8; i++) {
				if (global.board[i, init_y] == 0) {
					move_range[array_length_1d(move_range)] = [i, init_y]
				} else if (global.board[i, init_y] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, init_y]
					break
				} else {
					break	
				}
			}
			for (var i = init_x - 1; i >= 0; i--) {
				if (global.board[i, init_y] == 0) {
					move_range[array_length_1d(move_range)] = [i, init_y]
				} else if (global.board[i, init_y] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, init_y]
					break
				} else {
					break	
				}
			}
			for (var i = init_y + 1; i < 8; i++) {
				if (global.board[init_x, i] == 0) {
					move_range[array_length_1d(move_range)] = [init_x, i]
				} else if (global.board[init_x, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [init_x, i]
					break
				} else {
					break	
				}
			}
			for (var i = init_y - 1; i >= 0; i--) {
				if (global.board[init_x, i] == 0) {
					move_range[array_length_1d(move_range)] = [init_x, i]
				} else if (global.board[init_x, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [init_x, i]
					break
				} else {
					break	
				}
			}
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