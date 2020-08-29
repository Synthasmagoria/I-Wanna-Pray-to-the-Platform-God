///@func scr_WriteGame(file)
///@desc Save Game
///@arg {string} file

/*
	This function simply writes the values of 'global.save' to a file.
	Hence the name 'scr_WriteGame' and not 'scr_SaveGame'.
*/

var f;
f = file_text_open_write(argument[0]);

for (var i = 0; i < SAVE.NUMBER; i++) {
	if (!is_string(global.save[i])) {
		file_text_write_real(f, global.save[i]);
	} else {
		file_text_write_string(f, global.save[i]);
	}
	file_text_writeln(f);
}

file_text_close(f);