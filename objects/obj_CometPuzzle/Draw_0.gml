///@desc Draw buttons

if (input_checking) {
	for (var i = 0; i < button_number; i++) {
		draw_rectangle(button_x[i], button_y[i], button_x[i] + 31, button_y[i] + 31, true);
	}
	for (var i = 0; i < input_index; i++) {
		draw_sprite(sprite_index, i, button_x[input[i]], button_y[input[i]]);
	}
} else {
	if (input_correct) {
		if (move) {
			var X, Y;
			for (var i = 0; i < button_number; i++) {
				X = button_x[i] - move_x[i] * sin(move_position);
				Y = button_y[i] - move_y[i] * sin(move_position);
				draw_rectangle(X, Y, X + 31, Y + 31, true);
			}
		} else {
			shader_set(shader);
			shader_set_uniform_f(shader_time_uniform, shader_time);
			draw_rectangle(x, y, x + 31, y + 31, true);
			shader_reset();
		}
	} else {
		for (var i = 0; i < button_number; i++) {
			draw_rectangle(button_x[i], button_y[i], button_x[i] + 31, button_y[i] + 31, true);
		}
	}
}