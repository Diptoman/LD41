/// @description Add card
// You can write your code in this editor

//Create equipped
if (_clickable == true)
{
add_card_to_deck(obj_selectionController._hand, _card);

//Remove cardHold
if (cardHold != -1)
{
	with (cardHold) event_perform(ev_other, ev_user0);
}

with (obj_endRoundController) event_perform(ev_other, ev_user1);

audio_play_sound(snd_card, 10, 0);
}