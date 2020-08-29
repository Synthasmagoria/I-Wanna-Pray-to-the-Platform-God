///@desc Warp

if (place_meeting(x, y, obj_Player)) {
	// Use warp_x/y if set
	if (warp_x != -1 || warp_y != -1) {
		obj_Player.x = warp_x;
		obj_Player.y = warp_y;
	} else {
		instance_destroy(obj_Player);
	}
	
	room_goto(warp_room);
}