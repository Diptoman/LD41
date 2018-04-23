/// @description Insert description here
// You can write your code in this editor
alarm[1] = (90 - _level*3)/obj_controller._bossFiringRate;

if (obj_controller._roundIsGoingOn == true)
{

for(i = 0; i < 3 + _level; i++)
{
	bull = instance_create_layer(x, y, "BossBulletlevel", obj_bossHomingBullet);
	bull._level = _level;
	bull.direction = image_angle + 90 + i*90;
	bull._delay = i*(7 - _level);
}
}