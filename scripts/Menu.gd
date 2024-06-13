extends Control

signal start_new_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_pressed():
	self.set_visible(false)
	$VBoxContainer/Back.set_visible(true)
	start_new_game.emit()
	pass # Replace with function body.


func _on_settings_pressed():
	pass # Replace with function body.


func _on_credits_pressed():
	pass # Replace with function body.


func _on_settings_button_pressed():
	self.set_visible(true)
	pass # Replace with function body.


func _on_back_pressed():
	self.set_visible(false)
	pass # Replace with function body.
