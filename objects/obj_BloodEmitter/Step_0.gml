///@desc Create blood

// Initialize arrays
if (initialize) {
	blood_x = array_create(blood_number_max);
	blood_y = array_create(blood_number_max);
	blood_hs = array_create(blood_number_max);
	blood_vs = array_create(blood_number_max);
	blood_vgravity = array_create(blood_number_max);
	blood_image = array_create(blood_number_max);
	
	initialize = false;
}

// Create blood
if (blood_number < blood_number_max) {
	for (var i = min(blood_rate, blood_number_max - blood_number); i > 0; i--) {
		blood_x[blood_number] = x;
		blood_y[blood_number] = y;
		blood_hs[blood_number] = random_range(-blood_speed_random, blood_speed_random);
		blood_vs[blood_number] = random_range(-blood_speed_random, blood_speed_random);
		blood_vgravity[blood_number] = blood_vgravity_base + random(blood_vgravity_random);
		blood_image[blood_number] = irandom(sprite_get_number(blood_sprite) - 1);
		
		blood_number++;
	}
}

// Change blood values
for (var i = 0; i < blood_number; i++) {
	blood_vs[i] = blood_vs[i] + blood_vgravity[i];
	blood_x[i] = blood_x[i] + blood_hs[i];
	blood_y[i] = blood_y[i] + blood_vs[i];
}