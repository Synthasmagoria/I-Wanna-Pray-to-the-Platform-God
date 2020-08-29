///@desc Initialize

camera = camera_create_view(0, 0, global.game_width, global.game_height);
object = obj_Player;

view_camera[0] = camera;
view_visible[0] = true;
view_enabled = true;

view_x_max = room_width - global.game_width;
view_y_max = room_height - global.game_height;
view_x_offset = -global.game_width / 2;
view_y_offset = -global.game_height / 2;