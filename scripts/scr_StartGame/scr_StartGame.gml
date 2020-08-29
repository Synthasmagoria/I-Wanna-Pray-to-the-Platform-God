///@func scr_StartGame()
///@desc Sets the game state based on the values in 'global.save_active'

/*
	This function sets the game state based on values stored in 'global.save_active'.
	You may change this script to fit your needs as you add more values to be saved.
	Used in scripts 'scr_NewGame' and 'scr_LoadGame'.
*/

if (instance_exists(obj_Player)) {
	instance_destroy(obj_Player);
}

instance_create_depth(global.save_active[SAVE.X], global.save_active[SAVE.Y], global.player_depth, obj_Player);

if (room == global.save_active[SAVE.ROOM]) {
	room_restart();
} else {
	room_goto(global.save_active[SAVE.ROOM]);
}

global.game_playing = true;
global.game_ingame = true;