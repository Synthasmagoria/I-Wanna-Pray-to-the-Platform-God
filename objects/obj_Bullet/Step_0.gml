///@desc Move

// Destroy bullet
if (place_meeting(x, y, obj_Block) || x < 0 || x > room_width) {
	instance_destroy();
}