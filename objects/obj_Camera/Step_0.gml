///@desc Follow target

if (!camera_set) {
	event_user(0);
}

if (instance_exists(camera_target)) {
	camera_set_view_pos(
		camera,
		floor(camera_target.x / camera_width) * camera_width,
		floor(camera_target.y / camera_height) * camera_height
	);
}