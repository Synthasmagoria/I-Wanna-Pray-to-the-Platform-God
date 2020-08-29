///@desc Warp

warp_touching = instance_exists(obj_Player) && rectangle_in_rectangle(obj_Player.bbox_left, obj_Player.bbox_top, obj_Player.bbox_right, obj_Player.bbox_bottom, bbox_left, bbox_top, bbox_right, bbox_bottom) == 1;

if (warp_touching && keyboard_check_pressed(global.button[BUTTON.UP])) {
	room_goto(warp_room);
	obj_Player.x += warp_xoffset;
	obj_Player.y += warp_yoffset;
}