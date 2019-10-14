/// @description Init vars

// Always have the image follow the crystal
depth = -1;
visible = false;
x = obj_crystal.x;
y = obj_crystal.y;

// These vars are for its animation
init_y = y;
final_y = init_y - 50;
animdone = false;
triggered = false;