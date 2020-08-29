///@desc Create player

save = false;
player_spawned = false;
player_instance = 0;
player_x = x + sprite_get_xoffset(object_get_mask(obj_Player));
player_y = y + sprite_get_yoffset(object_get_mask(obj_Player));

if (!instance_exists(obj_Player)) {
	player_instance = instance_create_depth(player_x, player_y, global.player_depth, obj_Player);
	player_spawned = true;
}