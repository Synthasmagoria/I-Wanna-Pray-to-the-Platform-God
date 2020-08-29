///@descr Initialize variables

if (instance_number(object_index) > 1) {
	instance_destroy();
	exit;
} 

room_origin = room;

surface = -1;
surface_scale = 32;
surface_x = camera_get_view_x(view_camera[0]);
surface_y = camera_get_view_y(view_camera[0]);

shader = sh_Nightmare;
shader_time = 0;
shader_uniform_time = shader_get_uniform(shader, "time");