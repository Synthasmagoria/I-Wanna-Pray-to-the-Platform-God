///@desc Save the game

if (player_spawned && save) {
	global.save_active[SAVE.X] = player_x;
	global.save_active[SAVE.Y] = player_y;
	global.save_active[SAVE.ROOM] = room;
	scr_SaveGame();
}

instance_destroy();