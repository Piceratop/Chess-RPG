//Initialize variables
initX = floor(x / global.squareWidth)
initY = floor(y / global.squareWidth)
click_number = 0
instance_create_layer(x, y, "Highlight", obj_selected)
//Change default
image_speed = 0