/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

cardHold = instance_create_layer(room_width + 200, room_height/2 - 100, "TopLevelUI", obj_cardBox);

cardHold.sprite_index = sprite_index;
cardHold.image_index = image_index;