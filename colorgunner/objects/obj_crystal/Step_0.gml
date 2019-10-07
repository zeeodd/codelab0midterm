/// @description Control crystal

// Begin counting up
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