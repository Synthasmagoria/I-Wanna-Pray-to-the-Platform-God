///@desc Box surface & text

// Create a surface containing a textbox based on a sprite
if (!surface_exists(box_surface)) {
	var spr_w, spr_h, spr_x2, spr_y2;
	spr_w = sprite_get_width(box_sprite);
	spr_h = sprite_get_height(box_sprite);
	spr_x2 = spr_w * (box_width - 1);
	spr_y2 = spr_h * (box_height - 1);
	
	box_surface = surface_create(box_width * spr_w, box_height * spr_h);
	surface_set_target(box_surface);
	draw_clear_alpha(c_white, 0.0);
	
	#region draw textbox onto surface
	draw_sprite(box_sprite, 0, 0, 0);
	for (var yy = 1; yy < box_height - 1; yy++) {
		draw_sprite(box_sprite, 3, 0, spr_h * yy);
	}
	draw_sprite(box_sprite, 6, 0, spr_y2);
	
	for (var xx = 1; xx < box_width - 1; xx++) {
		draw_sprite(box_sprite, 1, spr_w * xx, 0);
		for (var yy = 1; yy < box_height - 1; yy++) {
			draw_sprite(box_sprite, 4, spr_w * xx, spr_h * yy);
		}
		draw_sprite(box_sprite, 7, spr_w * xx, spr_y2);
	}

	draw_sprite(box_sprite, 2, spr_x2, 0);
	for (var yy = 1; yy < box_height - 1; yy++) {
		draw_sprite(box_sprite, 5, spr_x2, spr_h * yy);
	}
	draw_sprite(box_sprite, 8, spr_x2, spr_y2);
	#endregion
	
	surface_reset_target();
}

// Draw the textbox surface & text
draw_surface_ext(box_surface, x, y, box_scale, box_scale, 0, c_white, 1.0);

draw_set_font(font);
draw_text(x + text_padding, y + text_padding, string_copy(text_draw, 0, floor(text_position)));
