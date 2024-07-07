extends MarginContainer

signal card_clicked(card)

#vars
var CardName = null

# [Types.Joker_Red, null, null, "Joker_Red"],

var CardInfo = null

var CardBackName = "Back_Blue_1"
@onready
var CardBackImage = str("res://assets/cards/",CardBackName,".png")
var CardFrontImage = null
var revealed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	CardName = CardInfo[3]
	CardFrontImage = str("res://assets/cards/",CardInfo[3],".png")
	$Card.texture_disabled = load(CardBackImage)
	$Card.texture_normal = load(CardBackImage)
	toggle_disabled()

func toggle_disabled():
	$Card.disabled = !$Card.disabled
	pass

func reveal():
	if not revealed:
		revealed = true
		$Card.texture_disabled = load(CardFrontImage)
		$Card.texture_normal = load(CardFrontImage)


func _on_texture_button_pressed():
	card_clicked.emit(self)


func _on_card_mouse_entered():
	scale = Vector2(1.1,1.1) 


func _on_card_mouse_exited():
	scale = Vector2(1,1) 
