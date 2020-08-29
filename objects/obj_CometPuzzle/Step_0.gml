///@desc Collision

shader_time += shader_time_incr;

var collision;

if (input_checking) {
	
	for (var i = 0; i < pressable_number; i++) {
		
		collision = collision_rectangle(
			button_x[pressable[i]],
			button_y[pressable[i]],
			button_x[pressable[i]] + 31,
			button_y[pressable[i]] + 31,
			obj_Player,
			false,
			false
		);
		
		if (collision) {
			
			input[input_index] = pressable[i];
			input_index++;
			
			for (var ii = i + 1; ii < pressable_number; ii++) {
				pressable[ii - 1] = pressable[ii];
			}
			pressable_number--;
			
			if (input_index == solution_number) {
				
				var correct = 0;
				
				for (var ii = 0; ii < solution_number; ii++) {
					correct += (input[ii] == solution[ii]);
				}
				
				if (correct == solution_number) {
					audio_play_sound(snd_Puzzle, 0, false);
					// do thing
					input_correct = true;
					move = true;
				} else {
					scr_Trigger(0);
					input_correct = false;
				}
				
				input_checking = false;
			}
		}
	}
} else if (move) {
	
	move_position = min(move_position + move_speed, move_goal);
	
	if (move_position == move_goal) {
		var warp = instance_create_depth(x, y, depth, obj_WarpDoor);
		warp.warp_room = rm_Temple_CrimsonCorridor;
		
		audio_play_sound(snd_Unlock, 0, false);
		move = false;
	}
}