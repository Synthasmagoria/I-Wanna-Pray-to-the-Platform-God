///@desc 

hspeed = 2 * global.fps_calculation;

if (instance_exists(obj_CameraSmooth)) {
	with (obj_CameraSmooth) {
		object = other.object_index;
	}
}

glitch_length = ceil(100 / global.fps_calculation);
glitch_surface = -1;
glitch_active = false;

music = audio_play_sound(mus_Credits, 0, false);
