/// @description Modify scaling over time

// Begin counting
frames++;

// Start the backwave animation after each wave's specific delay
if (frames >= room_speed * _delay) {
	
	if (!start) { start = true; }
	
	visible = 1;
	
	image_xscale += delta_scale;
	image_yscale += delta_scale;

	// Reset after a certain scale
	if (image_xscale >= 12.0) {
		image_xscale = init_scale;
		image_yscale = init_scale;
	}
	
}