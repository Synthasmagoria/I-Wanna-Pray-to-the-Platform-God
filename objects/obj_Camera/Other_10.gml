///@desc Set camera

camera_set_view_size(camera, camera_width, camera_height);
	
if (instance_exists(camera_target)) {
	camera_set_view_pos(camera, floor(camera_target.x / camera_width) * camera_width, floor(camera_target.y / camera_height) * camera_height);
}

if (!view_enabled) {
	view_visible[0] = true;
	view_enabled = true;
}

view_camera[camera_index] = camera;

camera_set = false;
