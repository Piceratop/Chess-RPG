//Initialize variables
x_selected = -1
y_selected = -1
x_start = -1
y_start = -1
x_end = -1
y_end = -1
turn = 1
global.square_width = 213
//Create board
global.board = ds_grid_create(8, 8)
for (var i = 0; i < 8; i++){
	for (var j = 0; j < 8; j++){
		global.board[i, j] = 0	
	}
}
//Create chess board
create_piece(0, 0, -5)
create_piece(7, 0, -5)
create_piece(1, 0, -4)
create_piece(6, 0, -4)
create_piece(2, 0, -3)
create_piece(5, 0, -3)
create_piece(3, 0, -2)
create_piece(4, 0, -1)
create_piece(0, 7, 5)
create_piece(7, 7, 5)
create_piece(1, 7, 4)
create_piece(6, 7, 4)
create_piece(2, 7, 3)
create_piece(5, 7, 3)
create_piece(3, 7, 2)
create_piece(4, 7, 1)
for (var i = 0; i < 8; i++){
	create_piece(i, 1, -6)
	create_piece(i, 6, 6)
}
//Temporary code