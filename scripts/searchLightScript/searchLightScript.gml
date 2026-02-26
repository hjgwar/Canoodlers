function searchLightScript(){
	draw_self()
	currentViewSizeW = camera_get_view_width(view_camera[0])
	draw_circle_colour(mouse_x, mouse_y, currentViewSizeW/4, c_red, c_red, true)
}

function checkSearchLight() {
	// go through all oTargets
	if (camera_get_view_width(view_camera[0]) > 950) {
		notificationText = "Zoom in further!"
		instance_create_layer(50, 50, "UILayer_1", uiNotifications)
		return	
	}
	for (var i = 0; i < instance_number(oTarget); ++i) {
		iTarget = instance_find(oTarget, i)
		//show_debug_message(iTarget)
		clickAction = rectangle_in_circle(iTarget.bbox_left, iTarget.bbox_top, iTarget.bbox_right, iTarget.bbox_bottom, mouse_x, mouse_y,  camera_get_view_width(view_camera[0])/4)
		if (clickAction == 2) {
			notificationText = "You're close! A bit to the left or right!"
			instance_create_layer(50, 50, "UILayer_1", uiNotifications)
			return
		}
		else if (clickAction == 1) {
			instance_destroy(iTarget)
			audio_play_sound(sKiss1, 1, false)
			part_particles_burst(partSys, mouse_x + 100, mouse_y, ParticleSystem1)
			part_particles_burst(partSys, mouse_x - 100, mouse_y, ParticleSystem1)
			if (instance_number(oTarget) == 0) {
				audio_play_sound(sTada, 1, false)
				notificationText = "You got them all! Thanks for playing!"
				instance_create_layer(50, 50, "UILayer_1", uiNotifications)
				return
			}
			return
		}
	}
}