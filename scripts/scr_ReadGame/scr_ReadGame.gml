///@func scr_ReadGame(file)
///@desc Reads values from a file
///@arg {string} file The file to read from

/*
	This function simply reads values from a file and stores them in 'global.save'
	Hence the name 'scr_ReadGame' and not 'scr_LoadGame'
*/

if (file_exists(argument[0])) {
	var f;
	f = file_text_open_read(argument[0]);
	
	for (var i = 0; i < SAVE.NUMBER; i++) {
		global.save[i] = file_text_read_real(f);
		file_text_readln(f);
	}
	
	file_text_close(f);
	
	return true; // Read from file
} else {
	return false; // Failed to read from file
}