/// @description Round begin
// You can write your code in this editor
_roundIsGoingOn = true;

with (obj_rightSideUI) event_perform(ev_other, ev_user0);
with (obj_leftSideUI) event_perform(ev_other, ev_user0);

instance_create_layer(room_width/2, room_height + 64, "PlayerLevel", obj_player);

_timer = room_speed * 20;

//Attach weapons
for(i = 0; i < deck_size(_playerEquippedDeck); i++)
{
	card = return_nth_card_in_deck(_playerEquippedDeck, i);
	bull = -1;
	switch(card)
	{
		case cards.Blaster1:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_blasterContainer);
			bull._level = 1;
			break;
		case cards.Blaster2:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_blasterContainer);
			bull._level = 2;
			break;
		case cards.Blaster3:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_blasterContainer);
			bull._level = 3;
			break;
		case cards.Sonic1:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_sonicContainer);
			bull._level = 1;
			break;
		case cards.Sonic2:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_sonicContainer);
			bull._level = 2;
			break;
		case cards.Sonic3:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_sonicContainer);
			bull._level = 3;
			break;
		case cards.Homing1:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_homingContainer);
			bull._level = 1;
			break;
		case cards.Homing2:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_homingContainer);
			bull._level = 2;
			break;
		case cards.Homing3:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_homingContainer);
			bull._level = 3;
			break;
		case cards.Shotgun1:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_shotgunContainer);
			bull._level = 1;
			break;
		case cards.Shotgun2:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_shotgunContainer);
			bull._level = 2;
			break;
		case cards.Shotgun3:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_shotgunContainer);
			bull._level = 3;
			break;
		case cards.Bomber1:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_bomberContainer);
			bull._level = 1;
			break;
		case cards.Bomber2:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_bomberContainer);
			bull._level = 2;
			break;
		case cards.Bomber3:
			bull = instance_create_layer(0, 0, "ControllerInstances", obj_bomberContainer);
			bull._level = 3;
			break;
	}
	
	if (bull != -1)
	{
		ds_list_add(_weapons, bull);
	}
}

//Boss HP
_maxBossHP = 450 + _round*50;
_bossHP = _maxBossHP;