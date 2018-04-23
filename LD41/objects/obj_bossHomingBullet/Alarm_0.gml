/// @description Insert description here
// You can write your code in this editor

finalX = x + lengthdir_x(64, direction);
finalY = y + lengthdir_y(64, direction);

TweenFire(id, EaseOutQuad, 0, 1, 0, 1, x__, x, finalX);
TweenFire(id, EaseOutQuad, 0, 1, 0, 1, y__, y, finalY);

alarm[1] = 60 + _delay;