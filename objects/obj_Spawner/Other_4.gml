///@desc Spawn ahead

// Adjust values for fps setting
rate /= global.fps_calculation;
hs *= global.fps_calculation;
vs *= global.fps_calculation;

// Set offset
time = rate * offset;

// Spawn ahead
if (ahead) {
	var sep, dir, pos, inst;
	sep = point_distance(x, y, x + hs * rate, y + vs * rate);
	dir = point_direction(x, y, x + hs, y + vs);
	pos = offset * sep;
	
	while (pos <= ahead) {
		inst = instance_create_depth(
			x + lengthdir_x(pos, dir),
			y + lengthdir_y(pos, dir),
			depth,
			object
		);
		
		inst.hspeed = hs;
		inst.vspeed = vs;
		inst.hs_touch = hs_touch;
		inst.vs_touch = vs_touch;
		
		pos += sep;
	}
}