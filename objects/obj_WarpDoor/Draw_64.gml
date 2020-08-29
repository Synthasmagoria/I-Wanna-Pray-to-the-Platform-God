///@desc Draw hint

if (warp_touching) {
	draw_sprite(
		spr_WarpArrow,
		0,
		obj_Player.x - 8 - camera_get_view_x(view_camera[0]),
		obj_Player.bbox_top - obj_Player.sprite_height + 8 - camera_get_view_y(view_camera[0])
	);
}
