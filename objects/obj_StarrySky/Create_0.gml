///@desc Initialize

star_number = 50;
star_alpha = 0.5;
star_sprite = [spr_Star01, spr_Star02, spr_Star03, spr_Star04, spr_Star05];
star_sprite_number = array_length_1d(star_sprite);
star_image_number = sprite_get_number(star_sprite[0]);

star_x = array_create(star_number);
star_y = array_create(star_number);
star_sprite_index = array_create(star_number);
star_image_index = array_create(star_number);

for (var i = 0; i < star_number; i++) {
	star_x[i] = irandom(global.game_width);
	star_y[i] = irandom(global.game_height);
	star_sprite_index[i] = irandom(star_sprite_number - 1);
	star_image_index[i] = irandom(star_image_number - 1);
}

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

img_index = 0;
img_number = sprite_get_number(sprite_index);
img_speed = 0.2 * global.fps_calculation;