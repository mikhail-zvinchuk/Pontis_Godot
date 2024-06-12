extends Object

var hand = null
var dealer = null
var type = null

enum PlayerTypes{
	HUMAN,
	NPC
}

signal finsihed_turn
signal finished_game


func _init(dealler, participant_hand, player_type):
	hand = participant_hand
	dealer = dealler
	type = player_type

	pass
# Turn consists of several choice groups
#  Draw card from the deck or from the pontis
#  - Deck draw choosen
#    - player can lay combinations
#    - player has to put card to the pontis
#  - Drawing from pontis
#       - Player can draw only the cards till the one that thy can lay 
#       - Player can't lay the cards from Pontis is they can't lay even one
#       - If all drawn cards from pontis were layed, player doesn't need to lay anything to the pontis
#       - If not a card has to be returned to pontis
func play_turn():
	match type:
		PlayerTypes.HUMAN:
			#TODO start timer, await input
            #TODO turn on the ui for the player
			pass
		PlayerTypes.NPC:
			#TODO
			make_npc_move() 

	#TODO: add functionality
	#finsihed_turn.emit()
	pass


func recieve_card(card):
	hand.add_to_hand(card)
	pass
	
	
func make_npc_move():
    #todo decide if draw from pontis or from deck
	var card_from_pontis = check_pontis_for_card_that_can_be_layed()

	if card_from_pontis:
		var cards_from_pontis = get_cards_from_pontis()
		lay_cards(cards_from_pontis)
		return_card(cards_from_pontis)
	else:
		recieve_card(dealer.draw_card())
		lay_cards(null)
		return_card(null)

	pass

func check_pontis_for_card_that_can_be_layed():
	#TODO add actual check
	return null

func get_cards_from_pontis():
	#TODO add retrival
	pass


func lay_cards(cards_from_pontis):
	#TODO add laying
	pass

func return_card(cards_from_pontis):
	#TODO add retrival
	pass
