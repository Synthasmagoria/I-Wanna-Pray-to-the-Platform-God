///@desc Save

animation_counter = max(animation_counter - 1, 0);

if (place_meeting(x, y, obj_Bullet) && instance_exists(obj_Player)) {
	animation_counter = animation_length;
	
	global.save_active[SAVE.X] = obj_Player.x;
	global.save_active[SAVE.Y] = obj_Player.y;
	global.save_active[SAVE.ROOM] = room;
	scr_SaveGame();
}

image_index = sign(animation_counter);