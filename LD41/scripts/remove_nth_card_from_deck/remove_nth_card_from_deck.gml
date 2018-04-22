/// remove_nth_card_from_deck(deck, n)
/// @param deck	deck object

var deck = argument0;
var card;

card = ds_list_find_value(deck._list, argument1);
ds_list_delete(deck._list, argument1);

return card;