/// @description Insert description here
// You can write your code in this editor


_initSpeed = 12 - _level;
_minSpeed = 1;

if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y) - 30 + floor(random(60));
}