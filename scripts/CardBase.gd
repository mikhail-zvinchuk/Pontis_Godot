extends MarginContainer

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
	$CardBack.texture = load(CardBackImage)
	$CardFront.texture = load(CardFrontImage)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	

func toggle_visibility():
	$CardBack.visible = !$CardBack.visible
	pass
	
