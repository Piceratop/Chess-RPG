//Initialize variables
init_x = floor(x / global.square_width)
init_y = floor(y / global.square_width)
click_number = 0
instance_create_layer(x, y, "Highlight", obj_selected)
//Change default
image_speed = 0