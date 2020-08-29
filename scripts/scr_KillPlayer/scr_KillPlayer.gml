///@desc Kill the player
///@func scr_KillPlayer()

global.save_active[SAVE.DEATH]++;
scr_SaveGame(SAVE.DEATH, SAVE.TIME);

instance_create_depth(x, y, global.player_blood_depth, obj_BloodEmitter);
instance_create_depth(0, 0, depth, obj_Gameover);

audio_play_sound(snd_Death, 0, false);
instance_destroy();