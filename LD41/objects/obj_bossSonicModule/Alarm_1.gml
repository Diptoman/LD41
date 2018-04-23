/// @description Insert description here
// You can write your code in this editor

if (obj_controller._roundIsGoingOn == true)
{
bull = instance_create_layer(x, y, "BossBulletlevel", obj_bossBlasterBullet);
bull._level = _level;
bull.direction = image_angle + 90;
bull = instance_create_layer(x, y, "BossBulletlevel", obj_bossBlasterBullet);
bull._level = _level;
bull.direction = image_angle + 95;
bull = instance_create_layer(x, y, "BossBulletlevel", obj_bossBlasterBullet);
bull._level = _level;
bull.direction = image_angle + 85;

alarm[2] = 10;
alarm[3] = 20;


}
alarm[1] = (55 - _level*4)/obj_controller._bossFiringRate;