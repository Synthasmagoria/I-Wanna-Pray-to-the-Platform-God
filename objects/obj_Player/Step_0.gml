///@descr Calculate Movement

// The big switch
if (!frozen) {
	
// Reset horizontal speed
hs = 0;
situated = false;

// Horizontal speed
var orientation;
orientation = keyboard_check(global.button[BUTTON.RIGHT]) - keyboard_check(global.button[BUTTON.LEFT]);

hs += hs_run * orientation;
running = orientation != 0;
facing = running ? orientation : facing;

#region Platforms
var platform = collision_rectangle(
	bbox_left,
	bbox_top,
	bbox_right,
	bbox_bottom + max(vs, 1) + (y - floor(y)),
	obj_Platform,
	false,
	false
);

if (platform) {
	
	with (platform) {
		event_user(0);
	}
	
	hs += platform.hspeed;
	
	if (y < platform.y && 
		!(bbox_bottom < platform.y && vs < platform.vspeed) &&
		!place_meeting(x, platform.y - hitbox_y2 - 1, obj_Block)
	) {
		y = platform.y - hitbox_y2 - 1;
		vs = platform.vspeed;
		situated = true;
	}
}
#endregion

// Vertical gravity
vs = clamp(vs + vs_gravity, -vs_max, vs_max);

// Check for blocks
situated |= (place_meeting(x, y + 1, obj_Block) && (vs >= 0));

// refresh secondary jumps
djump_index *= !situated;

#region Swim
var water = instance_place(x, y, obj_Water);

if (water) {
	vs = min(vs, vs_swim);
	djump_index = water.object_index == obj_Water1 ? 0 : djump_index;
}
#endregion

#region Jump
if (keyboard_check_pressed(global.button[BUTTON.JUMP])) {
	if (situated || place_meeting(x, y, obj_Water1) || platform) {
		situated = false;
		djump_index = 0;
		vs = vs_jump;
		audio_play_sound(snd_Jump, 0, false);
	} else if (djump_index < djump_number || place_meeting(x, y, obj_Water2)) {
		djump_index++;
		vs = vs_djump;
		audio_play_sound(snd_Djump, 0, false);
	}
}
#endregion

// Dampen jump when jump button is released
vs = (keyboard_check_released(global.button[BUTTON.JUMP]) && (vs < 0)) ? vs * vs_fall : vs;

#region Shoot
if (keyboard_check_pressed(global.button[BUTTON.SHOOT])) {
	var bullet;
	bullet = instance_create_depth(x, y, depth, obj_Bullet);
	bullet.hspeed *= facing;
	audio_play_sound(snd_Shoot, 0, false);
}
#endregion

#region Block
if (place_meeting(x + hs, y + vs, obj_Block)) {
	
	var block;
	
	block = instance_place(x + hs, y, obj_Block);
	if (block) {
		x = hs < 0 ? block.bbox_right - hitbox_x1 + 1 : block.bbox_left - hitbox_x2 - 1;
		hs = 0;
	} else {
		x += hs;
		hs = 0;
	}
	
	block = instance_place(x, y + vs, obj_Block);
	if (block) {
		y = vs < 0 ? block.bbox_bottom - hitbox_y1 + 1 : block.bbox_top - hitbox_y2 - 1;
		vs = 0;
	}
}
#endregion

#region Death
if (place_meeting(x + hs, y + vs, obj_Killer) || keyboard_check_pressed(global.button[BUTTON.SUICIDE])) {
	scr_KillPlayer();
}
#endregion

// Movement
x += hs;
y += vs;
}