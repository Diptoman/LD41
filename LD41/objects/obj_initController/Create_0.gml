/// @description Insert description here
// You can write your code in this editor
randomize();
//Define cards
enum cards
{
	Blaster,
	Sonic
}

//Create 4 pre-built decks
_deck1 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck1, cards.Blaster);
add_card_to_deck(_deck1, cards.Sonic);
add_card_to_deck(_deck1, cards.Blaster);
add_card_to_deck(_deck1, cards.Sonic);
add_card_to_deck(_deck1, cards.Blaster);
add_card_to_deck(_deck1, cards.Sonic);
add_card_to_deck(_deck1, cards.Blaster);
add_card_to_deck(_deck1, cards.Sonic);
add_card_to_deck(_deck1, cards.Blaster);
add_card_to_deck(_deck1, cards.Sonic);

_deck2 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);
add_card_to_deck(_deck2, cards.Sonic);

_deck3 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck3, cards.Blaster);
add_card_to_deck(_deck3, cards.Sonic);
add_card_to_deck(_deck3, cards.Blaster);
add_card_to_deck(_deck3, cards.Sonic);
add_card_to_deck(_deck3, cards.Blaster);
add_card_to_deck(_deck3, cards.Sonic);
add_card_to_deck(_deck3, cards.Blaster);
add_card_to_deck(_deck3, cards.Sonic);
add_card_to_deck(_deck3, cards.Blaster);
add_card_to_deck(_deck3, cards.Sonic);

_deck4 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck4, cards.Blaster);
add_card_to_deck(_deck4, cards.Sonic);
add_card_to_deck(_deck4, cards.Blaster);
add_card_to_deck(_deck4, cards.Sonic);
add_card_to_deck(_deck4, cards.Blaster);
add_card_to_deck(_deck4, cards.Sonic);
add_card_to_deck(_deck4, cards.Blaster);
add_card_to_deck(_deck4, cards.Sonic);
add_card_to_deck(_deck4, cards.Blaster);
add_card_to_deck(_deck4, cards.Sonic);

//Create deck selects
inst = instance_create_layer(room_width / 2 - 400, room_height / 2 - 100, "TopLevelUI", obj_deckSelectDeck);
inst._deck = _deck1;
inst.image_index = 1;
inst = instance_create_layer(room_width / 2 - 200, room_height / 2 - 100, "TopLevelUI", obj_deckSelectDeck);
inst._deck = _deck2;
inst = instance_create_layer(room_width / 2 - 400, room_height / 2 + 50, "TopLevelUI", obj_deckSelectDeck);
inst._deck = _deck3;
inst = instance_create_layer(room_width / 2 - 200, room_height / 2 + 50, "TopLevelUI", obj_deckSelectDeck);
inst._deck = _deck4;

//Other vars
_selectedDeck = _deck1;
_selectedCards = ds_list_create();
event_perform(ev_other, ev_user0);

instance_create_layer(room_width - 96, 96, "TopLevelUI", obj_selectDeckOk);