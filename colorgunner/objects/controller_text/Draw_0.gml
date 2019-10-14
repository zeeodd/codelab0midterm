/// @description Draw the text

// Set up text
draw_set_font(font0);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);

draw_text(x,y,text_displayed);

// Iterate through each line as the previous one finishes
if (text1done) {
	draw_text(x,y + 30,text_displayed2);
}

if (text2done) {
	draw_text(x,y + 130,text_displayed3);
}

if (text3done) {
	draw_text(x,y + 160,text_displayed4);
}

if (text4done) {
	draw_text(x,y + 260,text_displayed5);
}

if (text5done) {
	draw_text(x,y + 290,text_displayed6);
}

if (text6done) {
	draw_text(x,y + 390,text_displayed7);
}

// Only at the end add an option to continue
if (text7done) {
	draw_set_halign(fa_middle);
	draw_text(room_width/2, y + 450, "[SHIFT]");
	draw_set_halign(fa_left);
}