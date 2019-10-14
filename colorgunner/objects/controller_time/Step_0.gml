/// @description Decrement the timer

// Count down iff the game has started
if (obj_backwave.start) {
	countdown--;
	
	// Convert to a nice time
	time = round(countdown/room_speed);
	
	if (countdown <= 0) {
		room_goto_next();
	}
	
}