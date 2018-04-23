/// @description Insert description here
// You can write your code in this editor

factor = 0;

if (obj_controller._roundIsGoingOn == true)
{
if (obj_controller._round < 20)
	factor = obj_controller._round * 2;
	
index = floor(random(4));

destinationX = ds_list_find_value(_stationPointsX, index);
destinationY = ds_list_find_value(_stationPointsY, index);

TweenFire(id, EaseOutQuad, 0, 1, 0, 1.5 / obj_controller._bossSpeed, x__, x, destinationX);
TweenFire(id, EaseOutQuad, 0, 1, 0, 1.5 / obj_controller._bossSpeed, y__, y, destinationY);
}
alarm[1] = 300 - floor(random(60)) - factor;