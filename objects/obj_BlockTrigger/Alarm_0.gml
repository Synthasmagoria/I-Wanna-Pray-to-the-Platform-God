///@descr Slow down to a halt
var velocity;
velocity = spd * global.fps_calculation;

speed = frac(point_distance(0, 0, hm, vm) / velocity) * velocity * 2;
friction = speed / 2;
alarm[0] = -1;