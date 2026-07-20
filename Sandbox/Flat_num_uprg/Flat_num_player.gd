# ROLLING RANDOM STATS NUMBER (player)

extends Node
class_name Flat_player_stats

var Min_Value : float = 0.2
var Max_Value : float = 0.5

var Raw_roll : float 

func _ready() -> void:
	pass


func _create_random_upgrade(target_stat: String) -> BasedUpgradeResource :
	var new_card = BasedUpgradeResource.new()

	if target_stat == "Player_Speed_Mod":
		new_card.title = "Speed Booster"
		new_card.id = "Player_Upgrade"

	elif target_stat == "Player_Health_Mod" :
		new_card.title = "Health Booster"
		new_card.id = "Player_Upgrade"

	var rolled_stats = Raw_Num_roller(Min_Value , Max_Value)

	new_card.set(target_stat , rolled_stats)

	return new_card

func Raw_Num_roller(Min_Value , Max_Value) -> float :

	# rolled random value
	Raw_roll = randf_range(Min_Value , Max_Value)
	# make it 50/50
	if randf() > 0.5:
		Raw_roll = Raw_roll * -1
	
	return Raw_roll
