extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const CardSize = Vector2(125,175)
const CardBase = preload("res://scenes/CardBase.tscn")
const PlayerHand = preload("res://scripts/ParticipantsHand.gd")
const Participant = preload("res://scripts/Abstractions/Participant.gd")
var CardSelected = []
 
@onready var  Deck = $Deck

var player_1 = null
var player_2 = null
var player_3 = null
var player_4 = null

var players = null
var current_player_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Deck.dealler = self
	player_1 = Participant.new(self, 
		%PlayersField/ParticipantsHand,
	 	Participant.PlayerTypes.HUMAN)
	player_1.finsihed_turn.connect(next_turn)
	player_1.finished_game.connect(game_finished)
	

	player_2 = Participant.new(self, 
		%PlayersField2/ParticipantsHand, 
	 	Participant.PlayerTypes.NPC)
	player_2.finsihed_turn.connect(next_turn)
	player_2.finished_game.connect(game_finished)

	player_3 = Participant.new(self, 
		%PlayersField3/ParticipantsHand,  
		Participant.PlayerTypes.NPC)
	player_3.finsihed_turn.connect(next_turn)
	player_3.finished_game.connect(game_finished)

	player_4 = Participant.new(self, 
		%PlayersField4/ParticipantsHand,  
		Participant.PlayerTypes.NPC)
	player_4.finsihed_turn.connect(next_turn)
	player_4.finished_game.connect(game_finished)

	players = [player_1, player_2, player_3, player_4]
	
	%Menu.start_new_game.connect(_on_start_game_button_pressed)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func draw_card_from_deck():
	var card = Deck.draw_card()
	if card:
		%PlayersField/ParticipantsHand.add_to_hand(card)


func draw_card():
	return Deck.draw_card()
	


func _on_start_game_button_pressed():
	%SettingsButton.set_visible(true)
	#Clean the board, shuffle the deck
	Deck.shuffle()
	


	#initial dealing
	for i in 5:
		for j in 4:
			var drawn_card = Deck.draw_card()
			#TODO Add animation of card movement
			players[j].recieve_card(drawn_card)
			await get_tree().create_timer(0.1).timeout
		
	#put card on pontis
	var card = Deck.draw_card()
	put_card_on_pontis(card)

	#end of dealing

	players[current_player_index].play_turn()
	pass


func next_turn():
	if current_player_index < players.size() - 1 :
		current_player_index += 1
	else :
		current_player_index = 0
	await get_tree().create_timer(0.2).timeout
	players[current_player_index].play_turn()
	
	pass


func game_finished():
	#TODO calculate score
	#TODO reset board
	pass

func put_card_on_pontis(card):
	$Pontis.add_card(card)
	pass
