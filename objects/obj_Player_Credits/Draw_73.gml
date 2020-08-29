///@desc 

if (glitch_active) {
	
	if (!surface_exists(glitch_surface)) {
		glitch_surface = surface_create(global.game_width, global.game_height);
		surface_set_target(glitch_surface);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}
	
	shader_set(sh_Glitch);
	draw_surface(glitch_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
	shader_reset();
}
