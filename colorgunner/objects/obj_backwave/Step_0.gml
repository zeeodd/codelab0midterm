/// @description Modify scaling over time

frames++;

if (frames >= room_speed * _delay) {
	
	visible = 1;
	
	image_xscale += delta_scale;
	image_yscale += delta_scale;

	if (image_xscale >= 12.0) {
		image_xscale = init_scale;
		image_yscale = init_scale;
	}
	
}