///@desc Save time
if (global.game_ingame) {
	scr_SaveGame(SAVE.DEATH, SAVE.TIME);
	scr_WriteGame(string(global.save_index));
}

global.game_ingame = false;
global.game_playing = false;
global.game_paused = false;