/// @description Round begin
// You can write your code in this editor

with (obj_rightSideUI) event_perform(ev_other, ev_user0);
with (obj_leftSideUI) event_perform(ev_other, ev_user0);

instance_create_layer(room_width/2, room_height + 64, "PlayerLevel", obj_player);