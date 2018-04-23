/// @description Move to next stage
// You can write your code in this editor

for(i = 0; i < ds_list_size(_selectedCards); i++)
{
	with (ds_list_find_value(_selectedCards, i)) event_perform(ev_other, ev_user1);
}
ds_list_clear(_selectedCards);

for(i = 0; i < instance_number(obj_deckSelectDeck); i++)
{
	deck = instance_find(obj_deckSelectDeck, i);
	with (deck) event_perform(ev_other, ev_user0);
}

with (obj_selectDeckOk) instance_destroy();

sel = instance_create_layer(0, 0, "ControllerInstances", obj_selectionController);
sel._deck = _selectedDeck;
instance_create_layer(0, 0, "ControllerInstances", obj_controller);
instance_create_layer(0, 0, "ControllerInstances", obj_endRoundController);

instance_destroy();