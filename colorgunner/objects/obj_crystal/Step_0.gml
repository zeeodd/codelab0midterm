/// @description Control crystal

if (obj_backwave.start) {

	// Begin counting up to give player a little buffer
	frames++;
	
	// Set crystal visible
	visible = 1;

	// Begin scaling up the crystal
	image_xscale += delta_scale;
	image_yscale += delta_scale;

	// Rotate the crystal
	image_angle += rotate_spd;

	// Move toward the final pos at the calculated spd
	move_towards_point(final_x, final_y, spd);

	if (obj_crystal.image_index >= 8) {
		obj_crystal.image_speed = 0;
		obj_crystal.image_index = 8;
		instance_destroy(obj_crystal);
		instance_create_layer(xstart, ystart, "Instances", obj_crystal);
	}
	
	if (obj_crystal.image_index == 1) {
		global.pscore += 1;
		controller_sound.gembreaksfx = true;
	}


	// If outside the room, reset
	if (x < 0 - sprite_xoffset || 
		x > room_width + sprite_xoffset || 
		y < 0 - sprite_yoffset || 
		y > room_height + sprite_yoffset) {
		image_xscale = init_scale;
		image_yscale = init_scale;
		instance_destroy(obj_crystal);
		instance_create_layer(xstart, ystart, "Instances", obj_crystal);
	}

}