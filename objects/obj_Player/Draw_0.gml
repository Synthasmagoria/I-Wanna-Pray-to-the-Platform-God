///@desc Draw player

// Set sprite
if (situated) {
	sprite_index = !running ? spr_PlayerIdle : spr_PlayerRun;
} else {
	sprite_index = vs < 0 ? spr_PlayerJump : spr_PlayerFall;
}

// Draw sprite
draw_sprite_ext(
	sprite_index,
	image_index,
	ceil(x),
	y,
	facing,
	1,
	0,
	c_white,
	1.0
);