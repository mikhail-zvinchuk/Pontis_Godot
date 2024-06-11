# Kinds are classic kinds of cards as played in casion
enum Kinds{ Clubs, Diamond, Hearts, Spades }
enum Types{ Regular, Joker, Joker_Red, Joker_Black}

# This Enum represents cards avaliable in this database and 
# also supposes that png of a card can be found in this directory with a same name
enum {Clubs_1, Clubs_2, Clubs_3, Clubs_4, Clubs_5, Clubs_6, Clubs_7,Clubs_8,Clubs_9,Clubs_10,Clubs_11,Clubs_12,Clubs_13,
Diamond_1, Diamond_2, Diamond_3, Diamond_4,Diamond_5, Diamond_6, Diamond_7,Diamond_8,Diamond_9,Diamond_10,Diamond_11,Diamond_12,Diamond_13,
Hearts_1, Hearts_2, Hearts_3, Hearts_4, Hearts_5, Hearts_6, Hearts_7,Hearts_8,Hearts_9,Hearts_10,Hearts_11,Hearts_12,Hearts_13,
Spades_1, Spades_2, Spades_3, Spades_4, Spades_5, Spades_6, Spades_7,Spades_8,Spades_9,Spades_10,Spades_11,Spades_12,Spades_13,
Joker_Red, Joker_Black, Joker
}

const CardBacks = ['Back_Blue_1','Back_Blue_2','Back_Grey_1','Back_Grey_2','Back_Red_1','Back_Red_2']

# Card data: [ Type, Value, Kind, Name]
const DATA={
	Clubs_1:
		[Types.Regular, 1, Kinds.Clubs, "Clubs_1"],
	Clubs_2:
		[Types.Regular, 2, Kinds.Clubs, "Clubs_2"],
	Clubs_3:
		[Types.Regular, 3, Kinds.Clubs, "Clubs_3"],
	Clubs_4:
		[Types.Regular, 4, Kinds.Clubs, "Clubs_4"],
	Clubs_5:
		[Types.Regular, 5, Kinds.Clubs, "Clubs_5"],
	Clubs_6:
		[Types.Regular, 6, Kinds.Clubs, "Clubs_6"],
	Clubs_7:
		[Types.Regular, 7, Kinds.Clubs, "Clubs_7"],
	Clubs_8:
		[Types.Regular, 8, Kinds.Clubs, "Clubs_8"],
	Clubs_9:
		[Types.Regular, 9, Kinds.Clubs, "Clubs_9"],
	Clubs_10:
		[Types.Regular, 10, Kinds.Clubs, "Clubs_10"],
	Clubs_11:
		[Types.Regular, 11, Kinds.Clubs, "Clubs_11"],
	Clubs_12:
		[Types.Regular, 12, Kinds.Clubs, "Clubs_12"],
	Clubs_13:
		[Types.Regular, 13, Kinds.Clubs, "Clubs_13"],
	Diamond_1:
		[Types.Regular, 1, Kinds.Diamond, "Diamond_1"],
 	Diamond_2:
		[Types.Regular, 2, Kinds.Diamond, "Diamond_2"], 
	Diamond_3:
		[Types.Regular, 3, Kinds.Diamond, "Diamond_3"], 
	Diamond_4:
		[Types.Regular, 4, Kinds.Diamond, "Diamond_4"], 
	Diamond_5:
		[Types.Regular, 5, Kinds.Diamond, "Diamond_5"], 
	Diamond_6:
		[Types.Regular, 6, Kinds.Diamond, "Diamond_6"], 
	Diamond_7:
		[Types.Regular, 7, Kinds.Diamond, "Diamond_7"],
	Diamond_8:
		[Types.Regular, 8, Kinds.Diamond, "Diamond_8"],
	Diamond_9:
		[Types.Regular, 9, Kinds.Diamond, "Diamond_9"],
	Diamond_10:
		[Types.Regular, 10, Kinds.Diamond, "Diamond_10"],
	Diamond_11:
		[Types.Regular, 11, Kinds.Diamond, "Diamond_11"],
	Diamond_12:
		[Types.Regular, 12, Kinds.Diamond, "Diamond_12"],
	Diamond_13:
		[Types.Regular, 13, Kinds.Diamond, "Diamond_13"],
	Hearts_1:
		[Types.Regular, 1, Kinds.Hearts, "Hearts_1"],
	Hearts_2:
		[Types.Regular, 2, Kinds.Hearts, "Hearts_2"],
	Hearts_3:
		[Types.Regular, 3, Kinds.Hearts, "Hearts_3"],
	Hearts_4:
		[Types.Regular, 4, Kinds.Hearts, "Hearts_4"],
	Hearts_5:
		[Types.Regular, 5, Kinds.Hearts, "Hearts_5"],
	Hearts_6:
		[Types.Regular, 6, Kinds.Hearts, "Hearts_6"],
	Hearts_7:
		[Types.Regular, 7, Kinds.Hearts, "Hearts_7"],
	Hearts_8:
		[Types.Regular, 8, Kinds.Hearts, "Hearts_8"],
	Hearts_9:
		[Types.Regular, 9, Kinds.Hearts, "Hearts_9"],
	Hearts_10:
		[Types.Regular, 10, Kinds.Hearts, "Hearts_10"],
	Hearts_11:
		[Types.Regular, 11, Kinds.Hearts, "Hearts_11"],
	Hearts_12:
		[Types.Regular, 12, Kinds.Hearts, "Hearts_12"],
	Hearts_13:
		[Types.Regular, 13, Kinds.Hearts, "Hearts_13"],
	Spades_1:
		[Types.Regular, 1, Kinds.Spades, "Spades_1"],
	Spades_2:
		[Types.Regular, 2, Kinds.Spades, "Spades_2"],
	Spades_3:
		[Types.Regular, 3, Kinds.Spades, "Spades_3"],
	Spades_4:
		[Types.Regular, 4, Kinds.Spades, "Spades_4"],
	Spades_5:
		[Types.Regular, 5, Kinds.Spades, "Spades_5"],
	Spades_6:
		[Types.Regular, 6, Kinds.Spades, "Spades_6"],
	Spades_7:
		[Types.Regular, 7, Kinds.Spades, "Spades_7"],
	Spades_8:
		[Types.Regular, 8, Kinds.Spades, "Spades_8"],
	Spades_9:
		[Types.Regular, 9, Kinds.Spades, "Spades_9"],
	Spades_10:
		[Types.Regular, 10, Kinds.Spades, "Spades_10"],
	Spades_11:
		[Types.Regular, 11, Kinds.Spades, "Spades_11"],
	Spades_12:
		[Types.Regular, 12, Kinds.Spades, "Spades_12"],
	Spades_13:
		[Types.Regular, 13, Kinds.Spades, "Spades_13"],
	Joker_Red:
		[Types.Joker_Red, null, null, "Joker_Red"],
	Joker_Black:
		[Types.Joker_Black, null, null, "Joker_Black"],
	Joker:
		[Types.Joker, null, null, "Joker"],
}
