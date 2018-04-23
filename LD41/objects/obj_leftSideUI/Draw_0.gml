/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x + 182, y + 288, floor(obj_controller._timer/60));