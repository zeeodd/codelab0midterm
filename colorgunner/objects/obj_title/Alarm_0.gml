/// @description Oscillate with a timer

// Bounce between these two values
if (step == 0) {
	step = 1;
} else {
	step = 0;
}

alarm[0] = max_frame - 1;