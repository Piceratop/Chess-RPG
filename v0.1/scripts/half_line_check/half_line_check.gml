var startX = argument0
var startY = argument1
var increX = argument2
var increY = argument3
while (0 <= startX and startX < 8 and 0 <= startY and startY < 8) {
	if (global.board[startX, startY] == 0) {
		move_range[array_length_1d(move_range)] = [startX, startY]
		startX += increX
		startY += increY
	} else if (global.board[startX, startY] * pieceId < 0) {
		capture_range[array_length_1d(capture_range)] = [startX, startY]
		break
	} else {
		break	
	}
}