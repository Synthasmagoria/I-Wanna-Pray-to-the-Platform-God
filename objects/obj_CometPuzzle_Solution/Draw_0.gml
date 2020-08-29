///@desc Draw solution

for (var i = 0; i < button_number; i++) {
	draw_rectangle(button_x[i], button_y[i], button_x[i] + 31, button_y[i] + 31, true);
}

for (var i = 0; i < solution_number; i++) {
	draw_sprite(sprite_index, i, button_x[solution[i]], button_y[solution[i]]);
}
