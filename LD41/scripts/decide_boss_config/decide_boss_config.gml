/// decide_boss_config(round)
/// @param round Round number

var rnd = argument0;

var l, tempCard;

if (rnd > 12)
	rnd = 12

for(l = 0; l < 2 + floor(rnd / 2); l++)
{
	if (rnd < 3)
		tempCard = choose(cards.Blaster1, cards.Homing1, cards.Sonic1, cards.Bomber1);
	else if (rnd < 5)
		tempCard = choose(cards.Blaster1, cards.Homing1, cards.Sonic1, cards.Bomber1, cards.Blaster2, cards.Homing2, cards.Sonic2, cards.Bomber2);
	else if (rnd < 7)
		tempCard = choose(cards.Blaster2, cards.Homing2, cards.Sonic2, cards.Bomber2);
	else if (rnd < 10)
		tempCard = choose(cards.Blaster2, cards.Homing2, cards.Sonic2, cards.Bomber2, cards.Blaster3, cards.Homing3, cards.Sonic3, cards.Bomber3);
	else
		tempCard = choose(cards.Blaster3, cards.Homing3, cards.Sonic3, cards.Bomber3);
	
	add_card_to_deck(_bossDeck, tempCard);
}