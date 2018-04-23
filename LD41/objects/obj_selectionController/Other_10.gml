/// @description Init
// You can write your code in this editor

alarm[0] = 60; //Draw cards
alarm[2] = 60;

for(i = 0; i < deck_size(_hand); i++)
	{
		card = instance_create_layer(96 + 128*(i + 1), room_height + 128, "TopLevelUI", obj_roundStartCard);
		card._card = return_nth_card_in_deck(_hand, i);
		card._delay = 0;
		card._index = i;
		
		with (card) event_perform(ev_other, ev_user2);
	}

instance_create_layer(room_width/2, room_height - 52, "TopLevelUI", obj_startRoundOk);

instance_create_layer(room_width/2, 100, "BossLevel", obj_boss);

//Define boss
//test
clear_deck(_bossDeck);
decide_boss_config(obj_controller._round);

for(i = 0; i < deck_size(_bossDeck); i++)
{
	inst = instance_create_layer(room_width/2 - 150 + (i mod 4)*100, -128, "TopLevelUI", obj_roundStartBossCard);
	inst._destinationY = 240 + floor(i/4) * 100;
	inst._card = return_nth_card_in_deck(_bossDeck, i);
}