///@desc Initialize

box_sprite = spr_DialogueBox;
box_surface = -1;
box_scale = 2;
box_width = 12;
box_height = 3;
box_margin = 4;

var spr_w, spr_h;
spr_w = sprite_get_width(box_sprite);
spr_h = sprite_get_height(box_sprite);

x = global.game_width / 2 - box_width * spr_w * box_scale / 2;
y = box_margin;

font = f_CourierNew12;
draw_set_font(font);
font_width = string_width("0");
font_height = string_height("0");

text = "";
text_draw = "";
text_padding = 22;
text_width_max = ceil((box_width * spr_w - text_padding * 2) * box_scale / font_width);
text_speed = 1 * global.fps_calculation;
text_position = 0;

file_name = "dialogue";
file = file_text_open_read(file_name);
file_position = 0;
file_start = 0;
file_end = 0;

read = true;
initialize = true;
interact = true;

if (file == -1) {
	text = "FILE DOES NOT EXIST";
	read = false;
}
