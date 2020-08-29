///@desc Free surface / close file

if (surface_exists(box_surface)) {
	surface_free(box_surface);
}

if (file != -1) {
	file_text_close(file);
}