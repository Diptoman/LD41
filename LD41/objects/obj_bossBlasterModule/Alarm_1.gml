/// @description Insert description here
// You can write your code in this editor

if (obj_controller._roundIsGoingOn == true)
{
bull = instance_create_layer(x, y, "BossBulletlevel", obj_bossBlasterBullet);
bull._level = _level;
bull.direction = image_angle + 90;

}
alarm[1] = (15 - _level*3)/obj_controller._bossFiringRate;