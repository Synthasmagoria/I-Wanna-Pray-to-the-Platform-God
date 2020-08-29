///@desc Draw stars

if (!surface_exists(mask) || mask_x != x || mask_y != y) {
	
	if (surface_exists(mask)) {
		surface_free(mask);
	}
	
	if (surface_exists(surface)) {
		surface_free(surface);
	}
	
	mask_x = x;
	mask_y = y;
	
	mask = surface_create(
		camera_get_view_width(view_camera[0]) / mask_scale,
		camera_get_view_height(view_camera[0]) / mask_scale,
	);
	surface_set_target(mask);
	draw_clear_alpha(c_white, 0.0);
	
	with (obj_Block) {
		if (object_index == obj_Block) {
			draw_rectangle(
				floor((bbox_left - other.mask_x) / other.mask_scale),
				floor((bbox_top - other.mask_y) / other.mask_scale),
				floor((bbox_right - other.mask_x) / other.mask_scale),
				floor((bbox_bottom - other.mask_y) / other.mask_scale),
				false
			);
		}
	}
	
	surface_reset_target();
}

if (!surface_exists(surface)) {
	surface = surface_create(
		camera_get_view_width(view_camera[0]),
		camera_get_view_height(view_camera[0])
	);
}

surface_set_target(surface);
draw_clear_alpha(c_white, 0.0);

for (var i = 0; i < star_number; i++) {
	draw_sprite(star_sprite[star_sprite_index[i]], floor(img_index), star_x[i], star_y[i]);
}

gpu_set_blendmode_ext(bm_dest_alpha, bm_zero);
draw_surface_ext(mask, 0, 0, mask_scale, mask_scale, 0, c_white, 1.0);
gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));