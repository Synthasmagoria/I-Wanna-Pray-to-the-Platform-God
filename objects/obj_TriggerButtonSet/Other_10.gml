///@desc Trigger / play sound

scr_Trigger(trg, trg_dir);

if (trg_snd != -1) {
	audio_play_sound(trg_snd, 0, false);
}
	
image_index = 1;