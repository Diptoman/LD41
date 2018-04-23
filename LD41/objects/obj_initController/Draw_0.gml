/// @description Insert description here
// You can write your code in this editor

if (_isActive == true)
{
	draw_set_color(c_navy);
	draw_set_font(fnt_mainHeader);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(32 , 32, "Select Starting Deck", 2, c_white, 4);
	draw_set_color(c_white);
	draw_set_font(fnt_mainText);
	draw_text(32, 104, "Click on a deck to view its contents.\nHover over a card for detailed view.");
}