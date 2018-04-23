/// @description Get out
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, 1, 0, .25, x__, x, room_width + 367);

while(instance_number(obj_inGameCard) > 0)
{
	card = instance_find(obj_inGameCard, 0);
	with (card) instance_destroy();
}