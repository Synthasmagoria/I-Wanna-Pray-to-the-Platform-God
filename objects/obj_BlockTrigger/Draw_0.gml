///@descr Draw tiled

var width, height;
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);

for (var i = 0; i < image_xscale; i++) {
	for (var ii = 0; ii < image_yscale; ii++) {
		draw_sprite(sprite_index, image_index, x + width * i, y + height * ii);
	}
}