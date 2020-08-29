///@desc Initialize

font = f_CourierNew16;
draw_set_font(font);
font_height = string_height("0");

credit_number = 28;
credit = array_create(credit_number, "");

scroll_position = global.game_height;
scroll_speed = -0.9 * global.fps_calculation;

draw_start = max(floor(scroll_position / font_height * -1), 0);
draw_end = min(ceil((global.game_height - scroll_position) / font_height), credit_number);

fade_alpha = 1;
fade_alpha_incr = -0.02 * global.fps_calculation;

var i = 0, f = file_text_open_read("credits");

if (f != -1) {
	while (!file_text_eof(f)) {
		credit[i] = file_text_read_string(f);
		file_text_readln(f);
		i++;
	}
}
file_text_close(f);