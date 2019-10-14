/// @description Draw the text

// set anything you want for nice text rendering
draw_set_font(font0);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x,y,text_displayed);
if (text1done) {
	draw_text(x,y + 30,text_displayed2);
}

if (text2done) {
	draw_set_halign(fa_middle);
	draw_text(room_width/2, y + 450, "[SHIFT]");
	draw_set_halign(fa_left);
}