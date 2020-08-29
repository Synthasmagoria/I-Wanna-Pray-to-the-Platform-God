///@desc Set position

scroll_position += scroll_speed;
fade_alpha = max(fade_alpha + fade_alpha_incr, 0);

draw_start = max(floor(scroll_position / font_height * -1), 0);
draw_end = min(ceil((global.game_height - scroll_position) / font_height), credit_number);
