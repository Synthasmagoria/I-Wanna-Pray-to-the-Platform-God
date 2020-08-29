///@desc 

if (place_meeting(x, y, obj_Player)) {
	if (delay > 0) {
		if (alarm[0] == -1) {
			alarm[0] = ceil(delay * global.fps_calculation);
		}
	} else {
		event_user(0);
	}
}
