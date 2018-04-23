/// @description Insert description here
// You can write your code in this editor

_rightBoundaryX = room_width/2 + 320;
_leftBoundaryX = room_width/2 - 320;

//Used decks
_playerEquippedDeck = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
_bossDeck = instance_create_layer(0, 0, "ControllerInstances", obj_deck);

//List of attached weapons
_weapons = ds_list_create();

//UI
instance_create_layer(-367, 0, "OverlayUI", obj_leftSideUI);
instance_create_layer(room_width + 367, 0, "OverlayUI", obj_rightSideUI);

_roundIsGoingOn = false;