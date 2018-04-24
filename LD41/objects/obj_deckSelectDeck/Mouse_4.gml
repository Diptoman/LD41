/// @description Insert description here
// You can write your code in this editor
obj_initController._selectedDeck = _deck;

for(i = 0; i < instance_number(obj_deckSelectDeck); i++)
{
		(instance_find(obj_deckSelectDeck, i)).image_index = 0;
}

with (obj_initController) event_perform(ev_other, ev_user0);

image_index = 1;

audio_play_sound(snd_card, 10, 0);