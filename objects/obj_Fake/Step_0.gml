///@desc Collide

image_alpha = place_meeting(x, y, obj_Player) ? max(image_alpha - alpha_incr, 0.0) :  min(image_alpha + alpha_incr, 1.0);