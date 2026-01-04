///@desc 

if (!following && place_meeting(x, y, obj_Player)) {
	following = true;
	instance_destroy(obj_Save);
	global.save_active[SAVE.CHERRY] = true;
	global.save_active[SAVE.SEED] = irandom(power(2, 15));
	global.save_active[SAVE.ENDING] = ENDING.PUZZLE;
}

if (following) {
	depth = -1000;
	time += time_incr;
	
	var dir;
	
	if (instance_exists(obj_Player)) {
		momentum = clamp(
			momentum_min + momentum_plus * (point_distance(x, y, obj_Player.x, obj_Player.y) / momentum_range),
			momentum_min,
			momentum_min + momentum_plus
		);
		
		dir = time % 360;
		x_goal = obj_Player.x + lengthdir_x(range, dir);
		y_goal = obj_Player.y + lengthdir_y(range, dir);
	} else {
		momentum = 4 * global.fps_calculation;
		y_goal = -1000;
	}
	
	dir = point_direction(x, y, x_goal, y_goal);
	x += min(abs(lengthdir_x(momentum, dir)), abs(x - x_goal)) * sign(x_goal - x);
	y += min(abs(lengthdir_y(momentum, dir)), abs(y - y_goal)) * sign(y_goal - y);
	
	image_xscale = max(image_xscale - scale_incr, scale_goal);
	image_yscale = image_xscale;
}