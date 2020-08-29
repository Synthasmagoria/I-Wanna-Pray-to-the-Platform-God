///@desc Initialize

button_x = [-32, 32, -96, -32, 32, 96, 0, -96, -32, 32, 96, -32, 32];
button_y = [-96, -96, -32, -32, -32, -32, 0, 32, 32, 32, 32, 96, 96];
button_number = array_length_1d(button_x);

solution = scr_Comet_GetSolution(global.save_active[SAVE.SEED]);
solution_number = array_length_1d(solution);

for (var i = 0; i < button_number; i++) {
	button_x[i] += x;
	button_y[i] += y;
}