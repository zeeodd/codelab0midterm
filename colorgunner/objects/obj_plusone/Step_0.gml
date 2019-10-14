/// @description Code for triggering animation

if (triggered) {
	// Call animation function if triggered by external collision
	animatescore(obj_plusone);
	if (animdone) {
		// Reset once the animation finishes
		triggered = false;
	}
}