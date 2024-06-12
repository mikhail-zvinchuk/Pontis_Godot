extends Node2D

# This is the visual representation of participants handand it's UI

signal card_ready_for_pontis(card)

@export var active_player = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func add_to_hand(card):
	card.card_clicked.connect(card_click_handler)
	if not active_player:
		card.toggle_disabled()
	$CardContainer.add_child(card)
	
func put_to_pontis(card):
	card_ready_for_pontis.emit(card)
	pass

func lay_combo(combo_list):
	pass
	
func card_click_handler(card):
	put_to_pontis(card)
