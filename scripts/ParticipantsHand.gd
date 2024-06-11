extends Node2D

@export var active_player = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func add_to_hand(card):
	if active_player:
		card.toggle_visibility()
	$CardContainer.add_child(card)
	
func put_to_pontis(card):
	pass

func lay_combo(combo_list):
	pass
	
