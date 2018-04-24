/// @description Insert description here
// You can write your code in this editor

text4 = "";
text4 += "Round Completed: " + string(obj_controller._round) + " x 1000 = " + string(obj_controller._round * 1000) + "\n";


if (_type == 1)
{
	text1 = "Timed Out";
	text2 = "Press Okay to continue.";
	text3 = "No rewards";
}
if (_type == 2)
{
	text1 = "Boss Destroyed";
	text2 = "Choose a card to add to hand.";
	text3 = "";
	text4 += "Boss Defeated: 2000\n";
	text4 += "Time Bonus: " + string(floor(obj_controller._timer / 60)) + " x 100 = " + string(floor(obj_controller._timer/60) * 100) + "\n";
}

text4 += "\nCurrent Score: " + string(obj_controller._score);


if (_isActive == true)
{
	draw_set_color(c_navy);
	draw_set_font(fnt_mainHeader);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(32 , 32, text1, 2, c_white, 4);
	draw_set_color(c_white);
	draw_set_font(fnt_mainText);
	draw_text(32, 104, text2);
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	draw_set_halign(fa_center);
	draw_text_outline(room_width/2, room_height - 220, text3, 2, c_black, 4);
	draw_set_valign(fa_center);
	draw_set_font(fnt_mainDeck);
	draw_text_outline(room_width/2, room_height/2 - 100, text4, 2, c_black, 4);
	
	
	
	//draw_text_outline(room_width - 320, room_height - 80, "Equipped", 2, c_black, 4);
	
	//draw_sprite_ext(spr_deck, 1, 96, 574, .6, .6, 0, c_white, 1);
}