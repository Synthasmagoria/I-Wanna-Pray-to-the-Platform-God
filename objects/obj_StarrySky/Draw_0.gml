///@desc Draw stars

draw_set_alpha(star_alpha);

for (var i = 0; i < star_number; i++) {
	draw_sprite(star_sprite[star_sprite_index[i]], img_index, x + star_x[i], y + star_y[i]);
}

draw_set_alpha(1.0);
