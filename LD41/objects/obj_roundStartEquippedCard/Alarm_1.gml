/// @description Insert description here
// You can write your code in this editor

switch(_card)
{
	case cards.Blaster:
		sprite_index = spr_card_blaster; break;
	case cards.Sonic:
		sprite_index = spr_card_sonic; break;
}

event_perform(ev_other, ev_user0);