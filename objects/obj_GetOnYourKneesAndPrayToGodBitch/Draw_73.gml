///@desc 

if (touched) {
	
	// Create sprite out of water
	if (!sprite_exists(sprite)) {
		surface = surface_create(global.game_width / surface_scale, global.game_height / surface_scale);
		surface_set_target(surface);
		draw_clear_alpha(c_white, 0.0);
		
		with (obj_Water) {
			draw_rectangle(
				bbox_left / other.surface_scale,
				bbox_top / other.surface_scale,
				floor(bbox_right / other.surface_scale),
				floor(bbox_bottom / other.surface_scale),
				false
			);
		}
		
		surface_reset_target();
		var sw = surface_get_width(surface), sh = surface_get_height(surface);
		sprite = sprite_create_from_surface(surface, 0, 0, sw, sh, false, false, sw / 2, sh / 2 - 4);
		surface_free(surface);
	}
	
	shader_uniform_time = shader_get_uniform(shader[shader_index], "u_fTime");
	shader_set(shader[shader_index]);
	shader_set_uniform_f(shader_uniform_time, time % pi2);
	
	var mult = power(time, 4) / 256, scl = scale * mult;
	draw_sprite_ext(sprite, 0, x, y, surface_scale + scl, surface_scale + scl, rotation * mult, c_white, 1.0);
	
	shader_reset();
	
	draw_sprite_ext(
		player_sprite,
		0,
		player_x,
		player_y,
		player_facing,
		1,
		0,
		c_white,
		1
	);
	
	if (time > platform_delay) {
		draw_sprite_ext(
			platform_sprite,
			0,
			platform_x + platform_movex * min(((time - platform_delay) / platform_movetime), 1.0),
			platform_y,
			platform_scale,
			platform_scale,
			0,
			c_white,
			1.0
		);
	}
} else {
	draw_set_alpha(random_range(circle_alpha_min, circle_alpha_max));
	draw_set_color(circle_color);
	draw_circle(x, y, circle_radius, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}