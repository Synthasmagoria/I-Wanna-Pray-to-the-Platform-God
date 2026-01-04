if (global.save_active[SAVE.ENDING] == 0) {
	file_start = 0;
	file_end = 2;
} else if (global.save_active[SAVE.ENDING] == 1) {
	file_start = 3;
	file_end = 4;
} else if (global.save_active[SAVE.ENDING] == 8) {
	file_start = 13;
	file_end = 15;
} else {
	instance_destroy();
}