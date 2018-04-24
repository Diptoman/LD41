/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
	draw_set_font(fnt_mainText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_outline(room_width/2 , room_height - 128, "Created for Ludum Dare 41 by\nDiptoman Mukherjee (Design, Programming)\nPranjal Bisht (Design, Art)\nJoel Montpetit (Audio)", 0, c_white, 0);
	
	draw_set_color(c_white);
	draw_set_font(fnt_mainDeck);
	draw_text_outline(room_width/2 , room_height/2 + 24, "Click anywhere to begin\n\nCurrent High-Score: " + string(global.highscore), 0, c_white, 0);
	
	draw_sprite(spr_title, 0, 0, 0);