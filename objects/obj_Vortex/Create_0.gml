///@descr Initialize variables

font = f_OrigamiMommy12;
character = "^";
time = random(60);
time_incr = 1 / game_get_speed(gamespeed_fps);
pi2 = pi * 2;

draw_x = global.game_width / 2;
draw_y = global.game_height / 2;

character_halign = fa_center;
character_valign = fa_bottom;
character_number = 8;
character_angle = 360 / character_number;
character_spin = 0.1;
character_xscale = 2;
character_yscale = 4;
character_offset = 48;

vortex_size = 8;
vortex_alpha = 0;
vortex_alpha_incr = 0.0025;
vortex_alpha_max = 0.6;

var r, g, b, rr, gg, bb, rgrad, bgrad, ggrad;
r = 150;	rr = 50;
g = 235;	gg = 100;
b = 200;	bb = 35;
rgrad = (rr - r) / vortex_size;
bgrad = (gg - g) / vortex_size;
ggrad = (bb - b) / vortex_size;

for (var i = vortex_size - 1; i >= 0; i--) {
	color_gradient[i] = make_color_rgb(
		r + rgrad * i,
		b + bgrad * i,
		g + ggrad * i
	);
}