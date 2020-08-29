///@desc Initialize Variables

hs = 0;
hs_run = 3 * global.fps_calculation;

vs = 0;
vs_max = 9.4 * global.fps_calculation;
vs_gravity = 0.4 * global.fps_calculation_squared;
vs_jump = -8.1 * global.fps_calculation;
vs_djump = -6.6 * global.fps_calculation;
vs_fall = 0.45;
vs_swim = 2.4 * global.fps_calculation;

djump_number = 1;
djump_index = 0;

situated = true;
running = false;
facing = 1;
frozen = false;

hitbox_xoffset = sprite_get_xoffset(mask_index);
hitbox_yoffset = sprite_get_yoffset(mask_index);
hitbox_x1 = sprite_get_bbox_left(mask_index) - hitbox_xoffset;
hitbox_y1 = sprite_get_bbox_top(mask_index) - hitbox_yoffset;
hitbox_x2 = sprite_get_bbox_right(mask_index) - hitbox_xoffset;
hitbox_y2 = sprite_get_bbox_bottom(mask_index) - hitbox_yoffset;