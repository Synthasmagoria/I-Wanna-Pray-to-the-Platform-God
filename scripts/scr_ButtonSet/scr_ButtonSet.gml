///@func scr_ButtonSet(index, ord)
///@desc Map a button to a key and save it to 'CONFIG_FILENAME'
///@arg {real} index
///@arg {char} char

// Check if mapping to a world-button
for (var i = 0; i < BUTTON_WORLD.NUMBER; i++) {
	if (argument[1] == global.button_world[i]) {
		exit;
	}
}

// Switch if mapping to a button that is already in use
ini_open(CONFIG_FILENAME);

for (var i = 0; i < BUTTON.NUMBER; i++) {
	if (argument[1] == global.button[i]) {
		global.button[i] = global.button[argument[0]];
		ini_write_real(CONFIG_SECTION_BUTTONS, i, global.button[i]);
		break;
	}
}

// Map button
global.button[argument[0]] = argument[1];
ini_write_real(CONFIG_SECTION_BUTTONS, argument[0], global.button[argument[0]]);

ini_close();