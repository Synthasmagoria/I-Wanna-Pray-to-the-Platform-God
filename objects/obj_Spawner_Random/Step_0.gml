///@desc Spawn instances

time += time_incr;

repeat (floor(time / rate)) {
	time -= rate;
	
	var instance;
	instance = instance_create_depth(x, y, depth, object);
	instance.hspeed = hs + random(hs_r);
	instance.vspeed = vs + random(vs_r);
}