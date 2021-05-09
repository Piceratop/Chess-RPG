//Initialize variables
initX = floor(x / global.squareWidth)
initY = floor(y / global.squareWidth)
if (sprite_index == spr_whiteChessPieces){
	pieceId = image_index
} else {
	pieceId = -image_index	
}
//Change default
image_speed = 0