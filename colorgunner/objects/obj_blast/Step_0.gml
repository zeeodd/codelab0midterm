/// @description Blasting code! Pew Pew!

// Move toward center of room if blasted
if (obj_gunner.blasted) {
	move_towards_point(room_width/2, room_height/2, blast_spd);
}

// Wait until the blast pieces are unifed to stop the animation
if (image_index == 4) {
	image_speed = 0;
}

if (place_meeting(x, y, obj_crystal)) {
	// If I place this instance_create_layer() line within this if-statement,
	// then I won't get that cool fade effect I accidentally stumbled upon...
	// So I decided to keep it.
	//if (!instance_exists(obj_plusone)) {
		//instance_create_layer(xstart, ystart, "Instances", obj_plusone);
	//}
	
	if (obj_crystal.image_blend == obj_crystal.color_blue && obj_blastswitch.blue) {
		instance_create_layer(xstart, ystart, "Instances", obj_plusone);
		obj_plusone.triggered = true;
		obj_crystal.image_speed = 0.8;
	} else if (obj_crystal.image_blend == obj_crystal.color_green && obj_blastswitch.green) {
		instance_create_layer(xstart, ystart, "Instances", obj_plusone);
		obj_plusone.triggered = true;
		obj_crystal.image_speed = 0.8;
	} else if (obj_crystal.image_blend == obj_crystal.color_red && obj_blastswitch.red) {
		instance_create_layer(xstart, ystart, "Instances", obj_plusone);
		obj_plusone.triggered = true;
		obj_crystal.image_speed = 0.8;
	}
	
}