extends Resource
class_name Player_stats

@export var max_health: float = 3.0
@export var current_health : int 
@export var based_speed : float
@export var movement_speed : float = 100.0 

# The resource knows HOW to upgrade itself
func apply_speed_upgrade(percentage: float):
	movement_speed *= (1.0 + percentage)
