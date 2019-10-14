/// @description Control gunner movement

// Keep track of rotations about init pos
if (angle >= 0) {
	rotations = floor(abs(angle)/360);
} else if (angle < 0) {
	rotations = -floor(abs(angle)/360);
}

image_angle = round_angle(angle);

// Always change x,y to rotation coords
// With hover function, it's going to vary
// First, divide into pos/neg
if (0 <= angle) {

	// Divide unit circle in 9 quadrants depending on the hover direction
	// Add (360 * rotations) to account for  movement in rotation multiples
	// Also change image_index depending on quadrant
	if (0 + (360 * rotations) <= angle && angle <= 22.5 + (360 * rotations)) { // Q1
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (22.5 + (360 * rotations) < angle && angle <= 67.5 + (360 * rotations)) { // Q2
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (67.5 + (360 * rotations) < angle && angle <= 112.5 + (360 * rotations)) { // Q3
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2;
		y = y2 - hover(-15,15,0.75,10);
	} else if (112.5 + (360 * rotations) < angle && angle <= 157.5 + (360 * rotations)) { // Q4
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (157.5 + (360 * rotations) < angle && angle <= 202.5 + (360 * rotations)) { // Q5
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 - hover(-15,15,0.75,10);
		y = y2;
	} else if (202.5 + (360 * rotations) < angle && angle <= 247.5 + (360 * rotations)) { // Q6
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (247.5 + (360 * rotations) < angle && angle <= 292.5 + (360 * rotations)) { // Q7
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2
		y = y2 + hover(-15,15,0.75,10);
	} else if (292.5 + (360 * rotations) < angle && angle <= 337.5 + (360 * rotations)) { // Q8
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (337.5 + (360 * rotations) < angle && angle <= 360 + (360 * rotations)) { // Q9
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	}

} else if (0 > angle) {

	if (0 + (360 * rotations) >= angle && angle >= -22.5 + (360 * rotations)) { // Q1
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (-22.5 + (360 * rotations) > angle && angle >= -67.5 + (360 * rotations)) { // Q2
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (-67.5 + (360 * rotations) > angle && angle >= -112.5 + (360 * rotations)) { // Q3
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2;
		y = y2 - hover(-15,15,0.75,10);
	} else if (-112.5 + (360 * rotations) > angle && angle >= -157.5 + (360 * rotations)) { // Q4
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (-157.5 + (360 * rotations) > angle && angle >= -202.5 + (360 * rotations)) { // Q5
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (-202.5 + (360 * rotations) > angle && angle >= -247.5 + (360 * rotations)) { // Q6
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (-247.5 + (360 * rotations) > angle && angle >= -292.5 + (360 * rotations)) { // Q7
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2
		y = y2 + hover(-15,15,0.75,10);
	} else if (-292.5 + (360 * rotations) > angle && angle >= -337.5 + (360 * rotations)) { // Q8
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (-337.5 + (360 * rotations) > angle && angle >= -360 + (360 * rotations)) { // Q9
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	}
	
}

// Blaster control - lots of aesthetic stuff here lol
if (keyboard_check(vk_space) && !blasted) {
	instance_destroy(obj_blast);
	instance_create_layer(obj_gunner.x, obj_gunner.y, "Instances", obj_blast);
	obj_blast.visible = 1;
	obj_blast.image_angle = round_angle(angle);
	obj_blast.blast_spd = move_over_time(x, y, room_width/2, room_height/2, 0.75);
	obj_blast.image_xscale = blast_init_scale;
	obj_blast.image_yscale = blast_init_scale;
	blasted = true;
}

// Make the blast look pretty
if (blasted) {
	obj_blast.image_xscale -= blast_delta_scale;
	obj_blast.image_yscale -= blast_delta_scale;
	if (obj_blast.image_xscale <= 0.35) {
		instance_destroy(obj_blast);
		blasted = false;
	}
}


// Keyboard check for movement
if (keyboard_check(vk_right)) {
	y = y2;
	x = x2;
	angle += ROTATE_SPD;
} else if (keyboard_check(vk_left)) {
	y = y2;
	x = x2;
	angle -= ROTATE_SPD;
}

// Update gunner pos
x2 = room_width/2 + lengthdir_x(RADIUS, angle);
y2 = room_height/2 + lengthdir_y(RADIUS, angle);