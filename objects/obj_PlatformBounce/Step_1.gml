///@desc Collisions

if (place_meeting(x + hspeed, y, obj_Block)) {
	hspeed *= -1;
}

if (place_meeting(x, y + vspeed, obj_Block)) {
	vspeed *= -1;
}
