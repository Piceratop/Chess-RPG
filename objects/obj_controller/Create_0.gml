//Initialize variables
global.squareWidth = 213
xSelected = -1
ySelected = -1
//Create board
global.board = ds_grid_create(8, 8)
for (i = 0; i < 8; i++){
	for (j = 0; j < 8; j++){
		global.board[i,j] = 0	
	}
}
//Temporary code
create_piece(3,0,-2)
create_piece(4,0,-1)
create_piece(3,7,2)
create_piece(4,7,1)