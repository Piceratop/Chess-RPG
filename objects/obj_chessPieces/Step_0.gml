// Move and capture Range
if (range_count == 0) {
	switch(abs(pieceId)) {
		// King
		case 1:
			move_and_capture_range = [
			[initX + 1, initY],
			[initX - 1, initY],
			[initX, initY + 1],
			[initX, initY - 1],
			[initX + 1, initY + 1],
			[initX + 1, initY - 1],
			[initX - 1, initY + 1],
			[initX - 1, initY - 1]
			]
			move_range = move_and_capture_range
			capture_range = move_and_capture_range
			break
		// Queen
		case 2:
			{
				var i = initX + 1
				var j = initY + 1
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
				var i = initX + 1
				var j = initY - 1
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
				var i = initX - 1
				var j = initY + 1
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
				var i = initX - 1
				var j = initY - 1
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
			for (var i = initX + 1; i < 8; i++) {
				if (global.board[i, initY] == 0) {
					move_range[array_length_1d(move_range)] = [i, initY]
				} else if (global.board[i, initY] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, initY]
					break
				} else {
					break	
				}
			}
			for (var i = initX - 1; i >= 0; i--) {
				if (global.board[i, initY] == 0) {
					move_range[array_length_1d(move_range)] = [i, initY]
				} else if (global.board[i, initY] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, initY]
					break
				} else {
					break	
				}
			}
			for (var i = initY + 1; i < 8; i++) {
				if (global.board[initX, i] == 0) {
					move_range[array_length_1d(move_range)] = [initX, i]
				} else if (global.board[initX, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [initX, i]
					break
				} else {
					break	
				}
			}
			for (var i = initY - 1; i >= 0; i--) {
				if (global.board[initX, i] == 0) {
					move_range[array_length_1d(move_range)] = [initX, i]
				} else if (global.board[initX, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [initX, i]
					break
				} else {
					break	
				}
			}
			break
		// Bishop
		case 3:
			{
				var i = initX + 1
				var j = initY + 1
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
				var i = initX + 1
				var j = initY - 1
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
				var i = initX - 1
				var j = initY + 1
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
				var i = initX - 1
				var j = initY - 1
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
			[initX + 2, initY + 1],
			[initX + 2, initY - 1],
			[initX - 2, initY + 1],
			[initX - 2, initY - 1],
			[initX + 1, initY + 2],
			[initX + 1, initY - 2],
			[initX - 1, initY + 2],
			[initX - 1, initY - 2],
			]
			move_range = move_and_capture_range
			capture_range = move_and_capture_range
			break
		//Rook
		case 5:
			for (var i = initX + 1; i < 8; i++) {
				if (global.board[i, initY] == 0) {
					move_range[array_length_1d(move_range)] = [i, initY]
				} else if (global.board[i, initY] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, initY]
					break
				} else {
					break	
				}
			}
			for (var i = initX - 1; i >= 0; i--) {
				if (global.board[i, initY] == 0) {
					move_range[array_length_1d(move_range)] = [i, initY]
				} else if (global.board[i, initY] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [i, initY]
					break
				} else {
					break	
				}
			}
			for (var i = initY + 1; i < 8; i++) {
				if (global.board[initX, i] == 0) {
					move_range[array_length_1d(move_range)] = [initX, i]
				} else if (global.board[initX, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [initX, i]
					break
				} else {
					break	
				}
			}
			for (var i = initY - 1; i >= 0; i--) {
				if (global.board[initX, i] == 0) {
					move_range[array_length_1d(move_range)] = [initX, i]
				} else if (global.board[initX, i] * pieceId <= 0) {
					capture_range[array_length_1d(capture_range)] = [initX, i]
					break
				} else {
					break	
				}
			}
			break
		default:
			break
	}
	range_count += 1
}
// Move piece
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and obj_controller.turn * pieceId > 0){
	if (!instance_exists(obj_chessPiecesSelected)){
		selected = instance_create_layer(floor(x/global.squareWidth)*global.squareWidth, floor(y/global.squareWidth)*global.squareWidth, "Selected", obj_chessPiecesSelected)
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