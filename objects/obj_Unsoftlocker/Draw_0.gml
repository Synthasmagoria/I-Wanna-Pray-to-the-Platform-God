var
drawX = padding,
drawY = padding;

draw_set_font(f_CourierNew16);
draw_text(drawX, drawY, "Unsoftlocker Alpha");

drawY += string_height("A");

draw_set_font(f_CourierNew12);
var fh = string_height("A");

draw_text(drawX + selector_offset, drawY + save_index * fh, selector);

for (var i = 0; i < global.save_number; i++)
{
	draw_text(drawX, drawY, save_string[i]);
	drawY += fh;
}

draw_set_halign(fa_right);

draw_text(
room_width - padding,
padding,
@"This softlock solver tool should
only be used as a last resort.
It was quickly made and might break
your save so please do a backup.
The saves can be found in
AppData\Local\I_Wanna_Pray...");

draw_set_halign(fa_left);
