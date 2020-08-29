///@desc Death/time/ending display

if (scr_ReadGame(string(option_index))) {
	save_value[0] = string(global.save[SAVE.DEATH]);
	save_value[1] = scr_TimeToString(global.save[SAVE.TIME]);
	save_value[2] = global.save[SAVE.CLEAR] ? chr(65 + global.save[SAVE.ENDING]) : "none yet";
	save_value[3] = global.save[SAVE.CHERRY] ? "YES DUDE" : "none";
} else {
	save_value[0] = "0";
	save_value[1] = "00 : 00 : 00";
	save_value[2] = "none yet";
	save_value[3] = "none";
}
