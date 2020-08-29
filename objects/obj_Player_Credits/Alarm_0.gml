///@desc Save / Restart

global.save_active[SAVE.X] = 302;
global.save_active[SAVE.Y] = 302;
global.save_active[SAVE.ROOM] = rm_Temple_Hidden;
global.save_active[SAVE.ENDING] = ENDING.HIDDEN;
global.save_active[SAVE.CLEAR] = true;

scr_SaveGame();
game_restart();
