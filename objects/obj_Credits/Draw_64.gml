///@desc Fade

draw_set_alpha(fade_alpha);
draw_set_color(c_black);

draw_rectangle(0, 0, global.game_width, global.game_height, false);

draw_set_alpha(1.0);
draw_set_color(c_white);
