/// @description Init
// You can write your code in this editor

//
if (_type == 2)
{


for(i = 0; i < deck_size(obj_controller._bossDeck); i++)
{
		card = instance_create_layer(96 + 128*i, room_height + 128, "TopLevelUI", obj_roundEndCard);
		card._card = return_nth_card_in_deck(obj_controller._bossDeck, i);
		add_card_to_deck(_rewardDeck, card._card);
		card._delay = 0;
		card._index = i;
}

card = instance_create_layer(96 + 128*i, room_height + 128, "TopLevelUI", obj_roundEndCard);
card._card = choose(cards.Sabotage, cards.FireRate1, cards.Speed1, cards.SlowRate1, cards.PlusTime1, cards.MinusTime1);
add_card_to_deck(_rewardDeck, card._card);
card._delay = 0;
card._index = i;

		
obj_controller._score += 2000;
}
else
{
	instance_create_layer(room_width/2, room_height - 52, "TopLevelUI", obj_endRoundOk);
}
clear_deck(obj_controller._bossDeck);

instance_create_layer(0, room_height + 325, "TopLevelUI2", obj_bottomUI);

_isActive = true;

obj_controller._score += obj_controller._round * 1000 + floor(obj_controller._timer / 60) * 100;