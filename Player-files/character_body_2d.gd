extends CharacterBody2D

@export var current_stats: Player_stats

var current_health : float

func _ready() -> void:
	current_health = current_stats.max_health
	

func _input_handler():
	var input_direction = Input.get_vector("left","right","up","down")
	velocity = input_direction * current_stats.movement_speed

func _physics_process(delta: float) -> void:
		_input_handler()
		move_and_slide()


func _on_health_health_depleted() -> void:
	queue_free()
