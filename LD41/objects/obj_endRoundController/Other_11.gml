/// @description End Round
// You can write your code in this editor

for(i = 0; i < instance_number(obj_roundEndCard); i++)
{
	card = instance_find(obj_roundEndCard, i);
	with (card) event_perform(ev_other, ev_user1);
}


obj_controller._round += 1;
with (obj_selectionController) event_perform(ev_other, ev_user0);