var xx = argument0
var yy = argument1
var pieceType = argument2
piece = instance_create_layer(xx*213, yy*213, "Pieces", obj_chessPieces)
switch (pieceType > 0){
	case true:
		piece.sprite_index = spr_whiteChessPieces
		piece.image_index = pieceType - 1
		break
	case false:
		piece.sprite_index = spr_blackChessPieces
		piece.image_index = abs(pieceType) - 1
		break
}
piece.pieceId = pieceType
global.board[xx, yy] = pieceType