/// @description Insert description here
// You can write your code in this editor

enum playerShipStates
{
		static,
		moving
}
_playerState = playerShipStates.static;

//No anim
image_speed = 0;

alarm[8] = 15;
_controllable = false;
TweenFire(id, EaseOutQuad, 0, 1, 0, .25, y__, y, room_height - 96);