///@desc Navigate Menu

if (keyboard_check_pressed(unsoftlocker_button))
{
	unsoftlocker_access--;
	
	if (unsoftlocker_access < 0)
	{
		room_goto(rm_Unsoftlocker);
	}
}

if (button_changing) {
	if (keyboard_lastkey != 0) {
		// set a button
		button_changing = false;
		
		scr_ButtonSet(option_index, keyboard_lastkey);
		for (var i = 0; i < BUTTON.NUMBER; i++) {
			button[i] = scr_ButtonString(global.button[i]);
		}
		
		var buttonWidth;
		buttonWidth = string_length(button[option_index]) * font_width;
		button_width_max = button_width_max < buttonWidth ? buttonWidth : button_width_max;
	}
} else {
	
	// Navigate menu
	var buttonUp, buttonDown;
	buttonUp = keyboard_check_pressed(global.button_menu[BUTTON_MENU.UP]);
	buttonDown = keyboard_check_pressed(global.button_menu[BUTTON_MENU.DOWN]);
	
	if (buttonUp || buttonDown) {
		option_index = option_index + buttonDown - buttonUp;
		
		if (option_index < 0) {
			option_index = option_number[menu_index] - 1;
		} else if (option_index >= option_number[menu_index]) {
			option_index = 0;
		}
		
		if (menu_index == menu_sub_save) {
			event_user(0);
		}
	}
	
	if (keyboard_check_pressed(global.button_menu[BUTTON_MENU.ACCEPT])) {
		switch (menu_index) {
			case menu_sub_main:
			switch (option_index) {
				case 0: // play
				menu_index = 1;
				option_index = 0;
				
				event_user(0);
				break;
				
				case 1: // settings
				menu_index = 4;
				option_index = 0;
				break;
				
				case 2: // buttons
				menu_index = 5;
				option_index = 0;
				break;
				
				case 3: // quit
				game_end();
				break;
			}
			break;
			
			case menu_sub_save:
			global.save_index = option_index;
			
			var saveExists
			saveExists = file_exists(string(global.save_index));
			
			menu_index = 2;
			option_index = saveExists ? 0 : 1;
			option_color[2,0] = saveExists ? c_white : c_gray;
			break;
			
			case menu_sub_start:
			switch (option_index) {
				case 0: // continue
				var file = string(global.save_index);
				if (file_exists(file)) {
					scr_ReadGame(file);
					scr_LoadGame();
				}
				break;
				
				case 1: // new game
				var file = string(global.save_index);
				if (!file_exists(file)) {
					scr_NewGame(file);
				} else {
					menu_index = 3;
					option_index = 0;
				}
				break;
			}
			break;
			
			case menu_sub_overwrite: // overwrite save data?
			switch (option_index) {
				case 0: // no
				menu_index = 2;
				option_index = 0;
				break;
				
				case 1: // yes
					scr_NewGame(string(global.save_index));
				break;
			}
			break;
			
			case menu_sub_settings:
			switch (option_index) {
				case 0: // toggle fullscreen
				scr_SettingSet(SETTING.FULLSCREEN, !window_get_fullscreen());
				setting[option_index] = window_get_fullscreen() ? "true" : "false";
				break;
				
				case 4: // restore default settings
				scr_SettingSetDefault();
				window_set_size(800, 608);
				setting[0] = global.setting[SETTING.FULLSCREEN] ? "true" : "false";
				setting[1] = string(global.setting[SETTING.FRAMERATE]);
				setting_framerate_index = 0;
				while (setting_framerate[setting_framerate_index] < global.setting[SETTING.FRAMERATE]) {
					setting_framerate_index++;
				}
				setting[2] = string(global.setting[SETTING.MUSIC]);
				setting[3] = string(global.setting[SETTING.SOUND]);
				with (obj_Vortex) {
					time_incr = 1 / game_get_speed(gamespeed_fps);
				}
				break;
			}
			break;
			
			case menu_sub_buttons:
			switch (option_index) {
				case 0: // change buttons
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
				case 8:
				button_changing = true;
				keyboard_lastkey = 0;
				break;
				
				case 9: // restore default button configuration
				scr_ButtonSetDefault();
				for (var i = 0; i < BUTTON.NUMBER; i++) {
					button[i] = scr_ButtonString(global.button[i]);
				}
				break;
			}
			break;
		}
	}
	
	if (keyboard_check_pressed(global.button_menu[BUTTON_MENU.DECLINE])) {
		switch (menu_index) {
			case menu_sub_save: // return to main menu from save select
			menu_index = 0;
			option_index = 0;
			break;
			
			case menu_sub_start: // return to save select from game start
			menu_index = 1;
			option_index = global.save_index;
			break;
			
			case menu_sub_overwrite: // return to game start from save overwrite warning
			menu_index = 2;
			option_index = 0;
			break;
			
			case menu_sub_settings: // return to main menu from settings
			menu_index = 0;
			option_index = 1;
			break;
			
			case menu_sub_buttons: // return to main menu from button configuration
			menu_index = 0;
			option_index = 2;
			break;
		}
	}
	
	var buttonLeft, buttonRight;
	buttonRight = keyboard_check_pressed(global.button_menu[BUTTON_MENU.RIGHT]);
	buttonLeft = keyboard_check_pressed(global.button_menu[BUTTON_MENU.LEFT]);
	
	if (buttonLeft || buttonRight) {
		if (menu_index == menu_sub_settings) {
			switch (option_index) {
				case 1: // set framerate
				setting_framerate_index = clamp(setting_framerate_index + buttonRight - buttonLeft, 0, setting_framerate_number - 1);
				scr_SettingSet(SETTING.FRAMERATE, setting_framerate[setting_framerate_index]);
				setting[SETTING.FRAMERATE] = string(global.setting[SETTING.FRAMERATE]);
				with (obj_Vortex) {
					time_incr = 1 / game_get_speed(gamespeed_fps);
				}
				break;
				
				case 2: // set music volume
				scr_SettingSet(SETTING.MUSIC, global.setting[SETTING.MUSIC] + setting_music_change * (buttonRight - buttonLeft));
				setting[SETTING.MUSIC] = string(global.setting[SETTING.MUSIC]);
				break;
				
				case 3: // set sound effect volume
				scr_SettingSet(SETTING.SOUND, global.setting[SETTING.SOUND] + setting_sound_change * (buttonRight - buttonLeft));
				setting[SETTING.SOUND] = string(global.setting[SETTING.SOUND]);
				break;
			}
		}
	}
}