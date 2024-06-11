extends TextureButton

var CardDatabase = preload("res://assets/cards/CardsDatabase.gd").new()
const CardBase = preload("res://scenes/CardBase.tscn")

var DeckComposition = {
CardDatabase.Clubs_1:[1],
CardDatabase.Clubs_2:[1],
CardDatabase.Clubs_3:[1],
CardDatabase.Clubs_4:[1],
CardDatabase.Clubs_5:[1],
CardDatabase.Clubs_6:[1],
CardDatabase.Clubs_7:[1],
CardDatabase.Clubs_8:[1],
CardDatabase.Clubs_9:[1],
CardDatabase.Clubs_10:[1],
CardDatabase.Clubs_11:[1],
CardDatabase.Clubs_12:[1],
CardDatabase.Clubs_13:[1],
CardDatabase.Diamond_1:[1],
CardDatabase.Diamond_2:[1],
CardDatabase.Diamond_3:[1],
CardDatabase.Diamond_4:[1],
CardDatabase.Diamond_5:[1],
CardDatabase.Diamond_6:[1],
CardDatabase.Diamond_7:[1],
CardDatabase.Diamond_8:[1],
CardDatabase.Diamond_9:[1],
CardDatabase.Diamond_10:[1],
CardDatabase.Diamond_11:[1],
CardDatabase.Diamond_12:[1],
CardDatabase.Diamond_13:[1],
CardDatabase.Hearts_1:[1],
CardDatabase.Hearts_2:[1], 
CardDatabase.Hearts_3:[1], 
CardDatabase.Hearts_4:[1],
CardDatabase.Hearts_5:[1], 
CardDatabase.Hearts_6:[1], 
CardDatabase.Hearts_7:[1],
CardDatabase.Hearts_8:[1],
CardDatabase.Hearts_9:[1],
CardDatabase.Hearts_10:[1],
CardDatabase.Hearts_11:[1],
CardDatabase.Hearts_12:[1],
CardDatabase.Hearts_13:[1],
CardDatabase.Spades_1:[1],
CardDatabase.Spades_2:[1],
CardDatabase.Spades_3:[1],
CardDatabase.Spades_4:[1],
CardDatabase.Spades_5:[1],
CardDatabase.Spades_6:[1],
CardDatabase.Spades_7:[1],
CardDatabase.Spades_8:[1],
CardDatabase.Spades_9:[1],
CardDatabase.Spades_10:[1],
CardDatabase.Spades_11:[1],
CardDatabase.Spades_12:[1],
CardDatabase.Spades_13:[1],
CardDatabase.Joker:[2],
}

var DeckCurrent = []
var DeckPrestine = []

var dealler = null



# Called when the node enters the scene tree for the first time.
func _ready():
	load_cards()
	pass # Replace with function body.

func draw_card():
	return DeckCurrent.pop_front()
	
func shuffle():
	pass
	
func current_size():
	return DeckCurrent.size()
	
func load_cards():
	for deck_entry in DeckComposition:
		var card = CardBase.instantiate()
		card.CardInfo = CardDatabase.DATA[deck_entry]
		for times in DeckComposition[deck_entry]:
			DeckCurrent.append(card)
	pass
 


func _on_pressed():
	if not DeckCurrent.is_empty():
		dealler.draw_card_from_deck()
