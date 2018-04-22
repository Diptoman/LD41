/// @description Start Round
// You can write your code in this editor

with (obj_startRoundOk) instance_destroy();

for(i = 0; i < instance_number(obj_roundStartCard); i++)
{
	card = instance_find(obj_roundStartCard, i);
	with (card) event_perform(ev_other, ev_user1);
}

for(i = 0; i < instance_number(obj_roundStartEquippedCard); i++)
{
	card = instance_find(obj_roundStartEquippedCard, i);
	with (card) event_perform(ev_other, ev_user1);
}

obj_controller._playerEquippedDeck = _equipped;

with (obj_controller) event_perform(ev_other, ev_user0);