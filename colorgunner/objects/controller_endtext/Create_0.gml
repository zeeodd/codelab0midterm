/// @description Create the necessary text vars

// THIS IS BASICALLY THE SAME AS CONTROLLER_TEXT
// THE DIFFERENCE IS THIS OBJ IS IN THE POST-GAME ROOM

audio_stop_all();
audio_play_sound(snd_end, 1, true);

// Universal speed
spd = room_speed / 10
stonecount = string(global.pscore);

// Text and text control vards
text = "> Mission success: " + stonecount + " stones collected.";
text_speed = spd;

// Vars needed in the draw/step events
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

//=== TEXT 2 === 
text2 = "> Rewind time to attempt again?";
text_speed2 = spd;

text_displayed2 = "";
text_length2 = -1;
index2 = 0;
cooldown2 = text_speed2;

// Completion bools
text1done = false;
text2done = false;