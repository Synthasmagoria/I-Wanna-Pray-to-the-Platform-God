///@func scr_LoadGame([index], [...])
///@desc Loads a game state from a file
///@arg {real} [index]
///@arg {real} [...]

/*
	This function sets values in 'global.save_active' to values from 'global.save'.
	You choose whether to copy the whole array or only parts of it.
	To specify which parts of the array to copy use the global SAVE enum.
	Thereafter the game state will be set according to these values (scr_StartGame).
*/

if (argument_count > 0) {
	for (var i = 0; i < argument_count; i++) {
		global.save_active[argument[i]] = global.save[argument[i]];
	}
} else {
	for (var i = 0; i < SAVE.NUMBER; i++) {
		global.save_active[i] = global.save[i];
	}
}

scr_StartGame();