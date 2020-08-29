///@desc Collision / Interaction

touching = place_meeting(x, y, obj_Player);

if (touching && !obj_Player.frozen && keyboard_check_pressed(global.button[BUTTON.UP])) {
	var dialogue = instance_create_depth(0, 0, 0, obj_Dialogue);
	dialogue.file_start = file_start;
	dialogue.file_end = file_end;
	
	audio_play_sound(snd_Alert, 0, false);
	
	with (obj_Player) {
		frozen = true;
	}
}