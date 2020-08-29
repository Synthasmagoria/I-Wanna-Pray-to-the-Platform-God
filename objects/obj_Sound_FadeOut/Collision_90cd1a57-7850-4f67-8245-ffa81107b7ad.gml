///@desc Fade out currently playing song

with (obj_World) {
	if (audio_is_playing(sound_index)) {
		audio_sound_gain(sound_index, 0.0, other.length);
	}
}

instance_destroy();
