/// @description Insert description here
// You can write your code in this editor
event_inherited();

image_angle = direction - 90;

if (_state == 2)
{
	if (instance_exists(obj_boss))
	{
		direction = point_direction(x, y, obj_boss.x, obj_boss.y);
	}
	
	if (_speed < _initSpeed)
	{
		_speed += .5;
	}
}
else if (_state == 1)
{
	if (_speed > _finalSpeed)
	{
		_speed -= .5;
	}
}

speed = _speed;// + (_level - 1);