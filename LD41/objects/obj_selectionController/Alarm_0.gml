/// @description Draw cards
// You can write your code in this editor

//Add any cards in equipped back into main deck
while(deck_size(_equipped) > 0)
{
	add_card_to_deck(_deck, remove_top_card_from_deck(_equipped));
}

//Draw
shuffle_deck(_deck);

if (obj_controller._round == 1)
{
	for(i = 0; i < 5; i++)
	{
		card = instance_create_layer(96, 574, "TopLevelUI", obj_roundStartCard);
		card._card = remove_top_card_from_deck(_deck);
		add_card_to_deck(_hand, card._card);
		card._delay = 4 - i;
		card._destinationX = 96 + 128*deck_size(_hand);
		card._index = deck_size(_hand) - 1;
		
		with (card) event_perform(ev_other, ev_user0);
	}
	alarm[2] += 60;
}
else
{
	if (deck_size(_hand) < 8)
	{
		for(i = 0; i < 1; i++)
		{
			card = instance_create_layer(96, 574, "TopLevelUI", obj_roundStartCard);
			card._card = remove_top_card_from_deck(_deck);
			add_card_to_deck(_hand, card._card);
			card._delay = 1 - i;
			card._destinationX = 96 + 128*deck_size(_hand);
			card._index = deck_size(_hand) - 1;
		
			with (card) event_perform(ev_other, ev_user0);
		}
		alarm[2] += 0;
	}
}