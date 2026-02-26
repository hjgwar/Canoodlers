currentViewPosX = camera_get_view_x(view_camera[0])
currentViewPosY = camera_get_view_y(view_camera[0])
currentViewSizeW = camera_get_view_width(view_camera[0])
currentViewSizeH = camera_get_view_height(view_camera[0])

// going up
if (currentViewPosY > bbox_top and mouse_y < (currentViewPosY + currentViewSizeH * 0.33)) {
	camera_set_view_pos(view_camera[0], currentViewPosX, currentViewPosY - 5);
}

// going down
if (currentViewPosY + currentViewSizeH < bbox_bottom and mouse_y > (currentViewPosY + currentViewSizeH * 0.66)) {
	camera_set_view_pos(view_camera[0], currentViewPosX, currentViewPosY + 5);
}

// going left
if (currentViewPosX > bbox_left and mouse_x < currentViewPosX + currentViewSizeW * 0.33) {
	camera_set_view_pos(view_camera[0], currentViewPosX - 5, currentViewPosY);
}

// going right
if (currentViewPosX + currentViewSizeW < bbox_right and mouse_x > (currentViewPosX + currentViewSizeW * 0.66)) {
	camera_set_view_pos(view_camera[0], currentViewPosX + 5, currentViewPosY);
}