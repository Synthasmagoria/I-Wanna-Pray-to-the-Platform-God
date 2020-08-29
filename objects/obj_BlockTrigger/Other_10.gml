///@desc Trigger

if (hm != 0 || vm != 0) {
	var velocity;
	velocity = spd * global.fps_calculation;
	direction = point_direction(0, 0, hm * trg_dir, vm * trg_dir);
	speed = velocity;
	friction = 0;
	alarm[0] = floor(point_distance(0, 0, hm, vm) / velocity);
} else {
	if (vs != 0 || hs != 0) {
		hspeed = hs * global.fps_calculation * trg_dir;
		vspeed = vs * global.fps_calculation * trg_dir;
	} else {
		speed = spd * global.fps_calculation * trg_dir;
		direction = dir;
		gravity = grav * global.fps_calculation_squared * trg_dir;
		gravity_direction = grav_dir;
	}
}