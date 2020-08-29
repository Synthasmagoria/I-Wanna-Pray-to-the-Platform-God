///@desc Follow

if (instance_exists(object)) {
	camera_set_view_pos(
		view_camera[0],
		clamp(object.x + view_x_offset, 0, view_x_max),
		clamp(object.y + view_y_offset, 0, view_y_max)
	);
}
