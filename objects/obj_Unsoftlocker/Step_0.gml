var mov = keyboard_check_pressed(global.button_menu[BUTTON_MENU.DOWN]) -
	keyboard_check_pressed(global.button_menu[BUTTON_MENU.UP]);

if (mov != 0)
{
	save_index += mov;
	
	if (save_index < 0)
		save_index = global.save_number - 1;
	else if (save_index >= global.save_number)
		save_index = 0;
}

if (keyboard_check_pressed(global.button_menu[BUTTON_MENU.ACCEPT]))
{
	save_file = string(save_index);
	
	if (scr_ReadGame(save_file))
	{
		if (!global.save[SAVE.CLEAR] && !global.save[SAVE.CHERRY])
		{
			room_goto(global.save[SAVE.ROOM]);
			unsoftlock = true;
		}
		else
		{
			audio_play_sound(snd_Decline, 0, false);
		}
	}
	else
	{
		audio_play_sound(snd_Decline, 0, false);
	}
}
else if (keyboard_check_pressed(global.button_menu[BUTTON_MENU.DECLINE]))
{
	game_restart();
}