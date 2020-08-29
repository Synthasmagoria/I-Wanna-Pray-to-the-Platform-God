///@desc Window control

// DEBUG

/*if (mouse_check_button_pressed(mb_left))
{
	if (instance_exists(obj_Player))
	{
		obj_Player.x = mouse_x;
		obj_Player.y = mouse_y;
	}
	else
	{
		instance_create_depth(mouse_x, mouse_y, global.player_depth, obj_Player);	
	}
}

var rmove = keyboard_check_pressed(ord("2")) - keyboard_check_pressed(ord("1"));

if (rmove != 0)
{
	room_goto(room + rmove);	
}

if (keyboard_check_pressed(ord("S")) && instance_exists(obj_Player))
{
	global.save_active[SAVE.X] = obj_Player.x;
	global.save_active[SAVE.Y] = obj_Player.y;
	global.save_active[SAVE.ROOM] = room;
	scr_SaveGame();
}*/

// Input
var buttonRetry, buttonPause, buttonMenu, buttonQuit, buttonFullscreen, buttonScreenshot;
buttonRetry = keyboard_check_pressed(global.button[BUTTON.RETRY]);
buttonPause = keyboard_check_pressed(global.button[BUTTON.PAUSE]);
buttonMenu = keyboard_check_pressed(global.button_world[BUTTON_WORLD.MENU]);
buttonQuit = keyboard_check_pressed(global.button_world[BUTTON_WORLD.QUIT]);
buttonFullscreen = keyboard_check_pressed(global.button_world[BUTTON_WORLD.FULLSCREEN]);
buttonScreenshot = keyboard_check_pressed(global.button_world[BUTTON_WORLD.SCREENSHOT]);

if (global.game_playing) {
	
	// Pause
	if (buttonPause) {
		global.game_paused = !global.game_paused;
		
		if (global.game_paused) {
			instance_deactivate_all(true);
		} else {
			instance_activate_all();
		}
		
		if (surface_exists(pause_surface)) {
			surface_free(pause_surface);
		}
	}
	
	if (!global.game_paused) {
		// Do time
		global.save_active[SAVE.TIME] += 1 / global.setting[SETTING.FRAMERATE];
		
		// Retry
		if (buttonRetry) {
			instance_destroy(obj_GoldenCherry);
			scr_SaveGame(SAVE.DEATH, SAVE.TIME);
			scr_LoadGame();
		}
	}
}

// Main menu
if (buttonMenu) {
	game_restart();
}

// Quit
if (buttonQuit) {
	game_end();
}

// Fullscreen
if (buttonFullscreen) {
	scr_SettingSet(SETTING.FULLSCREEN, !global.setting[SETTING.FULLSCREEN]);
	
	// Set menu text in case of changing fullscreen
	if (instance_exists(obj_Menu)) {
		obj_Menu.setting[0] = global.setting[SETTING.FULLSCREEN] ? "true" : "false";
	}
}

// Screenshot
if (buttonScreenshot) {
	screen_save("screenshot_" + string(irandom(32000)) + ".png");
}