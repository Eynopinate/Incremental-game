# UpgradeManager.gd (Autoload Node)
extends Node

@export var upgrade_pool: Array[UpgradeResource] = []


func get_random_upgrade() -> Array[UpgradeResource]:
	# create a safe copy 
	var pool_copy = upgrade_pool.duplicate()
	# shuffle and randomized the option.
	pool_copy.shuffle()
	
	# return 3 option or less.
	var choosen_cards = pool_copy.slice(0,3)
	# create a master container.
	var final_list : Array[UpgradeResource] = []
	
	for card in choosen_cards :
		var card_copy = card.duplicate()
		
		for stats in card_copy.allowed_stats:
			
			var raw_rolled = randf_range(0.01 , 0.05)
			if randf() > 0.5:
				raw_rolled = raw_rolled * -1
			
			choosen_cards.rolled_effects[stats] = raw_rolled
		
		final_list.append(card_copy)
	return final_list
	 
