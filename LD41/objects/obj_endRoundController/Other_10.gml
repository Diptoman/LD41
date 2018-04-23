/// @description Init
// You can write your code in this editor

//
for(i = 0; i < deck_size(obj_controller._bossDeck); i++)
{
		card = instance_create_layer(96 + 128*i, room_height + 128, "TopLevelUI", obj_roundEndCard);
		card._card = return_nth_card_in_deck(obj_controller._bossDeck, i);
		add_card_to_deck(_rewardDeck, card._card);
		card._delay = 0;
		card._index = i;
}
clear_deck(obj_controller._bossDeck);

instance_create_layer(0, room_height + 325, "TopLevelUI2", obj_bottomUI);