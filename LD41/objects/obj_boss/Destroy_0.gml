/// @description Insert description here
// You can write your code in this editor

while (instance_number(obj_bossBullet) > 0)
{
	inst = instance_find(obj_bossBullet, 0);
	with (inst) instance_destroy();
}

while (instance_number(obj_bossModule) > 0)
{
	inst = instance_find(obj_bossModule, 0);
	with (inst) instance_destroy();
}