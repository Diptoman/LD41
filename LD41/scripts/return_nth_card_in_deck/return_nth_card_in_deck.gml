/// return_nth_card_in_deck(deck, n)
/// @param deck	deck object

var deck = argument0;
var card;

card = ds_list_find_value(deck._list, argument1);

return card;