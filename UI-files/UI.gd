extends Control

@onready var upgrade_Pool : Upgrade_Pool
@onready var flat_player_stats : Flat_player_stats

@onready var option_1: Button = $Option1
@onready var option_2: Button = $Option2
@onready var option_3: Button = $Option3
@onready var label: Label = $Option1/Label

func set_upgrade(upgrade : BasedUpgradeResource) :
	label.text = upgrade.title
	
	
