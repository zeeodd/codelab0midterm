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

//=== TEXT 3 === 
if (text2done) {
	if (text_length3 <= 0) {
	   text_length3 = string_length(text3);
	}

	if (index3 < text_length3) {
	   cooldown3--;
  
	   if (cooldown3 <= 0) {
	       index3++;
	       text_displayed3 = string_copy(text3, 1, index3);
		   cooldown3 = text_speed3;
	   }
	} else {
		text3done = true;
	}
}

//=== TEXT 4 === 
if (text3done) {
	if (text_length4 <= 0) {
	   text_length4 = string_length(text4);
	}

	if (index4 < text_length4) {
	   cooldown4--;
  
	   if (cooldown4 <= 0) {
	       index4++;
	       text_displayed4 = string_copy(text4, 1, index4);
		   cooldown4 = text_speed4;
	   }
	} else {
		text4done = true;
	}
}

//=== TEXT 5 === 
if (text4done) {
	if (text_length5 <= 0) {
	   text_length5 = string_length(text5);
	}

	if (index5 < text_length5) {
	   cooldown5--;
  
	   if (cooldown5 <= 0) {
	       index5++;
	       text_displayed5 = string_copy(text5, 1, index5);
		   cooldown5 = text_speed5;
	   }
	} else {
		text5done = true;
	}
}

//=== TEXT 6 === 
if (text5done) {
	if (text_length6 <= 0) {
	   text_length6 = string_length(text6);
	}

	if (index6 < text_length6) {
	   cooldown6--;
  
	   if (cooldown6 <= 0) {
	       index6++;
	       text_displayed6 = string_copy(text6, 1, index6);
		   cooldown6 = text_speed6;
	   }
	} else {
		text6done = true;
	}
}

//=== TEXT 7 === 
if (text6done) {
	if (text_length7 <= 0) {
	   text_length7 = string_length(text7);
	}

	if (index7 < text_length7) {
	   cooldown7--;
  
	   if (cooldown7 <= 0) {
	       index7++;
	       text_displayed7 = string_copy(text7, 1, index7);
		   cooldown7 = text_speed7;
	   }
	} else {
		text7done = true;
	}
}

// If last text is displayed and the shift key is hit, move to next room
if (text7done) {
	if (keyboard_check(vk_shift)) {
		room_goto_next();
	}
}