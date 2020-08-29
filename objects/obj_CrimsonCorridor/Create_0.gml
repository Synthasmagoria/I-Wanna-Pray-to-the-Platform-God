///@desc Initialize

shader = sh_CrimsonDiagonal;
shader_time = 0;
shader_time_incr = 0.15 * global.fps_calculation;
shader_time_last = 0;
shader_time_uniform = shader_get_uniform(shader, "time");
shader_time_uniform_name = "time";

surface_blocks = -1;
surface = -1;
surface_scale = 16;
surface_width = room_width / surface_scale / 2;
surface_height = room_height / surface_scale / 2;
surface_redraw = true;
