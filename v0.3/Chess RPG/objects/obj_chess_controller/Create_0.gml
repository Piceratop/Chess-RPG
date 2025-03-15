// ======== Set up global chess variables ========

// Board layout

layout_board = [
	[1, 1, 1, 1],
	[1, 1, 1, 1],
	[1, 1, 1, 1],
	[1, 1, 1, 1]
];

// IDs denoting tile position

mapping_position_id = {
	mid: 1, top: 2, right: 3, bottom: 4, left: 5,
	topright: 6, rightbottom: 7, bottomright: 8, righttop: 9
}

// Tiling layer

tilemap_id_chess_board = layer_tilemap_create("Chess_Board", 0, 0, ts_chess_square, room_width, room_height);
tile_width_chess_board = tilemap_get_tile_width(tilemap_id_chess_board);

// ======== Board Creation ========

// Tile the board

tilemap_set(tilemap_id_chess_board, 1, 1, 1);
