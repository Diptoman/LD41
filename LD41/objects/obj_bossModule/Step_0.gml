/// @description Insert description here
// You can write your code in this editor

_rotateSpeed = 1 + _level*.5 + _spread;

_angle += _rotateSpeed * _dir;
_angle = _angle mod 360;

image_angle = _angle - 90;

x = _bossRef.x + lengthdir_x(64, _angle);
y = _bossRef.y + lengthdir_y(64, _angle);