extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const CardSize = Vector2(125,175)
const CardBase = preload("res://scenes/CardBase.tscn")
const PlayerHand = preload("res://scripts/ParticipantsHand.gd")
var CardSelected = []
 
@onready var  Deck = $Deck

# Called when the node enters the scene tree for the first time.
func _ready():
	Deck.dealler = self
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func draw_card_from_deck():
	var card = Deck.draw_card()
	%PlayersField/ParticipantsHand.add_to_hand(card)
	


func _on_start_game_button_pressed():
	Deck.shuffle()
	

	#initial dealing
	for i in 5:
		var card = Deck.draw_card()
		#TODO Add animation of card movement
		%PlayersField/ParticipantsHand.add_to_hand(card)
		card = Deck.draw_card()
		%PlayersField3/ParticipantsHand.add_to_hand(card)
		card = Deck.draw_card()
		%PlayersField4/ParticipantsHand.add_to_hand(card)
		card = Deck.draw_card()
		%PlayersField2/ParticipantsHand.add_to_hand(card)
		
	
	var card = Deck.draw_card()
	$Pontis.add_card(card)
	
	pass # Replace with function body.
