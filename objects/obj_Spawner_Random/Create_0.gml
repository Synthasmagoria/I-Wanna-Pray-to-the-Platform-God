///@desc Initialize Variables

/*
	A spawner with added random functionality
*/

// Set in creation code

offset = 0;			// Spawn timing offset (0 - 1)
rate = 50;			// Spawn rate in frames
object = obj_Cherry;// Object type to be spawned

hs = 0;				// Horizontal speed at spawn
vs = 0;				// Vertical speed at spawn

hs_r = 0;
vs_r = 0;

// Do not set in creation code
time = 0;
time_incr = 1 * global.fps_calculation;