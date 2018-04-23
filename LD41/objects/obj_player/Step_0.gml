/// @description Control the ship
// You can write your code in this editor

var keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
var keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
var keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
var keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
var fire = keyboard_check(ord("Z")) || keyboard_check(ord("J"));
var xMovement = 0, yMovement = 0;

if (_controllable)
{
	
	/*
	Keypress checks for movement
	*/
	if (keyLeft)
	{
		xMovement = -(_movementSpeed + _movementSpeedModifier);
		_playerState = playerShipStates.moving;
	}

	if (keyRight)
	{
		xMovement = (_movementSpeed + _movementSpeedModifier);
		_playerState = playerShipStates.moving;
	}
	
	if (keyUp)
	{
		yMovement = -(_movementSpeed + _movementSpeedModifier);
		_playerState = playerShipStates.moving;
	}
	
	if (keyDown)
	{
		yMovement = (_movementSpeed + _movementSpeedModifier);
		_playerState = playerShipStates.moving;
	}

	if (((!keyLeft) && (!keyRight)) || ((keyLeft) && (keyDown)))
	{
			_playerState = playerShipStates.static;
	}
	
	/*
	Shooting
	*/
	var i;
	if (fire)
	{
		for(i = 0; i < ds_list_size(obj_controller._weapons); i++)
		{
			if (alarm[i] < 0)
			{
				var item = ds_list_find_value(obj_controller._weapons, i);
				var inst = instance_create_layer(x, y, "Bullets", obj_bulletSpawner);
				inst._level = item._level;
				inst._bulletObj = item._bulletObj;
				alarm[i] = item._fireRate;
			}
		}
	}
	
//End of controllable
}


//Move + anims
if (xMovement < 0)
{
	image_xscale = -1;
	image_index = 1;
}
else if (xMovement > 0)
{
	image_xscale = 1;
	image_index = 1;
}
else if (xMovement == 0)
{
	image_xscale = 1;
	image_index = 0;
}
	
if ((x + xMovement) < (obj_controller._rightBoundaryX)) && ((x + xMovement) > (obj_controller._leftBoundaryX))
	x += xMovement;
	
if (((y + yMovement) < (room_height - 28)) && ((y + yMovement) > 28))
	y += yMovement;