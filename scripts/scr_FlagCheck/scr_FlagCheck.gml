///@desc Check the flag value in the save array for a boolean
///@func scr_FlagCheck(ind)
///@arg {real} ind

if (argument[0] < FLAG.NUMBER && argument[0] >= 0) {
	return (global.save_active[SAVE.FLAG] >> argument[0]) & 1;
} else {
	return -1;
}