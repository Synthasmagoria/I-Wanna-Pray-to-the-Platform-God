///@desc Increment time

shader_time += shader_time_incr;

var sh_time = floor(shader_time);

if (sh_time > shader_time_last) {
	surface_redraw = true;
	shader_time_last = sh_time;
}
