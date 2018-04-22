/// @description Insert description here
// You can write your code in this editor

_rightBoundaryX = room_width/2 + 320;
_leftBoundaryX = room_width/2 - 320;

//Used decks
_playerEquippedDeck = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
_enemyDeck = instance_create_layer(0, 0, "ControllerInstances", obj_deck);

//List of attached weapons
_weapons = ds_list_create();

//Test
testBull = instance_create_layer(0, 0, "ControllerInstances", obj_sonicContainer);
testBull._level = 1;

ds_list_add(_weapons, testBull);

//UI
instance_create_layer(-363, 0, "OverlayUI", obj_leftSideUI);
instance_create_layer(room_width + 363, 0, "OverlayUI", obj_rightSideUI);