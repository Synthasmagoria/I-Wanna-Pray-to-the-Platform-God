///@desc Destroy sprite

if (sprite_exists(sprite)) {
	sprite_delete(sprite);
}

with (obj_Water) {
	visible = true;
}

global.game_playing = true;
