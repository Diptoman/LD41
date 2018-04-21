/// @description Insert description here
// You can write your code in this editor

switch(_bulletObj)
{
	case obj_blaster:
		inst = instance_create_layer(x, y, "Bullets", obj_blaster);
		inst._level = _level;
		break;
}