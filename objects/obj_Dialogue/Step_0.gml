///@desc Scroll / interaction

// Set the textbox's y position based on the player's position
if (instance_exists(obj_Player)) {
	if (obj_Player.y < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2) {
		y = box_margin;
	} else {
		y = global.game_height - box_height * sprite_get_height(box_sprite) * box_scale - box_margin;
	}
}

if (interact && keyboard_check_pressed(global.button[BUTTON.JUMP])) {
	if (text_position == string_length(text_draw)) {
		read = true;
	} else {
		text_position = string_length(text_draw);
	}
}

// Read text from the file
if (read) {

	read = false;
	
	text_draw = "";
	text_position = 0;
	
	// Initialize if it hasn't already
	if (initialize) {
		
		initialize = false;
		
		file_position = file_start;
		
		if (file != -1) {
			for (var i = 0; i < file_start; i++) {
				file_text_readln(file);
			}
		}
	}
	
	// Read from the file
	if (file_position <= file_end) {
		if (!file_text_eof(file)) {
			text = file_text_readln(file);
		} else {
			text_draw = "END OF FILE";
		}
	} else {
		
		if (instance_exists(obj_Player)) {
			with (obj_Player) {
				frozen = false;
			}
		}
		
		instance_destroy();
	}
	
	file_position++;
	
	// Format the line to fit within the textbox
	var pos, pos_prev, pos_max;
	pos = 0;
	pos_prev = 0;
	pos_max = string_length(text);
	
	while (pos < pos_max) {
		
		pos = min(pos + text_width_max, pos_max);
		
		if (pos < pos_max) {
			while (pos > pos_prev && string_char_at(text, pos) != " ") {
				pos--;
			}
		}
		
		text_draw += string_copy(text, pos_prev, pos - pos_prev) + "\n";
		pos_prev = pos + 1;
	}
}

text_position = min(text_position + text_speed, string_length(text_draw));
