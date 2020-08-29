///@descr Save

if (place_meeting(x, y, obj_Bullet)) {
	instance_destroy();
	audio_play_sound(snd_Death, 0, false);
}