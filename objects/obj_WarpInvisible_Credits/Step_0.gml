///@desc 

if (place_meeting(x, y, obj_Player)) {
	instance_destroy(obj_Player);
	alarm[0] = fadeout;
	touched = true;
	
	global.save_active[SAVE.X] = global.game_width / 2;
	global.save_active[SAVE.Y] = global.game_height / 2 + 100;
	global.save_active[SAVE.ROOM] = rm_Clear;
	global.save_active[SAVE.CLEAR] = true;
	scr_SaveGame();
	
	global.game_playing = false;
}

alpha += alpha_incr * touched;
