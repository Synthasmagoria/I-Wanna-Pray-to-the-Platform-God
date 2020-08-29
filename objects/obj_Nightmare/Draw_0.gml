///@descr Create & Draw a surface w/ holes

var cx, cy, srf;
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
srf = surface_exists(surface);

if (!srf || surface_x != cx || surface != cy) {
	
	surface_x = cx;
	surface_y = cy;
	
	if (srf) {
		surface_free(surface);
	}
	
	surface = surface_create(
		camera_get_view_width(view_camera[0]) / surface_scale,
		camera_get_view_height(view_camera[0]) / surface_scale
	);
	
	surface_set_target(surface);
	draw_clear(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	with (obj_NightmareBlock) {
		
		var block_x = (x - other.surface_x) / other.surface_scale;
		var block_y = (y - other.surface_y) / other.surface_scale;
		
		for (var yy = 0; yy < image_yscale; yy++) {
			for (var xx = 0; xx < image_xscale; xx++) {
				draw_point(block_x + xx, block_y + yy);
			}
		}
	}
	
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
}

shader_set(shader);
shader_set_uniform_f(shader_uniform_time, shader_time);
draw_surface_ext(surface, surface_x, surface_y, surface_scale, surface_scale, 0, c_white, 1.0);
shader_reset();
	