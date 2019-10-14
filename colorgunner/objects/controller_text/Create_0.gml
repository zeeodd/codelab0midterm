/// @description Create the necessary text vars

// Universal speed
spd = room_speed / 10

// Text and text control vards
text = "> Captain,";
text_speed = spd;

// Vars needed in the draw/step events
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

//=== TEXT 2 === 
text2 = "> Enter hyperdrive.";
text_speed2 = spd;

text_displayed2 = "";
text_length2 = -1;
index2 = 0;
cooldown2 = text_speed2;

//=== TEXT 3 === 
text3 = "> Collect colored stones...";
text_speed3 = spd;

text_displayed3 = "";
text_length3 = -1;
index3 = 0;
cooldown3 = text_speed3;

//=== TEXT 4 === 
text4 = "> ...with same-colored blasts.";
text_speed4 = spd;

text_displayed4 = "";
text_length4 = -1;
index4 = 0;
cooldown4 = text_speed4;

//=== TEXT 5 === 
text5 = "> Switch colors with [1] [2] [3].";
text_speed5 = spd;

text_displayed5 = "";
text_length5 = -1;
index5 = 0;
cooldown5 = text_speed5;

//=== TEXT 6 === 
text6 = "> Move with [<] [>]. Fire with [SPACE].";
text_speed6 = spd;

text_displayed6 = "";
text_length6 = -1;
index6 = 0;
cooldown6 = text_speed6;

//=== TEXT 7 === 
text7 = "> The universe is counting on you.";
text_speed7 = spd;

text_displayed7 = "";
text_length7 = -1;
index7 = 0;
cooldown7 = text_speed7;

// Completion bools
text1done = false;
text2done = false;
text3done = false;
text4done = false;
text5done = false;
text6done = false;
text7done = false;