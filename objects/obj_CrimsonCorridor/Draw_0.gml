///@desc Surface / Shader

if (!surface_exists(surface_blocks)) {
	
	surface_blocks = surface_create(
		room_width / sprite_get_width(obj_Block),
		room_height / sprite_get_height(obj_Block)
	);
	
	surface_set_target(surface_blocks);
	draw_clear_alpha(c_white, 0.0);
	
	with (obj_Block) {
		
		var xpos, ypos;
		xpos = x / sprite_get_width(sprite_index);
		ypos = y / sprite_get_height(sprite_index);
		
		for (var xx = 0; xx < image_xscale; xx++) {
			for (var yy = 0; yy < image_yscale; yy++) {
				draw_point(xpos + xx, ypos + yy);
			}
		}
	}
	
	surface_reset_target();
}

var srf_exists = surface_exists(surface);

if (!srf_exists || surface_redraw) {
	
	if (!srf_exists) {
		surface = surface_create(surface_width, surface_height);
	}
	
	surface_redraw = false;
	
	surface_set_target(surface);
	draw_clear_alpha(c_white, 0.0);
	var timeUni = shader_get_uniform(shader, shader_time_uniform_name);
	shader_set(shader);
	shader_set_uniform_f(timeUni, shader_time);
	draw_surface_ext(surface_blocks, 0, 0, 2, 2, 0, c_white, 1.0);
	shader_reset();
	surface_reset_target();
}

draw_surface_ext(surface, 0, 0, surface_scale, surface_scale, 0, c_white, 1.0);
draw_surface_ext(surface, room_width, 0, -surface_scale, surface_scale, 0, c_white, 1.0);
draw_surface_ext(surface, room_width, room_height, -surface_scale, -surface_scale, 0, c_white, 1.0);
draw_surface_ext(surface, 0, room_height, surface_scale, -surface_scale, 0, c_white, 1.0);