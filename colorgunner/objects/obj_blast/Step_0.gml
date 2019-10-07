/// @description Blasting code! Pew Pew!

// Move toward center of room if blasted
if (obj_gunner.blasted) {
	move_towards_point(room_width/2, room_height/2, blast_spd);
}

if (image_index == 4) {
	image_speed = 0;
}

if (place_meeting(x, y, obj_crystal)) {
	obj_crystal.image_speed = 0.8;
}