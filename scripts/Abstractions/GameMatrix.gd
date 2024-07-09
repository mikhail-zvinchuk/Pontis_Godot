extends Object

#cell values 
# Owner, On table, Is joker, Meld 

var diamonds = { 1: [],2: [],3: [],4: [],5: [],6: [],7: [],8: [],9: [],10: [],11: [],12: [],13: [] }
var hearts = {1: [],2: [],3: [],4: [],5: [],6: [],7: [],8: [],9: [],10: [],11: [],12: [],13: [] }
var clubs = {1: [],2: [],3: [],4: [],5: [],6: [],7: [],8: [],9: [],10: [],11: [],12: [],13: [] }
var spades = {1: [],2: [],3: [],4: [],5: [],6: [],7: [],8: [],9: [],10: [],11: [],12: [],13: [] }

var matrix = { "♦": diamonds, 
				"♥": hearts,
				"♣": clubs,
				"♠": spades,  }



enum Owners{
	Deck,
	Pontis,
	Player,
	Player2,
	Player3,
	Player4
}
	

enum MeldType{
	Suit,
	Kind
}

func check_if_card_set_is_valid_meld(cards):
	var meld = Meld.new()
	return meld.is_meld(cards)


class Meld:
	var type: MeldType =  MeldType.Kind
	var ends = []
	var cards = []
	var owner = null
	var extension_melds = []
	
	func is_meld(cards):
		if cards.size() >= 3:
			# checking for same kind
			var cards_of_same_kind = cards.filter(func(card): return card.kind == cards[0].kind).size()
			if cards_of_same_kind == cards.size():
				# this is meld of same kind
				type = MeldType.Kind
				return true
				
			var cards_of_same_suit = cards.filter(func(card): return card.suit == cards[0].suit).size()
			if cards_of_same_suit == cards.size():
				# this might be sequence of the same suit
				cards.sort_custom(card_comparator)
				var prev = null
				for card in cards:
					if prev != null:
						if prev.kind +1 != card.kind:
							return false
					prev = card
				type = MeldType.Suit
				return true
		return false
	
	func card_comparator(a: Card, b: Card):
		if a.kind < b.kind:
			return true
		return false   
	
	
	func find_melds(cards):
		pass
	
	func value():
		var sum = 0
		for card in cards:
			sum+= card.card_data.score
		return sum
	
class MeldRegistry:
	var matrix = { "♦": [], 
				"♥": [],
				"♣": [],
				"♠": [],  }
				
	func bind_melds(suit_existing, rand_existing, extension):
		pass
	
	func check_if_extension(meld: Meld):
		if meld.type == MeldType.Suit:
			for end in meld.ends: 
				var index = matrix[meld.cards[0].suit].find(end)
				if index != -1:
					bind_melds(meld.cards[0].suit,matrix[meld.cards[0].suit][index], meld )
			
