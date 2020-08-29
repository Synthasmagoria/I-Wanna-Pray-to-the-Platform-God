///@descr Play sound when in area

if (instance_exists(obj_Player)) {
	if (point_in_rectangle(obj_Player.x, obj_Player.y, sound_area[0], sound_area[1], sound_area[2], sound_area[3])) {
		if (!audio_is_playing(sound)) {
			sound_index = audio_play_sound(sound, 0, true);
			
			if (sound_volume != -1) {
				audio_sound_gain(sound_index, sound_volume * global.setting[SETTING.MUSIC], 0);
			}
		}
	} else {
		if (audio_is_playing(sound_index)) {
			audio_stop_sound(sound_index);
		}
	}
}

