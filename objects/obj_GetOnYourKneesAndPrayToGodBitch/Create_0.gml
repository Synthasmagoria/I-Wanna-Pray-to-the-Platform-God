///@desc Initialize

pi2 = pi * 2;

platform_sprite = spr_Platform_Pink;
platform_scale = 12;
platform_delay = pi2 * 2;
platform_x = global.game_width;
platform_y = global.game_height / 2 - sprite_get_height(spr_Platform_Pink) * platform_scale / 2;
platform_movex = -(global.game_width / 2 + sprite_get_width(spr_Platform_Pink) * platform_scale / 2);
platform_movetime = pi / 4;

surface = -1;
surface_scale = 16;
sprite = -1;

time = 0;
time_incr = 1 / global.setting[SETTING.FRAMERATE];

player_sprite = spr_PlayerIdle;
player_x = 0;
player_y = 0;
player_xoffset = 0;
player_yoffset = 0;
player_facing = 0;
player_width = 0;

rotation = 8;
scale = 16;

touched = false;

circle_radius = 64;
circle_alpha_min = 0.2;
circle_alpha_max = 0.4;
circle_color = make_color_hsv(128, 255, 255);

shader = [sh_Pray0, sh_Pray1, sh_Pray2];

shader_index = 0;
shader_number = array_length_1d(shader);
shader_uniform_time = -1;

if (scr_FlagCheck(FLAG.RELIGIOUS)) {
	instance_destroy();
	exit;
}
