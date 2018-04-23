/// @description End 2
// You can write your code in this editor

with (obj_rightSideUI) event_perform(ev_other, ev_user1);
with (obj_leftSideUI) event_perform(ev_other, ev_user1);

with (obj_player) instance_destroy();

ds_list_clear(_weapons);
clear_deck(_playerEquippedDeck);
clear_deck(_bossDeck);

_round += 1;
with (obj_selectionController) event_perform(ev_other, ev_user0);

instance_create_layer(0, room_height + 325, "TopLevelUI2", obj_bottomUI);