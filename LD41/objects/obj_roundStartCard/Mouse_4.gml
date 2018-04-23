/// @description Equip card
// You can write your code in this editor

//Create equipped
if (_clickable == true)
{
card = instance_create_layer(x, y, "TopLevelUI", obj_roundStartEquippedCard);
card._card = _card;
add_card_to_deck(obj_selectionController._equipped, _card);
remove_nth_card_from_deck(obj_selectionController._hand, _index);
card._destinationX = room_width -96 - 128*(deck_size(obj_selectionController._equipped) - 1);
card._index = deck_size(obj_selectionController._equipped) - 1;

//Remove cardHold
if (cardHold != -1)
{
	with (cardHold) event_perform(ev_other, ev_user0);
}

//Move all the others
for(j = 0; j < instance_number(obj_roundStartCard); j++)
{
	var checkingCard = instance_find(obj_roundStartCard, j);
	if (checkingCard._index > _index)
	{
		checkingCard._index -= 1;
		checkingCard._destinationX = checkingCard.x - 128;
		checkingCard._delay = 0;
		with (checkingCard) event_perform(ev_other, ev_user0);
	}
}

instance_destroy();
}