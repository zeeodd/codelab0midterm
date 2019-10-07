/// @description Initial vars for crystal

// Every instance should be below the spaceship
depth = -1;

image_index = 0;
image_speed = 0;

// Randomize every instance seed
randomize();

// Pick a random angle
image_angle = random_range(0, 360);

// Center the crystal upon instantiation
x = room_width/2;
y = room_width/2;

// Calculate final pos outside of the room to go toward
x_comp = lengthdir_x(room_width, image_angle);
y_comp = lengthdir_y(room_width, image_angle);

final_x = x + x_comp;
final_y = y + y_comp;

// The rate with which to move to final pos outside of the room
spd = move_over_time(x, y, final_x, final_y, 5);

// The rate at which to spin the crystal for a cool effect
rotate_spd = 4;

// Scale vars
init_scale = 0.1;
delta_scale = 0.01;
image_xscale = init_scale;
image_yscale = init_scale;

// Set crytal invis at instantiation
visible = 0;

// Initialize time var
frames = 0;