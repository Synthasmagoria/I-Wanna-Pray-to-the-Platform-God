///@func scr_SaveGame([index], [...])
///@desc Sets the values in 'global.save' before writing them to a file
///@arg {real} [index]
///@arg {real} [...]

/*
	This script sets values in 'global.save' to values from 'global.save_active'.
	You choose whether to copy the whole array or only parts of it.
	To specify which parts of the array to copy use the global SAVE enum.
*/

if (argument_count > 0) {
	for (var i = 0; i < argument_count; i++) {
		global.save[argument[i]] = global.save_active[argument[i]];
	}
} else {
	for (var i = 0; i < SAVE.NUMBER; i++) {
		global.save[i] = global.save_active[i];
	}
}