/// @description Explode
// You can write your code in this editor

alarm[2] = 60;

expl = instance_create_layer(x, y, "TopLevelUI", obj_expl);
expl.sprite_index = spr_explosion_boss;

visible = false;
for (i = 0; i < instance_number(obj_bossModule);i++)
{
	inst = instance_find(obj_bossModule, i);
	inst.visible = false;
}

audio_play_sound(snd_selfExplosion, 10, 0);