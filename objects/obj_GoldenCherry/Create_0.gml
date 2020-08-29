///@desc 

if (instance_number(object_index) > 1) {
	instance_destroy();
}

following = false;
range = 24;
momentum_min = 0.5 * global.fps_calculation;
momentum_plus = 6 * global.fps_calculation;
momentum_range = 800;
momentum = momentum_min;
time = 0;
time_incr = 1 * global.fps_calculation;
x_goal = x;
y_goal = y;

scale = 1;
scale_goal = 0.5;
scale_incr = 0.02 * global.fps_calculation;