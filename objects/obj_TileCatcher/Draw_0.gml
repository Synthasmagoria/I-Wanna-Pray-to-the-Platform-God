///@desc Surface stuff

if (!surface_exists(surface)) {
	surface = surface_create(global.game_width, global.game_height);
	surface_set_target(surface);
	draw_clear_alpha(c_white, 0.0);
	
	var lay = layer_get_id("Tiles");
	var til = layer_tilemap_get_id(lay);
	
	gpu_set_blendmode_ext(bm_src_alpha, bm_src_alpha);
	draw_tilemap(til, 0, 0);
	
	gpu_set_blendmode_ext(bm_dest_alpha, bm_src_alpha);
	draw_sprite_ext(spr_TilesTemple_7, 0, 0, 0, 32, 32, 0, c_white, 1.0);
	
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}

draw_surface(surface, 0, 0);
