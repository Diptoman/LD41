/// @description Insert description here
// You can write your code in this editor
_isActive = false;
_hand = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
_equipped = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
_bossDeck = instance_create_layer(0, 0, "ControllerInstances", obj_deck);
event_perform(ev_other, ev_user0);