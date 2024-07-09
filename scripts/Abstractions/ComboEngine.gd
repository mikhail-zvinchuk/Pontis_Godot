class_name CombiEngine extends Object

enum ComboDimension{
	Set,
	Sequence
}

enum ComboType{
	Seed,
	Addon
}

class Combo:
	var type = null
	var Dimension = null
	var valid = false
	var Composition = []



#Lists all possible combinations
func get_combo_list_from_card_collections(hand, field, oponent_fields, pontis) -> Array[Combo] :
	return Array[Combo]


func is_valid_combo(combo: Combo):
	pass

