/// @description Add back
// You can write your code in this editor

/// @description Equip card
// You can write your code in this editor

//Create equipped
if (_clickable == true)
{
card = instance_create_layer(x, y, "TopLevelUI", obj_roundStartCard);
card._card = _card;
add_card_to_deck(obj_selectionController._hand, _card);
remove_nth_card_from_deck(obj_selectionController._equipped, _index);
card._destinationX = 96 + 128*deck_size(obj_selectionController._hand);
card._index = deck_size(obj_selectionController._hand) - 1;
card._delay = 0;

with (card) event_perform(ev_other, ev_user0);

//Remove cardHold
if (cardHold != -1)
{
	with (cardHold) event_perform(ev_other, ev_user0);
}

//Move all the others
for(j = 0; j < instance_number(obj_roundStartEquippedCard); j++)
{
	var checkingCard = instance_find(obj_roundStartEquippedCard, j);
	if (checkingCard._index > _index)
	{
		checkingCard._index -= 1;
		checkingCard._destinationX = checkingCard.x + 128;
		with (checkingCard) event_perform(ev_other, ev_user0);
	}
}

audio_play_sound(snd_card, 10, 0);

instance_destroy();
}