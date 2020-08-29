///@desc Update position

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

// animation
if (img_index + img_speed >= img_number) || (img_index + img_speed <= 0) {
	img_speed *= -1;
}

img_index += img_speed;