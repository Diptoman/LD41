/// @description End by timer
// You can write your code in this editor

obj_endRoundController._type = 1;
with (obj_endRoundController) event_perform(ev_other, ev_user0);

with (obj_rightSideUI) event_perform(ev_other, ev_user1);
with (obj_leftSideUI) event_perform(ev_other, ev_user1);

with (obj_player) instance_destroy();

ds_list_clear(_weapons);
clear_deck(_playerEquippedDeck);

with (obj_boss) instance_destroy();

/*
with (obj_rightSideUI) event_perform(ev_other, ev_user1);
with (obj_leftSideUI) event_perform(ev_other, ev_user1);

with (obj_player) instance_destroy();

ds_list_clear(_weapons);
clear_deck(_playerEquippedDeck);
clear_deck(_bossDeck);

with (obj_boss) instance_destroy();

_round += 1;
with (obj_selectionController) event_perform(ev_other, ev_user0);

instance_create_layer(0, room_height + 325, "TopLevelUI2", obj_bottomUI);