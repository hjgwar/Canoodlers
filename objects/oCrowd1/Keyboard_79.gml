currentViewPosX = camera_get_view_x(view_camera[0])
currentViewPosY = camera_get_view_y(view_camera[0])
currentViewSizeW = camera_get_view_width(view_camera[0])
currentViewSizeH = camera_get_view_height(view_camera[0])
aspectRatio = currentViewSizeW / currentViewSizeH

if (sprite_width > currentViewSizeW and sprite_height > currentViewSizeH) {
	camera_set_view_pos(view_camera[0], currentViewPosX - 25, currentViewPosY - (25/aspectRatio));
	camera_set_view_size(view_camera[0], currentViewSizeW + 50, currentViewSizeH + (50/aspectRatio));
}