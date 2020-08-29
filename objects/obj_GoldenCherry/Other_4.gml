///@desc 

if (following && instance_exists(obj_Player)) {
	x = obj_Player.x;
	y = obj_Player.y;
	
	if (room != rm_Clear)
		instance_destroy(obj_Save);
}