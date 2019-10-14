/// @description Draw the timer

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(font0);

draw_text(room_width/2, obj_timecontainer.y, string(time) + "s");