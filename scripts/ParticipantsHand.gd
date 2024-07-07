extends Node2D

# This is the visual representation of participants hand and it's UI

signal card_ready_for_pontis(card)

@export var active_player = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_cards_in_hand():
	return $CardContainer.get_children()
	
func add_to_hand(card):
	%Deck.add_child(card)
	card.set_visible(true)
	var tween = get_tree().create_tween() 
	var delta_x =  $CardReciever.global_position.x 
	var delta_y =  $CardReciever.global_position.y 

	tween.tween_property(card, "global_position", Vector2(delta_x, delta_y),0.2)
	await tween.finished
	
	
	card.card_clicked.connect(card_click_handler)
	if active_player:
		card.toggle_disabled()
		card.reveal()
	
	card.reparent($CardContainer)
	
	
	
	
func put_to_pontis(card):
	card.toggle_disabled()
	card_ready_for_pontis.emit(card)
	pass

func lay_combo(_combo_list):
	pass
	
func card_click_handler(card):
	$CardContainer.remove_child(card)
	put_to_pontis(card)
