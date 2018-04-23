/// @description Insert description here
// You can write your code in this editor
randomize();
//Define cards
enum cards
{
	Blaster1,
	Blaster2,
	Blaster3,
	Blaster4,
	Blaster5,
	Sonic1,
	Sonic2,
	Sonic3,
	Sonic4,
	Sonic5,
	Homing1,
	Homing2,
	Homing3,
	Homing4,
	Homing5,
	Shotgun1,
	Shotgun2,
	Shotgun3,
	Shotgun4,
	Shotgun5,
	Bomber1,
	Bomber2,
	Bomber3,
	Bomber4,
	Bomber5,
	FireRate1,
	FireRate2,
	FireRate3,
	FireRate4,
	FireRate5,
	Speed1,
	Speed2,
	Speed3,
	Speed4,
	Speed5,
	Life1,
	Life2,
	Life3,
	Counter1,
	Counter2,
	Counter3,
	SlowSpeed1,
	SlowSpeed2,
	SlowSpeed3,
	SlowSpeed4,
	SlowSpeed5,
	SlowRate1,
	SlowRate2,
	SlowRate3,
	SlowRate4,
	SlowRate5,
	Minions1,
	Minions2,
	Minions3,
	PlusTime1,
	PlusTime2,
	PlusTime3,
	MinusTime1,
	MinusTime2,
	MinusTime3,
}

//Create 4 pre-built decks
_deck1 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck1, cards.Blaster1);
add_card_to_deck(_deck1, cards.Sonic1);
add_card_to_deck(_deck1, cards.Blaster1);
add_card_to_deck(_deck1, cards.Sonic1);
add_card_to_deck(_deck1, cards.Blaster1);
add_card_to_deck(_deck1, cards.Sonic1);
add_card_to_deck(_deck1, cards.Blaster1);
add_card_to_deck(_deck1, cards.Sonic1);
add_card_to_deck(_deck1, cards.Blaster1);
add_card_to_deck(_deck1, cards.Sonic1);

_deck2 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);
add_card_to_deck(_deck2, cards.Sonic1);

_deck3 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck3, cards.Blaster1);
add_card_to_deck(_deck3, cards.Sonic1);
add_card_to_deck(_deck3, cards.Blaster1);
add_card_to_deck(_deck3, cards.Sonic1);
add_card_to_deck(_deck3, cards.Blaster1);
add_card_to_deck(_deck3, cards.Sonic1);
add_card_to_deck(_deck3, cards.Blaster1);
add_card_to_deck(_deck3, cards.Sonic1);
add_card_to_deck(_deck3, cards.Blaster1);
add_card_to_deck(_deck3, cards.Sonic1);

_deck4 = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
add_card_to_deck(_deck4, cards.Blaster1);
add_card_to_deck(_deck4, cards.Sonic1);
add_card_to_deck(_deck4, cards.Blaster1);
add_card_to_deck(_deck4, cards.Sonic1);
add_card_to_deck(_deck4, cards.Blaster1);
add_card_to_deck(_deck4, cards.Sonic1);
add_card_to_deck(_deck4, cards.Blaster1);
add_card_to_deck(_deck4, cards.Sonic1);
add_card_to_deck(_deck4, cards.Blaster1);
add_card_to_deck(_deck4, cards.Sonic1);

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

instance_create_layer(room_width /2, room_height - 52, "TopLevelUI2", obj_selectDeckOk);

instance_create_layer(0, room_height + 325, "TopLevelUI2", obj_bottomUI);