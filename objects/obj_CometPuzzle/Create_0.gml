///@desc Initialize

solution = scr_Comet_GetSolution(global.save_active[SAVE.SEED]);
solution_number = array_length_1d(solution);

input = array_create(solution_number);
input_index = 0;
input_checking = true;
input_correct = false;

move_x = [-96, 96, -224, -96, 96, 224, 0, -224, -96, 96, 224, -96, 96];
move_y = [-224, -224, -96, -96, -96, -96, 0, 96, 96, 96, 96, 224, 224];
move_speed = pi / game_get_speed(gamespeed_fps) / 8;
move_position = 0;
move_goal = pi / 2;
move = false;

button_number = array_length_1d(move_x);
button_x = array_create(button_number);
button_y = array_create(button_number);

pressable_number = button_number;
pressable = array_create(pressable_number);

for (var i = 0; i < button_number; i++) {
	button_x[i] += move_x[i] + x;
	button_y[i] += move_y[i] + y;
	pressable[i] = i;
}

shader = sh_SinCosRGB;
shader_time = random(1000);
shader_time_incr = 1 / game_get_speed(gamespeed_fps);
shader_time_uniform = shader_get_uniform(shader, "time");
