extends MarginContainer

signal card_clicked(card)

#vars
var CardName = null

# [Types.Joker_Red, null, null, "Joker_Red"],

var CardInfo = null

var CardBackName = "Back_Blue_1"
@onready
var CardBackImage = str("res://assets/cards/",CardBackName,".png")

# Called when the node enters the scene tree for the first time.
func _ready():
	CardName = CardInfo[3]
	var CardFrontImage = str("res://assets/cards/",CardInfo[3],".png")
	$Card.texture_disabled = load(CardBackImage)
	$Card.texture_normal = load(CardFrontImage)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	

func toggle_disabled():
	$Card.disabled = !$Card.disabled
	pass



func _on_texture_button_pressed():
	card_clicked.emit(self)
