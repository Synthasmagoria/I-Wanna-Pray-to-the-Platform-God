if (unsoftlock)
{
	unsoftlock = false;
	
	instance_destroy(obj_Player);
	instance_destroy(obj_PlayerStart);
	
	var
	dist = 0,
	mindist = 9000000,
	saveid = -1;
	
	with (obj_Save)
	{
		dist = point_distance(global.save[SAVE.X], global.save[SAVE.Y], x, y);
		
		if (dist < mindist)
		{
			mindist = dist;
			saveid = id;
		}
	}
	
	if (saveid != -1)
	{
		global.save[SAVE.X] = saveid.x + sprite_get_xoffset(spr_PlayerIdle);
		global.save[SAVE.Y] = saveid.y + sprite_get_yoffset(spr_PlayerIdle);
		scr_WriteGame(save_file);
		audio_play_sound(snd_Unlock, 0, false);
	}
	else
	{
		audio_play_sound(snd_Decline, 0, false);
	}
	
	room_goto(rm_Unsoftlocker);
}