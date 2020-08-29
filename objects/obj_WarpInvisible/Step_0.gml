///@desc Warp

if (instance_exists(obj_Player) && position_meeting(obj_Player.x, obj_Player.y, id)) {
	
	if (warp_room != room) {
		room_goto(warp_room);
	}
	
	obj_Player.x += warp_xoffset;
	obj_Player.y += warp_yoffset;
}