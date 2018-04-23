/// @description Insert description here
// You can write your code in this editor
if (_isActive == true)
{
	draw_set_color(c_navy);
	draw_set_font(fnt_mainHeader);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(32 , 32, "Round " + string(obj_controller._round), 2, c_white, 4);
	draw_set_color(c_white);
	draw_set_font(fnt_mainText);
	draw_text(32, 104, "Choose cards to equip from your hand.\nAll card effects stack.\nOne card is drawn per turn.\nCards your enemy has equipped are shown.\nClick okay once done.");
	draw_set_color(make_color_rgb(229, 255, 252));
	draw_set_font(fnt_main);
	draw_text_outline(28, room_height - 80, "Hand", 2, c_black, 4);
	draw_text_outline(room_width - 320, room_height - 80, "Equipped", 2, c_black, 4);
	
	draw_sprite_ext(spr_deck, 1, 96, 574, .6, .6, 0, c_white, 1);
}