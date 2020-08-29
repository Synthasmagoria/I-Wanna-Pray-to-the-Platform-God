///@desc Initialize

var cw = camera_get_view_width(view_camera[0]), ch = camera_get_view_height(view_camera[0]);

star_number = 50;
star_sprite = [spr_Star01, spr_Star02, spr_Star03, spr_Star04, spr_Star05];
star_sprite_number = array_length_1d(star_sprite);
star_hspeed = -1 * global.fps_calculation;
star_rate = 1 / abs(cw / star_number / star_hspeed);

star_x = array_create(star_number);
star_y = array_create(star_number);
star_sprite_index = array_create(star_number);
star_add = 0;
star_index = 0;

for (var i = 0; i < star_number; i++) {
	star_x[i] = i / star_number * cw;
	star_y[i] = irandom(ch);
	star_sprite_index[i] = irandom(star_sprite_number - 1);
}

img_index = 0;
img_number = sprite_get_number(sprite_index);
img_speed = 0.2 * global.fps_calculation;

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

mask = -1;
mask_scale = 32;
mask_x = x;
mask_y = x;

surface = -1;
