class_name Upgrade_Pool
extends Node


@export var flat_player_roller : Flat_player_stats

@export var upgrades_pool : Array[BasedUpgradeResource] = [] # = [] : create the array now ! even if it's empty



func _filled_pool_if_needed() -> Array:
	var new_card
	while upgrades_pool.size() < 10:
		var target_stats
		if randf() > 0.5 :
			target_stats = "Player_Speed_Mod" 
		else :
			target_stats = "Player_Health_Mod"

		new_card = flat_player_roller._create_random_upgrade(target_stats) # take the new_card

		upgrades_pool.append(new_card) # append the upgrade into the pool.
	

	print("Pool is fully filled.")
	return upgrades_pool
	
	

