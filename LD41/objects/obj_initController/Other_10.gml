/// @description Show cards in selected deck
// You can write your code in this editor

for(i = 0; i < ds_list_size(_selectedCards); i++)
{
	with (ds_list_find_value(_selectedCards, i)) event_perform(ev_other, ev_user1);
}
ds_list_clear(_selectedCards);

//Create and fill up Selected Cards
for(i = 0; i < deck_size(_selectedDeck); i++)
{
	var card = return_nth_card_in_deck(_selectedDeck, i);
	var inst = instance_create_layer(96 + i*128, room_height + 128, "TopLevelUI", obj_deckSelectCard);	
	inst._card = card;
	
	with (inst) event_perform(ev_other, ev_user0);
	
	ds_list_add(_selectedCards, inst);
}

_isActive = true;