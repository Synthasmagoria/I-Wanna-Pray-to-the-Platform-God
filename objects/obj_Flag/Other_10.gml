///@desc Set flags & maybe save

if (!scr_FlagCheck(flag_index)) {
	
	scr_FlagSet(flag_index);
	
	if (flag_save) {
		scr_SaveGame(SAVE.FLAG);
	}
}