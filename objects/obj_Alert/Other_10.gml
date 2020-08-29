///@desc Create dialogue

flag_index = clamp(flag_index, -1, 15);
	
if (flag_index != -1) {
	if (scr_FlagCheck(flag_index)) {
		instance_destroy();
		exit;
	} else {
		scr_FlagSet(flag_index);
	}
}

audio_play_sound(snd_Alert, 0, false);

var dialogue = instance_create_depth(0, 0, depth, obj_Dialogue);
dialogue.file_start = file_start;
dialogue.file_end = file_end;
dialogue.interact = freeze;

if (freeze) {
	if (instance_exists(obj_Player)) {
		with (obj_Player) {
			frozen = true;
		}
	}	
}

instance_destroy();