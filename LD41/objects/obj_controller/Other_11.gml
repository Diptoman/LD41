/// @description End
// You can write your code in this editor

obj_endRoundController._type = 2;
with (obj_endRoundController) event_perform(ev_other, ev_user0);

with (obj_rightSideUI) event_perform(ev_other, ev_user1);
with (obj_leftSideUI) event_perform(ev_other, ev_user1);

with (obj_player) instance_destroy();

ds_list_clear(_weapons);
clear_deck(_playerEquippedDeck);

with (obj_boss) event_perform(ev_other, ev_user0);