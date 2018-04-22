/// remove_top_card_from_deck(deck)
/// @param deck	deck object

var deck = argument0;
var card;

card = ds_list_find_value(deck._list, 0);
ds_list_delete(deck._list, 0);

return card;