///@desc Trigger

if (place_meeting(x, y, obj_Player)) {
	
	scr_Trigger(trg, trg_dir);
	
	if (trg_snd != -1) {
		audio_play_sound(trg_snd, 0, false);
	}
		
	instance_destroy();
}