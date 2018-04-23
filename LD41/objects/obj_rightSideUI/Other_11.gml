/// @description Get out
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, 1, 0, .25, x__, x, room_width + 367);

for (i = 0; i < instance_number(obj_inGameCard); i++)
{
	card = instance_find(obj_inGameCard, i);
	with (card) instance_destroy();
}