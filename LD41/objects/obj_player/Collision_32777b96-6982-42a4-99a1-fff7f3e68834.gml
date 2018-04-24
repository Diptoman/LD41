/// @description Insert description here
// You can write your code in this editor

if (visible == true)
{
alarm[9] = 60;
_controllable = false;
expl = instance_create_layer(x, y, "TopLevelUI", obj_expl);
expl.sprite_index = spr_explosion_player;
audio_play_sound(snd_explosion, 10, 0);
}

visible = false;