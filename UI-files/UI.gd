extends Control

@onready var upgrade_pool: Upgrade_Pool = $Upgrade_Pool

@onready var flat_player_stats : Flat_player_stats

@onready var option_1: Button = $Option1
@onready var option_2: Button = $Option2
@onready var option_3: Button = $Option3
@onready var label: Label = $Option1/Label


func _ready() -> void:
	var pool = upgrade_pool._filled_pool_if_needed()
	display_option(pool)

func display_option(pool :Array [BasedUpgradeResource]) :
	if pool.size() >= 3:
		option_1.get_node("Label").text = pool[0].title
		option_2.get_node("Label").text = pool[1].title
		option_3.get_node("Label").text = pool[2].title
	
