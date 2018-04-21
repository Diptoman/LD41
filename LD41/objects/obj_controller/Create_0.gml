/// @description Insert description here
// You can write your code in this editor

_rightBoundaryX = room_width/2 + 320;
_leftBoundaryX = room_width/2 - 320;

//List of attached weapons
_weapons = ds_list_create();

//Test
testBull = instance_create_layer(0, 0, "ControllerInstances", obj_blasterContainer);
testBull._level = 2;

ds_list_add(_weapons, testBull);