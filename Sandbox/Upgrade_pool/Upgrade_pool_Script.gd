class_name Upgrade_Pool
extends Node


@export var flat_player_roller : Flat_player_stats

@export var upgrades_pool : Array[BasedUpgradeResource] 


var custom_upgrade : Array[BasedUpgradeResource]

func _ready() -> void :
	_filled_pool_if_needed()


func _process(delta: float) -> void:
	for card in upgrades_pool:
		print(card.title, " -> ", card.rolled_effects)


func _filled_pool_if_needed() -> void:
	while upgrades_pool.size() < 10:
		var new_card = flat_player_roller._create_random_upgrade()

		add_upgrades(new_card)


# append the upgrade into the pool.
func add_upgrades (UpgradeStrategy : BasedUpgradeResource) -> void :

	# check the size of the pool.
	if upgrades_pool.size() < 10:
		upgrades_pool.append(UpgradeStrategy)
	else :
		print("Pool is full")