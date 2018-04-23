/// @description Insert description here
// You can write your code in this editor
_isActive = true;
if (_isActive == true)
{
	draw_set_color(c_navy);
	draw_set_font(fnt_mainHeader);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(32 , 32, "Game Over", 2, c_white, 4);
	draw_set_color(c_white);
	draw_set_font(fnt_mainText);
	draw_text(32, 104, "Click anywhere to go back to menu.");
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fnt_mainDeck);
	draw_text_outline(room_width/2, room_height/2 - 100, "Final Score: " + string(obj_controller._score), 2, c_black, 4);
}