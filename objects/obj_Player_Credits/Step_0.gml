///@desc Ending C

if (place_meeting(x, y, obj_Bullet) && alarm[0] == -1) {
	alarm[0] = glitch_length;
	glitch_active = true;
	instance_destroy(obj_Player);
	hspeed = 0;
	audio_play_sound(mus_Glitch, 0, false);
	
	if (audio_is_playing(music)) {
		audio_stop_sound(music);
	}
	
	with(obj_Bullet) {
		speed = 0;
	}
}
