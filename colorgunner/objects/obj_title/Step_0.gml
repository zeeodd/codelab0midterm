/// @description Control its size oscillation

// Depending on the click counter, give the title some animation
if (controller_room.click_counter == 1) {
	if (image_alpha <= 1) {
		image_alpha += 0.025;
	}
} else if (controller_room.click_counter == 2) {
	if (step == 0) {
		++current_frame;
		image_xscale = ease_in(current_frame, 1.0, 0.5, max_frame);
		image_yscale = ease_in(current_frame, 1.0, 0.5, max_frame);
	} else {
		--current_frame;
		image_xscale = ease_in(current_frame, 1.0, 0.5, max_frame);
		image_yscale = ease_in(current_frame, 1.0, 0.5, max_frame);
	}
} else if (controller_room.click_counter == 3) {
	if (image_alpha >= 0) {
		image_alpha -= 0.025;
	}
}