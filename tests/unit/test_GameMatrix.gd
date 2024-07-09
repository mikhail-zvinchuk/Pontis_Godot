extends GutTest


class TestGameMatrix:
	extends GutTest

	var matrix = load("res://scripts/Abstractions/GameMatrix.gd")
	var _obj = null

	func before_each():
		_obj = matrix.new()

	func test_one_card_is_not_a_meld():
		#_owner, _open, _is_joker, _meld, _card_data, _score, _kind, _suit
		var card1 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Clubs 
		)
		assert_false(_obj.check_if_card_set_is_valid_meld([card1]), "No melds with one card")
		
	
	func test_same_kind_is_a_meld():
		#_owner, _open, _is_joker, _meld, _card_data, _score, _kind, _suit
		var card1 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Clubs 
		)
		var card2 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Hearts 
		)
		var card3 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Diamond 
		)
		assert_true(_obj.check_if_card_set_is_valid_meld([card1, card2, card3]), "Three Aces is a Meld")
		
		
	func test_same_suit_is_not_a_meld():
		
		#_owner, _open, _is_joker, _meld, _card_data, _score, _kind, _suit
		var card1 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Clubs 
		)
		var card2 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Two, 
		 Constants.Suits.Clubs 
		)
		var card3 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Four, 
		 Constants.Suits.Clubs 
		)
		assert_false(_obj.check_if_card_set_is_valid_meld([card1, card2, card3]), "No flushes in this game")

	func test_sequence_in_one_suit_is_a_meld():

		#_owner, _open, _is_joker, _meld, _card_data, _score, _kind, _suit
		var card1 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Ace, 
		 Constants.Suits.Clubs 
		)
		var card2 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Two, 
		 Constants.Suits.Clubs 
		)
		var card3 = Card.new(Constants.Owners.Deck,
		 false,
		 false,
		 null,
		 null,
		 0,
		 Constants.Kinds.Three, 
		 Constants.Suits.Clubs 
		)
		assert_true(_obj.check_if_card_set_is_valid_meld([card1, card2, card3]), "This is a legit sequence")
