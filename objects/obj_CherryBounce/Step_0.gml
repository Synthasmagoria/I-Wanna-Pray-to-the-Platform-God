///@desc Bounce & move

// Bounce
hspeed *= place_meeting(x + hspeed, y, obj_Block) ? -1 : 1;
vspeed *= place_meeting(x, y + vspeed, obj_Block) ? -1 : 1;