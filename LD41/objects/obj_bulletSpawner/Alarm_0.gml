/// @description Insert description here
// You can write your code in this editor

switch(_bulletObj)
{
	case obj_blaster:
		inst = instance_create_layer(x, y, "Bullets", _bulletObj);
		inst._level = _level;
		break;
		
	case obj_sonic:
		for(i = 0; i < 3 + floor(_level / 2); i++)
		{
			inst = instance_create_layer(x, y, "Bullets", _bulletObj);
			inst.direction = 90 - 10 + ((20 / (3 + floor(_level / 2))) * i);
			//inst._level = _level;
		}
		break;
}

instance_destroy();