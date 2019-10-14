/// @description Control the color switching

// Change sprite according to button press
if (keyboard_check(ord("1"))) {
	blue = true;
	green = false;
	red = false;
}

if (keyboard_check(ord("2"))) {
	blue = false;
	green = true;
	red = false;
}

if (keyboard_check(ord("3"))) {
	blue = false;
	green = false;
	red = true;
}

// Depending on which color, modigy the sprite to a selected one
if (blue) {
	
	if (switch_color == "blue") {
		image_index = 1;
	}
	
	if (switch_color == "green") {
		image_index = 2;
	}
	
	if (switch_color == "red") {
		image_index = 4;
	}
	
} else if (green) {

	if (switch_color == "blue") {
		image_index = 0;
	} else if (switch_color == "green") {
		image_index = 3;
	} else if (switch_color == "red") {
		image_index = 4;
	}
	
} else if (red) {

	if (switch_color == "blue") {
		image_index = 0;
	} else if (switch_color == "green") {
		image_index = 2;
	} else if (switch_color == "red") {
		image_index = 5;
	}

}