/// @description Basically the chunk of the text controller

// Set the text length if it hasn't been set yet
if (text_length <= 0) {
   text_length = string_length(text);
}

if (index < text_length) {
   cooldown--;
  
   // Only add chars if not finished
   if (cooldown <= 0) {
       index++;
       text_displayed = string_copy(text, 1, index);
	   cooldown = text_speed;
   }
} else {
	text1done = true;
}

//=== TEXT 2 === 
if (text1done) {
	if (text_length2 <= 0) {
	   text_length2 = string_length(text2);
	}

	if (index2 < text_length2) {
	   cooldown2--;
  
	   if (cooldown2 <= 0) {
	       index2++;
	       text_displayed2 = string_copy(text2, 1, index2);
		   cooldown2 = text_speed2;
	   }
	} else {
		text2done = true;
	}
}

if (text2done) {
	if (keyboard_check(vk_shift)) {
		room_goto_previous();
	}
}