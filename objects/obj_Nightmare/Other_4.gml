///@desc Free surface

if (room != room_origin) {
	if (surface_exists(surface)) {
		surface_free(surface);
	}
	
	instance_destroy();
}