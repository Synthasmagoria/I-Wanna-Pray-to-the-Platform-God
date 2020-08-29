///@desc Follow

time++;

if (time / interval >= 1) {
	
	time -= interval;
	
	if (instance_exists(target)) {
		
		var dir, xx, yy;
		dir = round(point_direction(x, y, obj_Player.bbox_left, obj_Player.bbox_top) / 90) % 4;
		xx = x + ((dir == 0) - (dir == 2)) * step;
		yy = y + ((dir == 3) - (dir == 1)) * step;
		
		if (!place_meeting(xx, yy, obj_Block) && !place_meeting(xx, yy, object_index)) {
			x = xx;
			y = yy;
		}
	}
}