///@desc Draw pump motion

phase_time++;

if (phase_time / phase_length >= 1) {
	phase_index = (phase_index + 1 == phase_number) ? 0 : phase_index + 1;
	phase_time -= phase_length;
}

draw_set_alpha(draw_alpha);

var progress =  phase_time / phase_length;

switch (phase_index) {
	case 0:
		draw_set_color(draw_color_1);
		draw_rectangle(bbox_left, bbox_top, bbox_left + progress * sprite_width, bbox_bottom, false);
		break;
	
	case 1:
		draw_set_color(draw_color_2);
		draw_rectangle(bbox_left, bbox_top, bbox_left + progress * sprite_width, bbox_bottom, false);
		draw_set_color(draw_color_1);
		draw_rectangle(bbox_left + progress * sprite_width, bbox_top, bbox_right, bbox_bottom, false);
		break;
		
	case 2:
		draw_set_color(draw_color_2);
		draw_rectangle(bbox_left + progress * sprite_width, bbox_top, bbox_right, bbox_bottom, false);
		break;
}

draw_set_color(c_white);
draw_set_alpha(1.0);
