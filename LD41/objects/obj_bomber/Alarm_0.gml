/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

direction = 90;

_damage += (_level - 1) * 10;
image_xscale = 1 + ((_level - 1) / 10);
image_yscale = image_xscale;