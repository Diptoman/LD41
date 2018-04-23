/// @description Insert description here
// You can write your code in this editor
for(i = 0; i < deck_size(obj_selectionController._bossDeck); i++)
{
	card = return_nth_card_in_deck(obj_selectionController._bossDeck, i);
	switch(card)
	{
		case cards.Sonic1:
			inst = obj_bossSonicModule;
			lvl = 1;
			break;
		case cards.Sonic2:
			inst = obj_bossSonicModule;
			lvl = 2;
			break;
		case cards.Sonic3:
			inst = obj_bossSonicModule;
			lvl = 3;
			break;
		case cards.Blaster1:
			inst = obj_bossBlasterModule;
			lvl = 1;
			break;
		case cards.Blaster2:
			inst = obj_bossBlasterModule;
			lvl = 2;
			break;
		case cards.Blaster3:
			inst = obj_bossBlasterModule;
			lvl = 3;
			break;
		case cards.Homing1:
			inst = obj_bossHomingModule;
			lvl = 1;
			break;
		case cards.Homing2:
			inst = obj_bossHomingModule;
			lvl = 2;
			break;
		case cards.Homing3:
			inst = obj_bossHomingModule;
			lvl = 3;
			break;
		case cards.Bomber1:
			inst = obj_bossBomberModule;
			lvl = 1;
			break;
		case cards.Bomber2:
			inst = obj_bossBomberModule;
			lvl = 2;
			break;
		case cards.Bomber3:
			inst = obj_bossBomberModule;
			lvl = 3;
			break;
	}
	//
	module = instance_create_layer(x + lengthdir_x(64, (360 / (deck_size(obj_selectionController._bossDeck))) * i), y + lengthdir_y(64, (360 / (deck_size(obj_selectionController._bossDeck))) * i), "BossLevel", inst);
	module._angle = (360 / (deck_size(obj_selectionController._bossDeck))) * i;
	module._level = lvl;
	module.image_angle = module._angle - 90;
	module._bossRef = id;
}