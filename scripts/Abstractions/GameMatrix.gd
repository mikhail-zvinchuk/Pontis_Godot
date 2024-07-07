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

class Card:
	var owner = Owners.Deck
	var Open = false
	var IsJoker = false
	var Meld = null
	var card_data = null
	# how much this card scores
	var score = 0 
	# How does this card comapre to others
	var kind = 0
	# What is the suit of this card
	

enum MeldType{
	Suit,
	Kind
}

class Meld:
	var type: MeldType =  MeldType.Kind
	var ends = []
	var cards = []
	var owner = null
	var extension_melds = []
	
	func is_meld(cards):
		if cards.count >= 3:
			# checking for same kind
			var cards_of_same_kind = cards.filter(func(card): return card.kind == cards[0].kind).count
			if cards_of_same_kind == cards.count:
				# this is meld of same kind
				type = MeldType.Kind
				return true
				
			var cards_of_same_suit = cards.filter(func(card): return card.suit == cards[0].suit).count
			if cards_of_same_suit == cards.count:
				# this might be sequence of the same suit
				cards.sort_custom(card_comparator)
				var prev = null
				for card in cards:
					if prev != null:
						if prev +1 != card:
							return false
					prev = card
				type = MeldType.Suit
				return true
		return false
	
	func card_comparator(a: Card, b: Card):
		if a.rank < b.rank:
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
			
