/// @description Control gunner movement

// Keep track of rotations about init pos
if (angle >= 0) {
	rotations = floor(abs(angle)/360);
} else if (angle < 0) {
	rotations = -floor(abs(angle)/360);
}

// Always change x,y to rotation coords
// With hover function, it's going to vary
// First, divide into pos/neg
if (0 <= angle) {

	// Divide unit circle in 9 quadrants depending on the hover direction
	// Add (360 * rotations) to account for  movement in rotation multiples
	// Also change image_index depending on quadrant
	if (0 + (360 * rotations) <= angle && angle <= 22.5 + (360 * rotations)) { // Q1
		image_index = 8; //2
		obj_gunnervfx.image_angle = 90;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 90; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (22.5 + (360 * rotations) < angle && angle <= 67.5 + (360 * rotations)) { // Q2
		image_index = 8; //3
		obj_gunnervfx.image_angle = 135;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 135; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (67.5 + (360 * rotations) < angle && angle <= 112.5 + (360 * rotations)) { // Q3
		image_index = 8; //4
		obj_gunnervfx.image_angle = 180;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 180; }
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2;
		y = y2 - hover(-15,15,0.75,10);
	} else if (112.5 + (360 * rotations) < angle && angle <= 157.5 + (360 * rotations)) { // Q4
		image_index = 8; //5
		obj_gunnervfx.image_angle = 225;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 225; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (157.5 + (360 * rotations) < angle && angle <= 202.5 + (360 * rotations)) { // Q5
		image_index = 8; //6
		obj_gunnervfx.image_angle = 270;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 270; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 - hover(-15,15,0.75,10);
		y = y2;
	} else if (202.5 + (360 * rotations) < angle && angle <= 247.5 + (360 * rotations)) { // Q6
		image_index = 8; //7
		obj_gunnervfx.image_angle = 315;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 315; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (247.5 + (360 * rotations) < angle && angle <= 292.5 + (360 * rotations)) { // Q7
		image_index = 8; //0
		obj_gunnervfx.image_angle = 360;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 360; }
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2
		y = y2 + hover(-15,15,0.75,10);
	} else if (292.5 + (360 * rotations) < angle && angle <= 337.5 + (360 * rotations)) { // Q8
		image_index = 8; //1
		obj_gunnervfx.image_angle = 405;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 405; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (337.5 + (360 * rotations) < angle && angle <= 360 + (360 * rotations)) { // Q9
		image_index = 8; //2
		obj_gunnervfx.image_angle = 90;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 90; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	}

} else if (0 > angle) {

	if (0 + (360 * rotations) >= angle && angle >= -22.5 + (360 * rotations)) { // Q1
		image_index = 8; //2
		obj_gunnervfx.image_angle = 90;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 90; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (-22.5 + (360 * rotations) > angle && angle >= -67.5 + (360 * rotations)) { // Q2
		image_index = 8; //1
		obj_gunnervfx.image_angle = 45;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 45; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (-67.5 + (360 * rotations) > angle && angle >= -112.5 + (360 * rotations)) { // Q3
		image_index = 8; //0
		obj_gunnervfx.image_angle = 0;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = 0; }
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2;
		y = y2 - hover(-15,15,0.75,10);
	} else if (-112.5 + (360 * rotations) > angle && angle >= -157.5 + (360 * rotations)) { // Q4
		image_index = 8; //7
		obj_gunnervfx.image_angle = -45;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -45; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y + VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 - hover(-15,15,0.75,10);
	} else if (-157.5 + (360 * rotations) > angle && angle >= -202.5 + (360 * rotations)) { // Q5
		image_index = 8; //6
		obj_gunnervfx.image_angle = -90;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -90; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	} else if (-202.5 + (360 * rotations) > angle && angle >= -247.5 + (360 * rotations)) { // Q6
		image_index = 8; //5
		obj_gunnervfx.image_angle = -135;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -135; }
		obj_gunnervfx.x = x - VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 - hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (-247.5 + (360 * rotations) > angle && angle >= -292.5 + (360 * rotations)) { // Q7
		image_index = 8; //4
		obj_gunnervfx.image_angle = -180;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -180; }
		obj_gunnervfx.x = x;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2
		y = y2 + hover(-15,15,0.75,10);
	} else if (-292.5 + (360 * rotations) > angle && angle >= -337.5 + (360 * rotations)) { // Q8
		image_index = 8; //3
		obj_gunnervfx.image_angle = -225;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -225; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y - VFX_OFFSET;
		x = x2 + hover(-15,15,0.75,10);
		y = y2 + hover(-15,15,0.75,10);
	} else if (-337.5 + (360 * rotations) > angle && angle >= -360 + (360 * rotations)) { // Q9
		image_index = 8; //2
		obj_gunnervfx.image_angle = -270;
		if (instance_exists(obj_blast)) { obj_blast.image_angle = -270; }
		obj_gunnervfx.x = x + VFX_OFFSET;
		obj_gunnervfx.y = y;
		x = x2 + hover(-15,15,0.75,10);
		y = y2;
	}
	
}

// TODO: STOP ROTATING EVERY FRAME

// Blaster control
if (keyboard_check(vk_space) && !blasted) {
	instance_destroy(obj_blast);
	instance_create_layer(obj_gunner.x, obj_gunner.y, "Instances", obj_blast);
	obj_blast.visible = 1;
	obj_blast.blast_spd = move_over_time(x, y, room_width/2, room_height/2, 0.75);
	obj_blast.image_xscale = blast_init_scale;
	obj_blast.image_yscale = blast_init_scale;
	blasted = true;
}

if (blasted) {
	obj_blast.image_xscale -= blast_delta_scale;
	obj_blast.image_yscale -= blast_delta_scale;
	if (obj_blast.image_xscale <= 0.35) {
		instance_destroy(obj_blast);
		blasted = false;
	}
}


var num = ceil((96 - 45) / 45 ) * 45 + 45
show_debug_message(string(num));


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