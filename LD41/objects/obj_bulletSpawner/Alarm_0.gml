/// @description Insert description here
// You can write your code in this editor

switch(_bulletObj)
{
	case obj_blaster:
		inst = instance_create_layer(x, y, "Bullets", _bulletObj);
		inst._level = _level;
		break;
		
	case obj_sonic:
		for(i = 0; i < 1 + _level*2; i++)
		{
			inst = instance_create_layer(x, y, "Bullets", _bulletObj);
			inst.direction = 90 - 5 * _level + 5 * i;
			inst._level = _level;
		}
		break;
		
	case obj_homing:
		for(i = 0; i < _level; i++)
		{
			inst = instance_create_layer(x, y, "Bullets", _bulletObj);
			inst.direction = 90 - (_level - 1) * 15 + 30 * i;
			inst._level = _level;
		}
		break;
		
	case obj_bomber:
		inst = instance_create_layer(x, y, "Bullets", _bulletObj);
		inst._level = _level;
		break;
}

instance_destroy();