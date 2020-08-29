///@desc Update position

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

for (var i = 0; i < star_number; i++) {
	star_x[i] += star_hspeed;
}

star_add += star_rate;

// spawn new stars
while (star_add >= 1) {
	star_x[star_index] = camera_get_view_width(view_camera[0]);
	star_y[star_index] = irandom(camera_get_view_height(view_camera[0]));
	star_sprite_index[star_index] = irandom(star_sprite_number - 1);
	
	star_add--;
	star_index = (star_index + 1) >= star_number ? 0 : star_index + 1;
}

// animation
if (img_index + img_speed >= img_number) || (img_index + img_speed <= 0) {
	img_speed *= -1;
}

img_index += img_speed;