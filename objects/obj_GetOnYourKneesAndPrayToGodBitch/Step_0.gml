///@desc Collision

if (!touched && collision_circle(x, y, circle_radius, obj_Player, false, false)) {
	
	player_sprite = obj_Player.sprite_index;
	player_x = obj_Player.x;
	player_y = obj_Player.y;
	player_xoffset = obj_Player.hitbox_xoffset;
	player_yoffset = obj_Player.hitbox_yoffset;
	player_facing = obj_Player.facing;
	player_width = obj_Player.sprite_width;
	instance_destroy(obj_Player);
	
	touched = true;
	
	with (obj_Water) {
		visible = false;
	}
	
	with (obj_World) {
		if (audio_is_playing(sound_id)) {
			audio_stop_sound(sound_id);
		}
		sound_id = -1;
	}
	
	audio_play_sound(mus_Pray, 0, false);
	
	global.game_playing = false;
}

time += time_incr * touched;

shader_index += (shader_index + 1 < shader_number) && (shader_index < floor(time / pi2));

if (shader_index + 1 == shader_number && time > pi2 * shader_number) {
	var player = instance_create_depth(player_x, player_y, global.player_depth, obj_Player);
	player.frozen = true;
	
	var dialogue = instance_create_depth(0, 0, 0, obj_Dialogue);
	dialogue.file_start = 11;
	dialogue.file_end = 11;
	audio_play_sound(snd_Item, 0, false);
	
	scr_FlagSet(FLAG.RELIGIOUS);
	
	instance_destroy();
}