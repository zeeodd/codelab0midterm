/// @description Blasting code! Pew Pew!

// Move toward center of room if blasted
if (obj_gunner.blasted) {
	move_towards_point(room_width/2, room_height/2, blast_spd);
}