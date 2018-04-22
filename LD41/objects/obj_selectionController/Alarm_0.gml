/// @description Draw cards
// You can write your code in this editor

instance_create_layer(room_width - 96, 96, "TopLevelUI", obj_startRoundOk);

//Add any cards in equipped back into main deck
while(deck_size(_equipped) > 0)
{
	add_card_to_deck(_deck, remove_top_card_from_deck(_equipped));
}

//Draw
shuffle_deck(_deck);

if (_round == 1)
{
	for(i = 0; i < 5; i++)
	{
		card = instance_create_layer(96, 640, "TopLevelUI", obj_roundStartCard);
		card._card = remove_top_card_from_deck(_deck);
		add_card_to_deck(_hand, card._card);
		card._delay = 4 - i;
		card._destinationX = 96 + 128*deck_size(_hand);
		card._index = deck_size(_hand) - 1;
	}
}
else
{
	for(i = 0; i < 2; i++)
	{
		card = instance_create_layer(96, 640, "TopLevelUI", obj_roundStartCard);
		card._card = remove_top_card_from_deck(_deck);
		add_card_to_deck(_hand, card._card);
		card._delay = 4 - i;
		card._destinationX = 96 + 128*deck_size(_hand);
		card._index = deck_size(_hand) - 1;
	}
}