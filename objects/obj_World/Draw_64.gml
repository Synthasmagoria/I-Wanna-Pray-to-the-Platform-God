///@desc Pause screen

if (global.game_paused) {
	if (!surface_exists(pause_surface)) {
		pause_surface = surface_create(global.game_width, global.game_height);
		surface_set_target(pause_surface);
		
		draw_set_color(c_black);
		draw_set_alpha(pause_dim);
		draw_rectangle(0, 0, global.game_width, global.game_height, false);
		draw_set_color(c_white);
		draw_set_alpha(1.0);
		
		draw_set_font(f_OrigamiMommy12);
		draw_text(0, 0, "DEATH: " + string(global.save_active[SAVE.DEATH]));
		draw_text(0, 16, "TIME: " + scr_TimeToString(global.save_active[SAVE.TIME]));
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(global.game_width / 2, global.game_height / 2, "PAUSE", 1, 1, 0);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		surface_reset_target();
	}
	
	draw_surface_ext(pause_surface, 0, 0, 1, 1, 0, c_white, 1);
}