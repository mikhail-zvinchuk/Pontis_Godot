class_name Card

var owner = Constants.Owners.Deck
var open = false
var is_joker = false
var meld = null
var card_data = null
# how much this card scores
var score = 0 
# How does this card comapre to others
var kind = 0
# What is the suit of this card
var suit = 0 

func _init(_owner, _open, _is_joker, _meld, _card_data, _score, _kind, _suit ):
	owner = _owner
	open = _open
	is_joker = _is_joker
	meld = _meld
	card_data = _card_data
	score = _score
	kind = _kind
	suit = _suit
