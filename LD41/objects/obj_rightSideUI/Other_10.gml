/// @description Get in
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, 1, 0, .25, x__, x, room_width - 367);

for (i = 0; i < deck_size(obj_controller._playerEquippedDeck); i++)
{
	card = instance_create_layer(x + 72 + (i mod 4)*72, y + room_height/2 + 104 + (floor(i/4))*108, "OverOverlayUI", obj_inGameCard);
	card._card = return_nth_card_in_deck(obj_controller._playerEquippedDeck, i);
	card._parent = id;
	card._parentX = 72 + (i mod 4)*72;
	card._parentY = room_height/2 + 104 + (floor(i/4))*108;
}

for (i = 0; i < deck_size(obj_controller._bossDeck); i++)
{
	card = instance_create_layer(x + 72 + (i mod 4)*72, y + 174 + (floor(i/4))*108, "OverOverlayUI", obj_inGameCard);
	card._card = return_nth_card_in_deck(obj_controller._bossDeck, i);
	card._parent = id;
	card._parentX = 72 + (i mod 4)*72;
	card._parentY = 174 + (floor(i/4))*108;
}