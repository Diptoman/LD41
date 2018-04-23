/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x + 182, y + 288, ceil(obj_controller._timer/60));

draw_set_color(c_navy);
draw_set_font(fnt_main);
draw_set_valign(fa_top);
draw_text_outline(x + 187 , y + 48, "Round " + string(obj_controller._round), 2, c_white, 4);

draw_set_font(fnt_mainDeck);
draw_set_color(c_white);
draw_text(x + 187, y + room_height - 200, "Arrows/WASD - Move\n\nZ/J - Fire");