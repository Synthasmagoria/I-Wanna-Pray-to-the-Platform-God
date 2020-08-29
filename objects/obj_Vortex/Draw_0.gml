///@descr Draw something

time = time + time_incr;

draw_set_halign(character_halign);
draw_set_valign(character_valign);

vortex_alpha = min(vortex_alpha + vortex_alpha_incr, vortex_alpha_max);
draw_set_alpha(vortex_alpha);

var spin, angle, offset, xoffset, yoffset, yscaleoffset;
spin = character_spin * time;

for (var i = character_number; i > 0; i--) {
	angle = character_angle * i + spin;
	offset = sin(angle / 360 * pi2 + time);
	xoffset = lengthdir_x(offset * character_offset, angle);
	yoffset = lengthdir_y(offset * character_offset, angle);
	yscaleoffset = 1 - offset;
	
	for (var ii = vortex_size; ii > 0; ii--) {
		draw_set_color(color_gradient[ii - 1]);
		draw_text_transformed(
			draw_x + xoffset * ii,
			draw_y + yoffset * ii,
			character,
			character_xscale,
			character_yscale * yscaleoffset * ii,
			character_angle * i + spin * ii
		);
	}
}

draw_set_alpha(1.0);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);