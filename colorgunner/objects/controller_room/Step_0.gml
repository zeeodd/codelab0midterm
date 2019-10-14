/// @description Control menu button presses

// Check for a mouse btn release + collision OR for the state of the animation
// This allows the code to iterate through despite the mouse click + coll being frame-dependant
if ( mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_btn) || animdone) {
	
	// Increment click counter if opacity animation finishes
	if (!animdone) {
		inst = instance_position(mouse_x, mouse_y, obj_btn);
		click_counter += 1;
	}
	
	// Set animdone to true so code can loop back through here
	animdone = true;
	click = true;
	
	// Only break the loop (animdone = false) if the button disappears
	if (click && animdone && inst.image_alpha >= 0) {
		inst.image_alpha -= 0.02;
		if (inst.image_alpha <= 0) {
			animdone = false;
			click = false;
			inst.x = 1000;
		}
	}
	
}

// Increment click counter for each button press
if (click_counter == 1) {
	obj_noise.image_speed = 5;
}

if (click_counter == 2) {
	obj_noise.image_speed = 10;
}

if (click_counter == 3) {
	obj_noise.image_speed = 30;
	frames++;
	
	if (frames >= room_speed * 1.5) {
		obj_noise.image_alpha -= 0.01;
	}
}

// Go to next room if background is fully opaque
if (instance_exists(obj_noise)) {

	if (obj_noise.image_alpha <= 0) {
		room_goto_next();
	}

}