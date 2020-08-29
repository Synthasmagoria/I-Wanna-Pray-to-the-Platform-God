///@desc Credits

var drawX, drawY;
drawX = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
drawY = scroll_position + draw_start * font_height;

draw_set_font(font);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

for (var i = draw_start; i < draw_end; i++) {
	draw_text(drawX, drawY, credit[i]);
	drawY += font_height;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);