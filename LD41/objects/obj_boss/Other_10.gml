/// @description Explode
// You can write your code in this editor

alarm[2] = 60;

expl = instance_create_layer(x, y, "TopLevelUI", obj_expl);
expl.sprite_index = spr_explosion_boss;

visible = false;