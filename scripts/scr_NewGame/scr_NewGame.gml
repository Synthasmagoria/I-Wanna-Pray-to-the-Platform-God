///@func scr_NewGame(file)
///@desc Starts a new game based on 'global.save_default' values
///@arg {string} file

/*
	This function deletes a file if it already exists and creates a new one.
	It will write values from 'global.save_default' to this new file.
	'global.save' and 'global.save_active' will be set to 'global.save_default'.
	Thereafter the game state will be set according to these values (scr_StartGame).
*/

// Delete file if it exists
if (file_exists(argument[0])) {
	file_delete(argument[0]);
}

// Write a new game to the file
var f;
f = file_text_open_write(argument[0]);

// Set the randomized global.save_default values
global.save_default[SAVE.SEED] = irandom(power(2, 15));

// Write the fresh save to a file
for (var i = 0; i < SAVE.NUMBER; i++) {
	global.save[i] = global.save_default[i];
	global.save_active[i] = global.save[i];
	file_text_write_real(f, global.save_default[i]);
	file_text_writeln(f);
}

file_text_close(f);

// Start game
scr_StartGame();