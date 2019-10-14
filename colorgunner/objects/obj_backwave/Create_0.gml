/// @description Initial vars

// Stop menu music, start gameplay music!
audio_stop_all();
audio_play_sound(snd_gameplay, 1, true);

// Keep waves centered
x = room_width/2;
y = room_width/2;

// Set them really small & invisible
init_scale = 0.1;
delta_scale = 0.15;
image_xscale = init_scale;
image_yscale = init_scale;
visible = 0;

// For setting up a delay
frames = 0;

// Bool to let everyone know when to start
start = false;