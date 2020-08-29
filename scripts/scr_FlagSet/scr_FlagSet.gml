///@desc Set a flag in the flag value saved in the save array
///@func scr_FlagSet(ind, val)
///@arg {real} ind

if (argument[0] < FLAG.NUMBER && argument[0] >= 0) {
	global.save_active[SAVE.FLAG] |= (1 << argument[0]);
	return true;
} else {
	return false;
}