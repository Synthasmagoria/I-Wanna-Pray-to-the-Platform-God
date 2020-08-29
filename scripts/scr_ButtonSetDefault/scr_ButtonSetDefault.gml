///@func scr_ButtonSetDefault()
///@desc Revert keyboard mappings to default values

ini_open(CONFIG_FILENAME);

for (var i = 0; i < BUTTON.NUMBER; i++) {
	global.button[i] = global.button_default[i];
	ini_write_real(CONFIG_SECTION_BUTTONS, i, global.button[i]);
}

ini_close();